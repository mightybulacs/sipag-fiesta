'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');


exports.get_beneficiary = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT beneficiary FROM BENEFICIARY WHERE technology_id = ?',
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting beneficiary', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
}

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
    //res.items(result)
    //  .send();
    res.status(200).send(newBeneficiary);
  }

  start();
}

exports.put_beneficiary = (req, res, next) => {

  function start () {
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
          .send({message:'Beneficiary '+req.params.id +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};

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
          .send({message:'Beneficiary '+req.params.name +' not found!'});
    }
    res.status(200).send(result);
  }

  start();
};

