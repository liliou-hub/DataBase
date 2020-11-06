SELECT
    students.*,
    languages.name
FROM
    students
JOIN students_languages ON students.id = students_languages.student_id
JOIN languages ON languages.id = students_languages.language_id
WHERE
    students.ID = 1

/*------------*/

SELECT
    students.*,
    languages.name
FROM
    students
JOIN students_languages ON students.id = students_languages.student_id
JOIN languages ON languages.id = students_languages.language_id
WHERE
    students.ID = 4

/*------------*/

SELECT
    students.name,
    languages.name
FROM
    students
JOIN students_languages ON students.id = students_languages.student_id
JOIN languages ON languages.id = students_languages.language_id
WHERE
    students.ID = 5

/*------------*/