
async function run() {

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
            required: true
        },
        created: {
            type: Date,
            // required: true,
        },
    });

    const CarsModel = mongoose.model('Cars', carsSchema);



    const reno = new CarsModel({
        brand: 'Renault',
        model: 'Espace',
        year: 1999

    })

    const scenic = new CarsModel({
        brand: 'Renault',
        model: 'Scenic',
        year: 2004

    })

    const peugo = new CarsModel({
        brand: 'Peugeot',
        model: '308',
        year: 2017

    })




    const resultReno = await reno.save()
    const resultScenic = await scenic.save()
    const resultPeugo = await peugo.save()


    console.log(resultReno);

}

run()