'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

const AWS = require('aws-sdk');
const s3 = new AWS.S3();
const fs = require('fs');
const path = require('path');
const fileUploader = require('./../utils/s3-file-upload');

// /commodities or /commodities?page=?&size=?
exports.get_commodity = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM COMMODITY',
        send_response
      )
      .end();
    }
    else {                          //if there are queries
      if(!Number.isInteger(page) || page<=0)
        return res.status(451).send({'error': true, 'message': 'Invalid query: page'});
      if(!Number.isInteger(size) || size<=0)
        return res.status(451).send({'error': true, 'message': 'Invalid query: size'});
      page = (page - 1) * size;

      mysql.use('slave')
        .query(
          'SELECT * FROM COMMODITY LIMIT ?, ?',
          [page, size],
          send_response
        )
        .end();
    }
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting commodity', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Commodities not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /:category/commodities or /:category/commodities?page=?&size=?
exports.get_commodity_category = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM COMMODITY WHERE category=?',
        [req.params.category],
        send_response
      )
      .end();
    }
    else {                          //if there are queries
      if(!Number.isInteger(page) || page<=0)
        return res.status(451).send({'error': true, 'message': 'Invalid query: page'});
      if(!Number.isInteger(size) || size<=0)
        return res.status(451).send({'error': true, 'message': 'Invalid query: size'});
      page = (page - 1) * size;

      mysql.use('slave')
        .query(
          'SELECT * FROM COMMODITY WHERE category=? LIMIT ?, ?',
          [req.params.category, page, size],
          send_response
        )
        .end();
    }
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting category', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Commodities of Category [' + req.params.category +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /commodities
exports.post_commodity = (req, res, next) => {
  let lastInsertId;

  function start () {
    if (!req.body.name)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: name'});
    if (!req.body.category)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: category'});

    mysql.use('slave')
      .query(
        'INSERT INTO COMMODITY (name, category, thumbnail) VALUES (?,?,?)', 
        [req.body.name, req.body.category, req.body.thumbnail],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting commodity', last_query);
      return next(err);
    }
    
    lastInsertId = result.insertId;
    if(!req.body.thumbnail) { //no thumbnail to upload
      mysql.use('slave')
        .query(
            'SELECT * FROM COMMODITY WHERE commodity_id=?',
            [lastInsertId],
            send_new_row
          )
       .end();
    }
    else 
      uploadImage(req.body.thumbnail); //upload image
  }

  function uploadImage(filePath){
    var filename = 'com'+lastInsertId+'-'+filePath.split('/').pop();
    var url='https://sipag-fiesta.s3.amazonaws.com/commodity/' + filename;
    fileUploader.uploadFile('commodity/'+filename, filePath);

    mysql.use('slave')
      .query(
        'UPDATE COMMODITY SET thumbnail=? WHERE commodity_id=?', 
        [url, lastInsertId],
        send_updated_row
      )
      .end();
    /*var params = {Bucket: 'sipag-fiesta', Key: 'commodity/'+filename};
    s3.getSignedUrl('getObject', params, function (err, url) {
      if(err) {
        winston.error('Error: ' + err);
        return next(err);
      }
      mysql.use('slave')
        .query(
          'UPDATE COMMODITY SET thumbnail=? WHERE commodity_id=?', 
          [url, lastInsertId],
          send_updated_row
        )
        .end(); 
    });*/
  }

  function send_updated_row(err, result, args, last_query){
    if(err) {
      winston.error('Error in putting commodity', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0) {
      res.status(404)
          .send({message:'Commodity '+ req.params.name +' not found!'});
    }
    mysql.use('slave')
      .query(
          'SELECT * FROM COMMODITY WHERE commodity_id=?',
          [lastInsertId],
          send_new_row
        )
      .end();
  }

  function send_new_row(err, rows){
    res.status(200)
        .send(rows);
  }

  start();
}

// /commodities/:id
exports.put_commodity = (req, res, next) => {

  function start () {
    if (!req.body.name)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: name'});
    if (!req.body.category)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: category'});

    if(!req.body.thumbnail) { //no thumbnail to upload
      mysql.use('slave')
        .query(
          'UPDATE COMMODITY SET name=?, category=? WHERE commodity_id=?', 
          [req.body.name, req.body.category, req.params.id],
          send_response
        )
        .end();
    }
    else 
      uploadImage(req.body.thumbnail);
  }

  function uploadImage(filePath){
    var filename = 'com'+req.params.id+'-'+filePath.split('/').pop();
    var url='https://sipag-fiesta.s3.amazonaws.com/commodity/' + filename;
    fileUploader.uploadFile('commodity/'+filename, filePath);

    mysql.use('slave')
      .query(
        'UPDATE COMMODITY SET thumbnail=?, name=?, category=? WHERE commodity_id=?', 
        [url, req.body.name, req.body.category, req.params.id],
        send_response
      )
      .end(); 
    /*var params = {Bucket: 'sipag-fiesta', Key: 'commodity/'+filename};
    s3.getSignedUrl('getObject', params, function (err, url) {
      if(err) {
        winston.error('Error: ' + err);
        return next(err);
      }
      mysql.use('slave')
        .query(
          'UPDATE COMMODITY SET thumbnail=?, name=?, category=? WHERE commodity_id=?', 
          [url, req.body.name, req.body.category, req.params.id],
          send_response
        )
        .end(); 
    });*/
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in updating commodity', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Commodity '+req.params.id +' not found!'});
    }
    mysql.use('slave')
      .query(
          'SELECT * FROM COMMODITY WHERE commodity_id=?',
          [req.params.id],
          send_edited_row
        )
      .end();
  }

  function send_edited_row(err, rows){
    res.status(200)
        .send(rows);
  }

  start();
};

// /commodities/:id
exports.delete_commodity = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM COMMODITY WHERE commodity_id=?', 
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in deleting commodity', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Commodity '+req.params.id +' not found!'});
    }
    res.status(200)
        .send({message:'Commodity [' + req.params.id + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}