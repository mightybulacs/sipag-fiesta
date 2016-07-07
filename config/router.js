'use strict';

const config    = require(__dirname + '/../config/config');
const importer  = require('anytv-node-importer');


module.exports = (router) => {

  const __ = importer.dirloadSync(__dirname + '/../controllers');

  router.del = router.delete;

  router.get ('/test',          __.test.get_test);
  router.get ('/commodities',    __.commodity.get_test);

  //CATEGORY
  router.get ('/categories',    __.category.get_category);
  router.post ('/categories', 	__.category.post_category);
  router.put ('/categories/:name', 	__.category.put_category);
  router.delete ('/categories/:name', 	__.category.delete_category);

  router.all('*', (req, res) => {
    res.status(404)
      .send({message: 'Nothing to do here.'});
  });

  return router;
};