var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('submit');
});

router.post('/', function(req, res, next){
  studentService.login(req);
  res.render('grades');
});
module.exports = router;
