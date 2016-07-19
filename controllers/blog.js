'use strict';

const mysql   = require('anytv-node-mysql');
const winston = require('winston');

// /commodities/:id/blogs or /commodities/:id/blogs?page=?&size=?
exports.get_blog = (req, res, next) => {

  function start () {
    let page = filterInt(req.query.page);
    let size = filterInt(req.query.size);
    if(!/\?.+/.test(req.url)) {     //if there is no query
      mysql.use('slave')
      .query(
        'SELECT * FROM BLOG WHERE commodity_id = ?',
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
          'SELECT * FROM BLOG where commodity_id = ? LIMIT ?, ?',
          [req.params.id, page, size],
          send_response
        )
        .end();
    }
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting blogs', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Blogs of Commodity [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /blogs/:id
exports.get_oneBlog = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'SELECT * FROM BLOG where blog_id=?',
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in getting blog', last_query);
      return next(err);
    }
    else if(result.length === 0){
      res.status(404)
          .send({message:'Blog [' + req.params.id +'] not found!'});
    }

    res.items(result)
      .send();
  }

  start();
}

// /commodities/:id/blogs
exports.post_blog = (req, res, next) => {

  function start () {
    if (!req.body.title)
      return res.status(451).send({'error': true, 'message': 'Missing body: title'});
    if (!req.body.blog)
      return res.status(451).send({'error': true, 'message': 'Missing body: blog'});
    if (!req.body.author)
      return res.status(451).send({'error': true, 'message': 'Missing body: author'});

    mysql.use('slave')
      .query(
        'INSERT INTO BLOG (commodity_id, title, blog, author, datetime_created) VALUES (?, ?, ?, ?, SYSDATE())', 
        [req.params.id, req.body.title, req.body.blog, req.body.author],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in posting blog', last_query);
      return next(err);
    }

    let newBlog = {
      title: req.body.title,
      blog: req.body.blog,
      author: req.body.author,
      datetime_created: req.body.datetime_created
    };
    
    res.status(200)
      .send(newBlog);
  }

  start();
}

// /blogs/:id
exports.put_blog = (req, res, next) => {

  function start () {
    if (!req.body.title)
      return res.status(451).send({'error': true, 'message': 'Missing body: title'});
    if (!req.body.blog)
      return res.status(451).send({'error': true, 'message': 'Missing body: blog'});

    mysql.use('slave')
      .query(
        'UPDATE BLOG SET title=? blog=? WHERE blog_id=?', 
        [req.body.title, req.body.blog, req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in updating blog', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'BLOG ['+ req.params.id +'] not found!'});
    }
    mysql.use('slave')
      .query(
          'SELECT * FROM BLOG WHERE blog_id=?',
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

// /blogs/:id
exports.delete_blog = (req, res, next) => {

  function start () {
    mysql.use('slave')
      .query(
        'DELETE FROM BLOG WHERE blog_id=?', 
        [req.params.id],
        send_response
      )
      .end();
  }

  function send_response (err, result, args, last_query) {
    if (err) {
      winston.error('Error in deleting blog', last_query);
      return next(err);
    }
    else if(result.affectedRows === 0){
      res.status(404)
          .send({message:'BLOG ['+ req.params.id +'] not found!'});
    }
    res.status(200)
        .send({message:'BLOG [' + req.params.id + '] was deleted.'});
  }

  start();
};

function filterInt (value) {
  if(/^(\-|\+)?([0-9]+|Infinity)$/.test(value))
    return Number(value);
  return NaN;
}