'use strict';

const config    = require(__dirname + '/../config/config');
const importer  = require('anytv-node-importer');


module.exports = (router) => {

  const __ = importer.dirloadSync(__dirname + '/../controllers');

  router.del = router.delete;

  router.get ('/test',          						__.test.get_test);
  router.get ('/commodities',    						__.commodity.get_test);

  //CATEGORY
  router.get ('/categories',    						__.category.get_category);
  router.post ('/categories', 							__.category.post_category);
  router.put ('/categories/:name', 						__.category.put_category);
  router.delete ('/categories/:name', 					__.category.delete_category);

  //BENEFIT
  router.get ('/technologies/:id/benefits',   			__.benefit.get_benefit);
  router.post ('/technologies/:id/benefits', 			__.benefit.post_benefit);
  router.put ('/benefits/:id', 							__.benefit.put_benefit);
  router.delete ('/benefits/:id', 						__.benefit.delete_benefit);

  //OBJECTIVE
  router.get ('/technologies/:id/objectives',   		__.objective.get_objective);
  router.post ('/technologies/:id/objectives', 			__.objective.post_objective);
  router.put ('/objectives/:id', 						__.objective.put_objective);
  router.delete ('/objectives/:id', 					__.objective.delete_objective);

  router.all('*', (req, res) => {
    res.status(404)
      .send({message: 'Nothing to do here.'});
  });

  return router;
};