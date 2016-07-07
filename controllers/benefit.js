'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');


exports.get_benefit = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT benefit FROM BENEFIT where technology_id=?',
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting benefit', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}
/*
exports.get_oneBenefit = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT benefit FROM BENEFIT where benefit_id=?',
        [req.params.benefit_id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting benefit', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}
*/
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
    //res.items(result)
    //  .send();
    res.status(200).send(newBenefit);
  }

  start();
}

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
          .send({message:'Benefit '+ req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};

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
          .send({message:'Benefit '+ req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};
