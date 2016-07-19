'use strict';

const config    = require(__dirname + '/../config/config');
const importer  = require('anytv-node-importer');


module.exports = (router) => {

  const __ = importer.dirloadSync(__dirname + '/../controllers');

  router.del = router.delete;

  router.get ('/test',                                          __.test.get_test);

  //BENEFICIARY
  router.get ('/technologies/:id/beneficiaries',                __.beneficiary.get_beneficiary);
  router.post('/technologies/:id/beneficiaries',                __.beneficiary.post_beneficiary);
  router.put ('/beneficiaries/:id',                             __.beneficiary.put_beneficiary);
  router.del ('/beneficiaries/:id',                             __.beneficiary.delete_beneficiary);

  //BENEFIT
  router.get ('/technologies/:id/benefits',                     __.benefit.get_benefit);
  router.post('/technologies/:id/benefits',                     __.benefit.post_benefit);
  router.put ('/benefits/:id',                                  __.benefit.put_benefit);
  router.del ('/benefits/:id',                                  __.benefit.delete_benefit);

  //BLOG
  router.get ('/commodities/:id/blogs',                         __.blog.get_blog);
  router.get ('/blogs/:id',                                     __.blog.get_oneBlog);
  router.post('/commodities/:id/blogs',                         __.blog.post_blog);
  router.put ('/blogs/:id',                                     __.blog.put_blog);
  router.del ('/blogs/:id',                                     __.blog.delete_blog);

  //CATEGORY
  router.get ('/categories',                                    __.category.get_category);
  router.post('/categories',                                    __.category.post_category);
  router.put ('/categories/:name',                              __.category.put_category);
  router.del ('/categories/:name',                              __.category.delete_category);

  //COMMENT
  router.get ('/technologies/:id/comments',                     __.comment.get_comment);
  router.post('/technologies/:id/comments',                     __.comment.post_comment);
  router.put ('/comments/:id',                                  __.comment.put_comment);
  router.del ('/comments/:id',                                  __.comment.delete_comment);

  //COMMODITY
  router.get ('/commodities',                                   __.commodity.get_commodity);
  router.get ('/:category/commodities',                         __.commodity.get_commodityByCategory);
  router.post('/commodities',                                   __.commodity.post_commodity);
  router.put ('/commodities/:id',                               __.commodity.put_commodity);
  router.del ('/commodities/:id',                               __.commodity.delete_commodity);

  //IMAGE
  router.get ('/technologies/:id/images',                       __.image.get_image);
  router.get ('/images/:id',                                    __.image.get_oneImage);
  router.post('/technologies/:id/images',                       __.image.post_image);
  router.put ('/images/:id',                                    __.image.put_image);
  router.del ('/images/:id',                                    __.image.delete_image);

  //LOCATION
  router.get ('/technologies/:id/locations',                    __.location.get_location);
  router.post('/technologies/:id/locations',                    __.location.post_location);
  router.put ('/locations/:id',                                 __.location.put_location);
  router.del ('/locations/:id',                                 __.location.delete_location);

  //OBJECTIVE
  router.get ('/technologies/:id/objectives',                   __.objective.get_objective);
  router.post('/technologies/:id/objectives',                   __.objective.post_objective);
  router.put ('/objectives/:id',                                __.objective.put_objective);
  router.del ('/objectives/:id',                                __.objective.delete_objective);

  //PARTNER
  router.get ('/technologies/:id/partners',                     __.partner.get_partner);
  router.post('/technologies/:id/partners',                     __.partner.post_partner);
  router.put ('/partners/:id',                                  __.partner.put_partner);
  router.del ('/partners/:id',                                  __.partner.delete_partner);

  //TECHNOLOGY
  router.get ('/technologies/:id',                              __.technology.get_oneTechnology);
  router.get ('/technologies/',                                 __.technology.get_technology);
  router.get ('/category/:category/technologies',               __.technology.get_technologyByCategory);
  router.get ('/commodity/:commodity/technologies',             __.technology.get_technologyByCommodity);
  router.post('/technologies',                                  __.technology.post_technology);
  router.put ('/technologies/:id',                              __.technology.put_technology);
  router.del ('/technologies/:id',                              __.technology.delete_technology);     

  router.all('*', (req, res) => {
    res.status(404)
      .send({message: 'Nothing to do here.'});
  });

  return router;
};