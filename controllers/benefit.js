'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

// /technologies/:id/benefits/:page/:size
exports.get_benefit = (req, res, next) => {

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
        'SELECT * FROM BENEFIT where technology_id=? LIMIT ?, ?',
        [req.params.id, page, size],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting benefit', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Benefits of Technology [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /technologies/:id/benefits
exports.post_benefit = (req, res, next) => {

  function start () {
    if (!req.body.benefit)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: benefit'});

    mysql.use('slave')
      .query(
        'INSERT INTO BENEFIT (technology_id, benefit) VALUES (?, ?)', 
        [req.params.id, req.body.benefit],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting benefit', last_query);
      return next(err);
    }

    let newBenefit = {
      benefit: req.body.benefit
    };
    
    res.status(200)
      .send(newBenefit);
  }

  start();
}

// /benefits/:id
exports.put_benefit = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'UPDATE BENEFIT SET benefit=? WHERE benefit_id=?', 
        [req.body.benefit, req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in updating benefit', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Benefit ['+ req.params.id +'] not found!'});
    }
    mysql.use('slave')
      .query(
          'SELECT * FROM BENEFIT WHERE benefit_id=?',
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

// /benefits/:id
exports.delete_benefit = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM BENEFIT WHERE benefit_id=?', 
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in deleting benefit', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Benefit ['+ req.params.id +'] not found!'});
    }
    res.status(200)
        .send({message:'Benefit [' + req.params.id + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}