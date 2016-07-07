'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');


exports.get_category = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT name FROM CATEGORY',
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting category', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}

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
      thumbnail: req.body.name
    };
    //res.items(result)
    //  .send();
    res.status(200).send(newCategory);
  }

  start();
}

exports.put_category = (req, res, next) => {

  function start () {
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
          .send({message:'Category '+req.params.name +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};

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
          .send({message:'Category '+req.params.name +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};
