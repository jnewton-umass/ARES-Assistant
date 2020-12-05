const studentModel = require("../models/studentModel");

async function register(query) {
    return new Promise(async function (resolve, reject) {
        await studentModel.create(query)
            .then(result => {
                resolve(result);
            })
            .catch(error => {
                reject(error);
            })
    })
}

async function checkUserIdExists(query, attribute) {
    return new Promise(async function (resolve, reject) {
        await studentModel.find(query, attribute)
            .then(result => {
                resolve(result);
            })
            .catch(error => {
                console.log(error);
                reject(error);
            })
    })
}

async function login(query, attribute) {
    return new Promise(async function (resolve, reject) {
        await studentModel.findOne(query,attribute)  
            .then(result => {
                console.log(result);
                resolve(result);
            })
            .catch(error => {
                reject(error);
            })
    })
}


module.exports = {
    register,
    login,
    checkUserIdExists
}
