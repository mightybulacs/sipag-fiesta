'use strict';

const config    = require(__dirname + '/../config/config');
const importer  = require('anytv-node-importer');


module.exports = (router) => {

  const __ = importer.dirloadSync(__dirname + '/../controllers');

  router.del = router.delete;

  router.get ('/test',          						__.test.get_test);

  //CATEGORY
  router.get ('/categories',    						__.category.get_category);
  router.post ('/categories', 							__.category.post_category);
  router.put ('/categories/:name', 						__.category.put_category);
  router.delete ('/categories/:name', 					__.category.delete_category);

  //COMMODITY
  router.get('/commodities', 							__.commodity.get_commodity);
  router.get('/:category/commodities',				 	__.commodity.get_commodity_category);
  router.post('/commodities', 							__.commodity.post_commodity);
  router.put('/commodities/:id', 						__.commodity.put_commodity);
  router.delete('/commodities/:id', 					__.commodity.delete_commodity);

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

  //BENEFICIARY
  router.get ('/technologies/:id/beneficiaries',    	__.beneficiary.get_beneficiary);
  router.post ('/technologies/:id/beneficiaries',   	__.beneficiary.post_beneficiary);
  router.put ('/beneficiaries/:id',  					__.beneficiary.put_beneficiary);
  router.delete ('/beneficiaries/:id',   				__.beneficiary.delete_beneficiary);

  //PARTNER
  router.get ('/technologies/:id/partners',    			__.partner.get_partner);
  router.post ('/technologies/:id/partners',   			__.partner.post_partner);
  router.put ('/partners/:id',  						__.partner.put_partner);
  router.delete ('/partners/:id',   					__.partner.delete_partner);


  router.all('*', (req, res) => {
    res.status(404)
      .send({message: 'Nothing to do here.'});
  });

  return router;
};
