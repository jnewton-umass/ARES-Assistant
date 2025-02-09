const CONSTANTS = require("../constants/constants");
const studentDao = require('../dataOps/studentDataOps');
const errorObj = {}

async function register(req) {
    const query = {
        userId: req.body.userId,
        password: req.body.password,
        createdAt: new Date()
    }
    const userIdCheck = {
        userId: query.userId
    }
    const userIdAttribute = {
        _id: 0,
        userId: 1
    }

    return new Promise(async function (resolve, reject) {
        await studentDao.checkUserIdExists(userIdCheck, userIdAttribute)
            .then(async result => {
                if (result.length !== 0) {
                    errorObj.code = CONSTANTS.APP_ERROR_CODE.USER_EXISTS
                    throw (errorObj)
                }
                return result
            })
            .then(async result => {
                return resolve(studentDao.register(query))
            })
            .catch(error => {
                return reject(error)
            })
    })
};
async function login(req) {
    const query = {
        userId: req.body.userId,
        password: req.body.password,
    }
    const userIdCheck = {
        userId: query.userId
    }
    const userIdAttribute = {
        _id: 0,
        userId: 1
    }

    return new Promise(async function (resolve, reject) {
        return await studentDao.checkUserIdExists(userIdCheck, userIdAttribute)
            .then(async result => {
                if (result.length !== 0) {
                    return await studentDao.login(query)
                    .then(async result => {
                        if (result != null) {
                            resolve(result);
                        }
                        else {
                            reject(result);
                        }
                    })
                    .catch(error => {
                        reject(error);
                    })
                }
            })
            .catch(error => {
                reject(error);
            })
    })
}
module.exports = {
    register,
    login
}
