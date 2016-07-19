'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

// /technologies/:id/comments or /technologies/:id/comments?page=?&size=?
exports.get_comment = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM COMMENT WHERE technology_id = ?',
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
          'SELECT * FROM COMMENT where technology_id = ? LIMIT ?, ?',
          [req.params.id, page, size],
          send_response
        )
        .end();
    }
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting comments', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Comments of Technology [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /technologies/:id/comments
exports.post_comment = (req, res, next) => {

  function start () {
    if (!req.body.comment)
      return res.status(451).send({'error': true, 'message': 'Missing body: comment'});
    if (!req.body.author)
      return res.status(451).send({'error': true, 'message': 'Missing body: author'});

    mysql.use('slave')
      .query(
        'INSERT INTO COMMENT (technology_id, comment, author, datetime_created) VALUES (?, ?, ?, SYSDATE())', 
        [req.params.id, req.body.comment, req.body.author],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting comment', last_query);
      return next(err);
    }

    let newCOMMENT = {
      comment: req.body.comment,
      author: req.body.author,
      datetime_created: req.body.datetime_created
    };
    
    res.status(200)
      .send(newCOMMENT);
  }

  start();
}

// /comments/:id
exports.put_comment = (req, res, next) => {

  function start () {
    if (!req.body.comment)
      return res.status(451).send({'error': true, 'message': 'Missing body: comment'});

    mysql.use('slave')
      .query(
        'UPDATE COMMENT SET comment=? WHERE comment_id=?', 
        [req.body.comment, req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in updating comment', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'COMMENT ['+ req.params.id +'] not found!'});
    }
    mysql.use('slave')
      .query(
          'SELECT * FROM COMMENT WHERE comment_id=?',
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

// /comments/:id
exports.delete_comment = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM COMMENT WHERE comment_id=?', 
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in deleting comment', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'COMMENT ['+ req.params.id +'] not found!'});
    }
    res.status(200)
        .send({message:'COMMENT [' + req.params.id + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}