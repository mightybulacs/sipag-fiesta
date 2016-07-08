'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

// /commodities/:page/:size
exports.get_commodity = (req, res, next) => {

  function start () {
    let page = filterInt(req.params.page);
    let size = filterInt(req.params.size);
    if(!Number.isInteger(page) || page<=0)
      return res.status(451).send({'error': true, 'message': 'Invalid parameter: page'});
    if(!Number.isInteger(size) || size<=0)
      return res.status(451).send({'error': true, 'message': 'Invalid parameter: size'});
    page = (page - 1) * size;

    mysql.use('slave')
      .query(
        'SELECT * FROM COMMODITY LIMIT ?, ?',
        [page, size],
        send_response
      )
      .end();
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

// /:category/commodities/:page/:size
exports.get_commodity_category = (req, res, next) => {

  function start () {
    let page = filterInt(req.params.page);
    let size = filterInt(req.params.size);
    if(!Number.isInteger(page) || page<=0)
      return res.status(451).send({'error': true, 'message': 'Invalid parameter: page'});
    if(!Number.isInteger(size) || size<=0)
      return res.status(451).send({'error': true, 'message': 'Invalid parameter: size'});
    page = (page - 1) * size;
    mysql.use('slave')
      .query(
        'SELECT * FROM COMMODITY WHERE category=? LIMIT ?, ?',
        [req.params.category, page, size],
        send_response
      )
      .end();
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

  function start () {
    if (!req.body.name)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: name'});

    mysql.use('slave')
      .query(
        'INSERT INTO COMMODITY (name, category) VALUES (?,?)', 
        [req.body.name, req.body.category],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting commodity', last_query);
      return next(err);
    }

    let newCommodity = {
      name: req.body.name,
      category: req.body.category
    };
    res.status(200)
      .send(newCommodity);
  }

  start();
}

// /commodities/:id
exports.put_commodity = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'UPDATE COMMODITY SET name=?, category=? WHERE commodity_id=?', 
        [req.body.name, req.body.category, req.params.id],
        send_response
      )
      .end();
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