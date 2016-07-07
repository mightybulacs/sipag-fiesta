'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');


exports.get_partner = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT partner FROM PARTNER WHERE technology_id = ?',
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting partner', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}

exports.post_partner = (req, res, next) => {

  function start () {
    if (!req.body.partner)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: partner'});

    mysql.use('slave')
      .query(
        'INSERT INTO PARTNER (technology_id, partner) VALUES (?,?)', 
        [req.params.id,req.body.partner],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting partner', last_query);
      return next(err);
    }

    let newPartner = {
      partner: req.body.partner
    };
    //res.items(result)
    //  .send();
    res.status(200).send(newPartner);
  }

  start();
}

exports.put_partner = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'UPDATE PARTNER SET partner=? WHERE partner_id=?', 
        [req.body.partner, req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in updating partner', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Partner '+req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};

exports.delete_partner = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM PARTNER WHERE partner_id=?', 
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in deleting partner', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Partner '+req.params.name +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};

