'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

// /categories or /categories?page=?&size=?
exports.get_category = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM CATEGORY',
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
          'SELECT * FROM CATEGORY LIMIT ?, ?',
          [page, size],
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
          .send({message:'Categories not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /categories
exports.post_category = (req, res, next) => {

  function start () {
    if (!req.body.name)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: name'});

    mysql.use('slave')
      .query(
        'INSERT INTO CATEGORY (name, thumbnail) VALUES (?,?)', 
        [req.body.name, req.body.thumbnail],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting category', last_query);
      return next(err);
    }

    let newCategory = {
      name: req.body.name,
      thumbnail: req.body.thumbnail
    };
    
    res.status(200)
      .send(newCategory);
  }

  start();
}

// /categories/:name
exports.put_category = (req, res, next) => {

  function start () {
    if (!req.body.name)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: name'});
    
    mysql.use('slave')
      .query(
        'UPDATE CATEGORY SET name=?, thumbnail=? WHERE name=?', 
        [req.body.name, req.body.thumbnail, req.params.name],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting category', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Category '+ req.params.name +' not found!'});
    }
    mysql.use('slave')
      .query(
          'SELECT * FROM CATEGORY WHERE name=?',
          [req.params.name],
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

// /categories/:name
exports.delete_category = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM CATEGORY WHERE name=?', 
        [req.params.name],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting category', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Category ['+req.params.name +'] not found!'});
    }
    res.status(200)
      .send({message:'Category [' + req.params.name + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}