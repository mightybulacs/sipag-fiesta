'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

// /technologies/:id/beneficiaries or /technologies/:id/beneficiaries?page=?&size=?
exports.get_beneficiary = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM BENEFICIARY WHERE technology_id = ?',
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
          'SELECT * FROM BENEFICIARY WHERE technology_id = ? LIMIT ?, ?',
          [req.params.id, page, size],
          send_response
        )
        .end();
    }
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting beneficiary', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Beneficiaries of Technology [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /technologies/:id/beneficiaries
exports.post_beneficiary = (req, res, next) => {

  function start () {
    if (!req.body.beneficiary)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: beneficiary'});

    mysql.use('slave')
      .query(
        'INSERT INTO BENEFICIARY (technology_id, beneficiary) VALUES (?,?)', 
        [req.params.id,req.body.beneficiary],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting beneficiary', last_query);
      return next(err);
    }

    let newBeneficiary = {
      beneficiary: req.body.beneficiary
    };  

    res.status(200)
      .send(newBeneficiary);
  }

  start();
}

// /beneficiaries/:id
exports.put_beneficiary = (req, res, next) => {

  function start () {
    if (!req.body.beneficiary)
      return res.status(451).send({'error': true, 'message': 'Missing parameter: beneficiary'});

    mysql.use('slave')
      .query(
        'UPDATE BENEFICIARY SET beneficiary=? WHERE beneficiary_id=?', 
        [req.body.beneficiary, req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in updating beneficiary', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Beneficiary ['+ req.params.id +'] not found!'});
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

// /beneficiaries/:id
exports.delete_beneficiary = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM BENEFICIARY WHERE beneficiary_id=?', 
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in deleting beneficiary', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'Beneficiary ['+ req.params.id +'] not found!'});
    }
    res.status(200)
        .send({message:'Beneficiary [' + req.params.id + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}