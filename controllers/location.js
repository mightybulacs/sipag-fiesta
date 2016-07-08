'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');


exports.get_location = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT * FROM LOCATION where technology_id=?',
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting location', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}
/*
exports.get_oneLocation = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT location FROM LOCATION where location_id=?',
        [req.params.location_id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting location', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}
*/
exports.post_location = (req, res, next) => {

  function start () {
    if (!req.body.location)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: location'});

    mysql.use('slave')
      .query(
        'INSERT INTO location (technology_id, location) VALUES (?, ?)', 
        [req.params.id, req.body.location],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting location', last_query);
      return next(err);
    }

    let newlocation = {
      location: req.body.location
    };
    //res.items(result)
    //  .send();
    res.status(200).send(newlocation);
  }

  start();
}

exports.put_location = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'UPDATE location SET location=? WHERE location_id=?', 
        [req.body.location, req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in updating location', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'location '+ req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};

exports.delete_location = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM location WHERE location_id=?', 
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in deleting location', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'location '+ req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};
