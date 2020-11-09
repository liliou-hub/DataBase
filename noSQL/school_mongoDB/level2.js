db.students.aggregate([
    {
        $match: {
            "id": 4
        }
    },
    {
        $lookup:
        {
            from: "favorites",
            localField: "id",
            foreignField: "studentsID",
            as: "newField"
        }
    },
    { $unwind: "$newField" },
    { $project: { "id": 1, "name": 1, "city": 1, "newField.class": 1, "newField.sport": 1 } }

])

/*----------------------------------------------------------------*/

db.students.aggregate([
    {
        $match: {
            "id": 5
        }
    },
    {
        $lookup:
        {
            from: "favorites",
            localField: "id",
            foreignField: "studentsID",
            as: "newField"
        }
    },
    { $unwind: "$newField" },
    { $project: { "name": 1, "newField.sport": 1 } }

])

/*----------------------------------------------------------------*/

db.students.aggregate([
    {
        $match: {
            "id": 1
        }
    },
    {
        $lookup:
        {
            from: "favorites",
            localField: "id",
            foreignField: "studentsID",
            as: "newField"
        }
    },
    { $unwind: "$newField" },
    { $project: { "name": 1, "newField.class": 1 } }

])

/*----------------------------------------------------------------*/

db.favorites.aggregate([
    {
        $match: {
            "class": "music"
        }
    },
    {
        $lookup:
        {
            from: "students",
            localField: "studentsID",
            foreignField: "id",
            as: "newField"
        }
    },
    { $unwind: "$newField" },
    { $project: { "newField.id": 1, "newField.name": 1, "newField.city": 1 } }

])

/*----------------------------------------------------------------*/

db.favorites.aggregate([
    {
        $match: {
            "sport": "tennis"
        }
    },
    {
        $lookup:
        {
            from: "students",
            localField: "studentsID",
            foreignField: "id",
            as: "newField"
        }
    },
    { $unwind: "$newField" },
    { $project: { "sport": 1, "newField.name": 1 } }

])

/*----------------------------------------------------------------*/

db.favorites.aggregate([
    {
        $match: {
            "class": "arts"
        }
    },
    {
        $lookup:
        {
            from: "students",
            localField: "studentsID",
            foreignField: "id",
            as: "newField"
        }
    },
    { $unwind: "$newField" },
    { $project: { "class": 1, "newField.name": 1 } }

])

/*----------------------------------------------------------------*/

db.getCollection('students').count({ "city": "paris" })