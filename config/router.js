'use strict';

const config    = require(__dirname + '/../config/config');
const importer  = require('anytv-node-importer');


module.exports = (router) => {

  const __ = importer.dirloadSync(__dirname + '/../controllers');

  router.del = router.delete;

  router.get ('/test',                                          __.test.get_test);

  //BENEFICIARY
  router.get ('/technologies/:id/beneficiaries/:page/:size',    __.beneficiary.get_beneficiary);
  router.post('/technologies/:id/beneficiaries',                __.beneficiary.post_beneficiary);
  router.put ('/beneficiaries/:id',                             __.beneficiary.put_beneficiary);
  router.del ('/beneficiaries/:id',                             __.beneficiary.delete_beneficiary);

  //BENEFIT
  router.get ('/technologies/:id/benefits/:page/:size',         __.benefit.get_benefit);
  router.post('/technologies/:id/benefits',                     __.benefit.post_benefit);
  router.put ('/benefits/:id',                                  __.benefit.put_benefit);
  router.del ('/benefits/:id',                                  __.benefit.delete_benefit);

  //CATEGORY
  router.get ('/categories/:page/:size',                        __.category.get_category);
  router.post('/categories',                                    __.category.post_category);
  router.put ('/categories/:name',                              __.category.put_category);
  router.del ('/categories/:name',                              __.category.delete_category);

  //COMMODITY
  router.get ('/commodities/:page/:size',                       __.commodity.get_commodity);
  router.get ('/:category/commodities/:page/:size',             __.commodity.get_commodity_category);
  router.post('/commodities',                                   __.commodity.post_commodity);
  router.put ('/commodities/:id',                               __.commodity.put_commodity);
  router.del ('/commodities/:id',                               __.commodity.delete_commodity);

  //LOCATION
  router.get ('/technologies/:id/locations/:page/:size',        __.location.get_location);
  router.post('/technologies/:id/locations',                    __.location.post_location);
  router.put ('/locations/:id',                                 __.location.put_location);
  router.del ('/locations/:id',                                 __.location.delete_location);

  //OBJECTIVE
  router.get ('/technologies/:id/objectives/:page/:size',       __.objective.get_objective);
  router.post('/technologies/:id/objectives',                   __.objective.post_objective);
  router.put ('/objectives/:id',                                __.objective.put_objective);
  router.del ('/objectives/:id',                                __.objective.delete_objective);

  //PARTNER
  router.get ('/technologies/:id/partners/:page/:size',         __.partner.get_partner);
  router.post('/technologies/:id/partners',                     __.partner.post_partner);
  router.put ('/partners/:id',                                  __.partner.put_partner);
  router.del ('/partners/:id',                                  __.partner.delete_partner);

  //TECHNOLOGY
  router.get ('/technologies/:id',                              __.technology.get_oneTechnology);
  router.get ('/technologies/:page/:size',                      __.technology.get_technology);
  router.get ('/category/:category/technologies/:page/:size',            __.technology.get_category_technology);
  router.get ('/commodity/:commodity/technologies/:page/:size',           __.technology.get_commodity_technology);
  router.post('/technologies',                                  __.technology.post_technology);
  router.put ('/technologies/:id',                              __.technology.put_technology);
  router.del ('/technologies/:id',                              __.technology.delete_technology);     

  router.all('*', (req, res) => {
    res.status(404)
      .send({message: 'Nothing to do here.'});
  });

  return router;
};