const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const studentSchema = new Schema ({
    userId: {type: String, unique: true, index: true},
    password: {type: String},
    createdAt: {type: Date}
})

module.exports = mongoose.model('student', studentSchema)