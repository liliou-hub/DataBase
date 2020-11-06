SELECT
    *
FROM
    students
LEFT JOIN favorites ON `students`.`id` = `favorites`.`Student_id`
WHERE
    `students`.`id` = 5;
/*---------------------------------------------------------------*/
SELECT
    students.name,
    favorites.sport
FROM
    students
LEFT JOIN favorites ON students.id = favorites.Student_id
WHERE
    students.id = 4;
/*--------------------------------------------------------------*/
SELECT
    students.name,
    favorites.class
FROM
    students
LEFT JOIN favorites ON students.id = favorites.Student_id
WHERE
    students.id = 1;
/*---------------------------------------------------------------*/
SELECT
    *
FROM
    `students`
LEFT JOIN favorites ON students.id = favorites.Student_id
WHERE
    class = 'music';
/*----------------------------------------------------------------*/
SELECT NAME
FROM
    `students`
LEFT JOIN favorites ON students.id = favorites.Student_id
WHERE
    sport = 'tennis'
/*------------------------------------------------------------------*/
SELECT NAME
FROM
    `students`
LEFT JOIN favorites ON students.id = favorites.Student_id
WHERE
    class = 'arts'
/*-------------------------------------------------------------------*/
SELECT
    COUNT(city) AS total
FROM
    students
WHERE
    city = 'paris'
