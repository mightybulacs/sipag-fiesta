'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

// /technologies/:id
exports.get_oneTechnology = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT * FROM TECHNOLOGY where technology_id=?',
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting technology', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}

// /:category/technologies
exports.get_category_technology = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT * FROM TECHNOLOGY t, COMMODITY c WHERE c.category=? and t.commodity_id = c.commodity_id',
        [req.params.category],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting technology', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}

// /:commodity/technologies
exports.get_commodity_technology = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT * FROM TECHNOLOGY t, COMMODITY c WHERE c.name=? and t.commodity_id = c.commodity_id',
        [req.params.commodity],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    console.log("err: " + err);
    console.log("result: " + result);
    console.log("args: " + args);
    console.log("last_query: " + last_query);
    if (err) {
      winston.error('Error in getting technology', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}

// /technologies
exports.get_technology = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT * FROM TECHNOLOGY',
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting technologies', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}

// /techonologies
exports.post_technology = (req, res, next) => {

  function start () {
    if (!req.body.title)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: title'});
    if (!req.body.description)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: description'});
    if (!req.body.objective_intro)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: objective intro'});

    mysql.use('slave')
      .query(
        'INSERT INTO TECHNOLOGY (title, description, objective_intro) VALUES (?, ?, ?)', 
        [req.body.title, req.body.description, req.body.objective_intro],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting technology', last_query);
      return next(err);
    }

    let newTechnology = {
      title: req.body.title,
      description: req.body.description,
      objective_intro: req.body.objective_intro
    };
    //res.items(result)
    //  .send();
    res.status(200).send(newTechnology);
  }

  start();
}

// /technologies/:id
exports.put_technology = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'UPDATE TECHNOLOGY SET title=?, description=?, objective_intro=? WHERE technology_id=?', 
        [req.body.title, req.body.description, req.body.objective_intro, req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in updating technology', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Technology '+ req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};

// /technologies/:id
exports.delete_technology = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM TECHNOLOGY WHERE technology_id=?', 
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in deleting technology', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Technology '+ req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};
