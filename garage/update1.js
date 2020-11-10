const mongoose = require('mongoose')

mongoose.connect('mongodb://localhost:27017/garage', {
    useNewUrlParser: true,
    useUnifiedTopology: true
}).catch(err => console.log(err))

const carsSchema = new mongoose.Schema({
    brand: {
        type: String,
        required: true,
    },
    model: {
        type: String,
        required: true,
    },
    year: {
        type: Number,
        required: true,
    },
    created: {
        type: Date,
        // required: true,
    },
});

const CarsModel = mongoose.model('Cars', carsSchema);



CarsModel.updateOne({ _id: "5faa9b139df2c63510534fa6" }, { year: "2000" }, function (err, result) { });

