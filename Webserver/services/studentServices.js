const studentDataOps = require('../dataOps/studentDataOps');
const studentModel = require('../models/studentModel');

async function login(req) {
    return new Promise(async function (resolve, reject) {
        const userId = req.body.userId;
        // user id attribute of user
        const loginQuery = {
            userId: req.body.userId,
            password: req.body.password
        }
        const userIdAttribute = {
            _id: 0,
            userId: 1
        }
        await studentDataOps.login(loginQuery,userIdAttribute)
            .then(async result => {
                return resolve(result);
            })
            .catch(error => {
                return reject(error);
            })
    })
}