'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');


exports.get_test = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT 1',
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting test', last_query);
      return next(err);
    }

    res.items(result)
      .send();
  }

  start();
};