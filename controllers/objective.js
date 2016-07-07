'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');


exports.get_objective = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT * FROM OBJECTIVE where technology_id=?',
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting objective', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}
/*
exports.get_oneObjective = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT objective FROM objective where objective_id=?',
        [req.params.objective_id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting objective', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}
*/
exports.post_objective = (req, res, next) => {

  function start () {
    if (!req.body.objective)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: objective'});

    mysql.use('slave')
      .query(
        'INSERT INTO OBJECTIVE (technology_id, objective) VALUES (?, ?)', 
        [req.params.id, req.body.objective],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting objective', last_query);
      return next(err);
    }

    let newObjective = {
      objective: req.body.objective
    };
    //res.items(result)
    //  .send();
    res.status(200).send(newObjective);
  }

  start();
}

exports.put_objective = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'UPDATE OBJECTIVE SET objective=? WHERE objective_id=?', 
        [req.body.objective, req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in updating objective', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'objective '+ req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};

exports.delete_objective = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM OBJECTIVE WHERE objective_id=?', 
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in deleting objective', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'objective '+ req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};
