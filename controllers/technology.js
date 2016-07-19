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
    else if(result.length === 0){
      res.status(404)
          .send({message:'Technology [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /technologies or /technologies?page=?&size=?
exports.get_technology = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM TECHNOLOGY',
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
          'SELECT * FROM TECHNOLOGY LIMIT ?, ?',
          [page, size],
          send_response
        )
        .end();
    }
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting technologies', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Technologies not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /category/:category/technologies or /category/:category/technologies?page=?&size=?
exports.get_technologyByCategory = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM TECHNOLOGY t, COMMODITY c WHERE c.category=? and t.commodity_id = c.commodity_id',
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
          'SELECT * FROM TECHNOLOGY t, COMMODITY c WHERE c.category=? and t.commodity_id = c.commodity_id LIMIT ?, ?',
          [req.params.category, page, size],
          send_response
        )
        .end();
    }
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting technology', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Technologies of Category [' + req.params.category +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /commodity/:commodity/technologies or /commodity/:commodity/technologies?page=?&size=?
exports.get_technologyByCommodity = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM TECHNOLOGY t, COMMODITY c WHERE c.name=? and t.commodity_id = c.commodity_id',
        [req.params.commodity],
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
          'SELECT * FROM TECHNOLOGY t, COMMODITY c WHERE c.name=? and t.commodity_id = c.commodity_id LIMIT ?, ?',
        [req.params.commodity, page, size],
          send_response
        )
        .end();
    }
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting technology', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Technologies of Commodity [' + req.params.commodity +'] not found!'});
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
    
    res.status(200)
      .send(newTechnology);
  }

  start();
}

// /technologies/:id
exports.put_technology = (req, res, next) => {

  function start () {
    if (!req.body.title)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: title'});
    if (!req.body.description)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: description'});
    if (!req.body.objective_intro)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: objective intro'});
    
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
    mysql.use('slave')
      .query(
          'SELECT * FROM TECHNOLOGY WHERE technology_id=?',
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
    res.status(200)
        .send({message:'Technology [' + req.params.id + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}