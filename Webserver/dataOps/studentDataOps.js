const studentModel = require("../models/studentModel");

async function login(query, attribute) {
    return new Promise(async function (resolve, reject) {
        await userModel.findOne(
            query,
            attribute
        )
            .then(result => {
                resolve(result)
            })
            .catch(error => {
                reject(error)
            })
    })
}
module.exports = {login}