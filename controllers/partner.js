'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

// /technologies/:id/partners/:page/:size
exports.get_partner = (req, res, next) => {

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
        'SELECT * FROM PARTNER WHERE technology_id = ? LIMIT ?, ?',
        [req.params.id, page, size],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting partner', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'partners of Technology [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /technologies/:id/partners
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

    res.status(200)
      .send(newPartner);
  }

  start();
}

// /partners/:id
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
          .send({message:'Partner '+ req.params.id +' not found!'});
    }
    mysql.use('slave')
      .query(
          'SELECT * FROM BENEFICIARY WHERE beneficiary_id=?',
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

// /partners/:id
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
          .send({message:'Partner '+ req.params.name +' not found!'});
    }
    res.status(200)
        .send({message:'Partner [' + req.params.id + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}