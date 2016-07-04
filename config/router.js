'use strict';

const config    = require(__dirname + '/../config/config');
const importer  = require('anytv-node-importer');


module.exports = (router) => {

  const __ = importer.dirloadSync(__dirname + '/../controllers');

  router.del = router.delete;

  router.get ('/test',          __.test.get_test);
  router.get ('/comodities',    __.commodity.get_test);

  router.all('*', (req, res) => {
    res.status(404)
      .send({message: 'Nothing to do here.'});
  });

  return router;
};