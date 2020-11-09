db.students_languages.aggregate([
    {
        $match: {
            "studentsID": 1
        }
    },
    {
        $lookup:
        {
            from: "students",
            localField: "studentsID",
            foreignField: "id",
            as: "newStud"
        }
    },
    { $unwind: "$newStud" },

    {
        $lookup:
        {
            from: "languages",
            localField: "languageID",
            foreignField: "id",
            as: "newLang"
        }
    },
    { $unwind: "$newLang" },

    { $project: { "newStud.id": 1, "newStud.name": 1, "newStud.city": 1, "newLang.name": 1 } }

])

/*----------------------------------------------------------------*/

db.students_languages.aggregate([
    {
        $match: {
            "studentsID": 4
        }
    },
    {
        $lookup:
        {
            from: "students",
            localField: "studentsID",
            foreignField: "id",
            as: "newStud"
        }
    },
    { $unwind: "$newStud" },
    
    {
        $lookup:
        {
            from: "languages",
            localField: "languageID",
            foreignField: "id",
            as: "newLang"
        }
    },
    { $unwind: "$newLang" },
    
    { $project: { "newStud.id": 1, "newStud.name":1,"newStud.city":1, "newLang.name":1 } }

])

/*----------------------------------------------------------------*/

db.students_languages.aggregate([
    {
        $match: {
            "studentsID": 5
        }
    },
    {
        $lookup:
        {
            from: "students",
            localField: "studentsID",
            foreignField: "id",
            as: "newStud"
        }
    },
    { $unwind: "$newStud" },
    
    {
        $lookup:
        {
            from: "languages",
            localField: "languageID",
            foreignField: "id",
            as: "newLang"
        }
    },
    { $unwind: "$newLang" },
    
    { $project: {  "newStud.name":1, "newLang.name":1 } }

])

/*----------------------------------------------------------------*/