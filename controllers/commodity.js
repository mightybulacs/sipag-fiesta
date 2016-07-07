'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');


exports.get_commodity = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT * FROM COMMODITY',
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

exports.get_commodity_category = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT * FROM COMMODITY WHERE category=?',
        [req.params.category],
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
      winston.error('Error in posting category', last_query);
      return next(err);
    }

    let newCategory = {
      name: req.body.name,
      category: req.body.name
    };
    //res.items(result)
    //  .send();
    res.status(200).send(newCategory);
  }

  start();
}

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
      winston.error('Error in putting category', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Commodity '+req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};

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
      winston.error('Error in deleting category', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Commodity '+req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};
