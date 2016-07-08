'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

// /technologies/:id/objectives/:page/:size
exports.get_objective = (req, res, next) => {

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
        'SELECT * FROM OBJECTIVE where technology_id=? LIMIT ?, ?',
        [req.params.id, page, size],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting objective', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Objectives of Technology [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /technologies/:id/objectives
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

// /objectives/:id
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
    mysql.use('slave')
      .query(
          'SELECT * FROM OBJECTIVE WHERE objective_id=?',
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

// /objectives/:id
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
          .send({message:'Objective '+ req.params.id +' not found!'});
    }
    res.status(200)
        .send({message:'Objective [' + req.params.id + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}