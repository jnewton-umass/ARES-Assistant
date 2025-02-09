var express = require('express');
var router = express.Router();
var mongoose = require('mongoose');
var constants = require('../constants/constants')
var studentServices = require('../services/studentServices');

router.post('/register',async function(req, res, next) {
  await studentServices.register(req)
    .then(result => {
      res.status(constants.ERROR_CODES.SUCCESS);
      console.log(result);
      res.render('submit', result);
    })
    .catch(error => {
      res.status(constants.ERROR_CODES.FAILED);
      res.send(error);
    })
});

router.post('/login',async function(req, res, next) {
  await studentServices.login(req)
    .then(result => {
      if (result == null) {
        theError = "invalid username or password";
        res.status(constants.ERROR_CODES.FAILED);
        res.render('error', theError);
      }
      else {
        res.status(constants.ERROR_CODES.SUCCESS);
        res.render('submit', result);
      }
    })
    .catch(error => {
      res.status(constants.ERROR_CODES.FAILED);
      res.render('error');
    })
});

module.exports = router;
