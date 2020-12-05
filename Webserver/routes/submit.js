var express = require('express');
var router = express.Router();
var gradeServices = require('../services/gradeServices');
var studentService = require('../services/studentServices');
var constants = require('../constants/constants');
var data;
router.post('/', async function(req, res, next){
  console.log(req.body);
  data = gradeServices.trigger(req);
  if(data) {
    res.status(constants.ERROR_CODES.SUCCESS);
    res.render('grades');
  }
  else {
    res.status(constants.ERROR_CODES.FAILED);
    res.render('Failed Trigger');
  }
});
module.exports = router;
