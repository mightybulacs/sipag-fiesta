'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

const AWS = require('aws-sdk');
const s3 = new AWS.S3();
const fs = require('fs');
const path = require('path');
const fileUploader = require('./../utils/s3-file-upload');

// /technologies/:id/images or /technologies/:id/images?page=?&size=?
exports.get_image = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM IMAGE where technology_id=?',
        [req.params.id],
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
          'SELECT * FROM IMAGE where technology_id = ? LIMIT ?, ?',
          [req.params.id, page, size],
          send_response
        )
        .end();
    }
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting image', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Images of Technology [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /images/:id
exports.get_oneImage = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT * FROM IMAGE where image_id=?',
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting image', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Image [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /technologies/:id/images
exports.post_image = (req, res, next) => {
  let lastInsertId;

  function start () {
    if (!req.body.image)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: image'});

    mysql.use('slave')
      .query(
        'INSERT INTO IMAGE (technology_id, image) VALUES (?, ?)', 
        [req.params.id, req.body.image],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting image', last_query);
      return next(err);
    }

    lastInsertId = result.insertId;
    uploadImage(req.body.image);
  }

  function uploadImage(filePath){
    var filename = 'img'+lastInsertId+'-'+filePath.split('/').pop();

    fileUploader.uploadFile('technology/'+filename, filePath);

    var params = {Bucket: 'sipag-fiesta', Key: 'technology/'+filename};
    s3.getSignedUrl('getObject', params, function (err, url) {
      mysql.use('slave')
        .query(
          'UPDATE IMAGE SET image=? WHERE image_id=?', 
          [url, lastInsertId],
          send_updated_row
        )
        .end(); 
    });
  }

  function send_updated_row(err, result, args, last_query){
    if(err){
      winston.error('Error in putting image', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Image '+ req.params.name +' not found!'});
    }
    mysql.use('slave')
      .query(
          'SELECT * FROM IMAGE WHERE image_id=?',
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

// /images/:id
exports.put_image = (req, res, next) => {

  function start () {
    if (!req.body.image)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: image'});

      uploadImage(req.body.image);
  }

  function uploadImage(filePath){
    var filename = 'img'+req.params.id+'-'+filePath.split('/').pop();

    fileUploader.uploadFile('technology/'+filename, filePath);

    var params = {Bucket: 'sipag-fiesta', Key: 'technology/'+filename};
    s3.getSignedUrl('getObject', params, function (err, url) {
      mysql.use('slave')
        .query(
          'UPDATE IMAGE SET image=? WHERE image_id=?', 
          [url, req.params.id],
          send_response
        )
        .end(); 
    });
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in updating image', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Image '+ req.params.id +' not found!'});
    }
    mysql.use('slave')
      .query(
          'SELECT * FROM IMAGE WHERE image_id=?',
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

// /images/:id
exports.delete_image = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM IMAGE WHERE image_id=?', 
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in deleting image', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Image '+ req.params.id +' not found!'});
    }
    res.status(200)
        .send({message:'Image [' + req.params.id + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}