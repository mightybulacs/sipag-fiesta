'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

// /technologies/:id/locations or /technologies/:id/locations?page=?&size=?
exports.get_location = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM LOCATION where technology_id=?',
        [req.params.id],
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
          'SELECT * FROM LOCATION where technology_id = ? LIMIT ?, ?',
          [req.params.id, page, size],
          send_response
        )
        .end();
    }
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting location', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Locations of Technology [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /technologies/:id/locations
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

    let newLocation = {
      location: req.body.location
    };

    res.status(200)
      .send(newLocation);
  }

  start();
}

// /locations/:id
exports.put_location = (req, res, next) => {

  function start () {
    if (!req.body.location)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: location'});

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
          .send({message:'Location '+ req.params.id +' not found!'});
    }
    mysql.use('slave')
      .query(
          'SELECT * FROM LOCATION WHERE location_id=?',
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

// /locations/:id
exports.delete_location = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM LOCATION WHERE location_id=?', 
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
          .send({message:'Location '+ req.params.id +' not found!'});
    }
    res.status(200)
        .send({message:'Location [' + req.params.id + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}