SELECT
    *
FROM
    `candidates`
WHERE
    1

/*---------------------------------------------------------------*/

SELECT
    COUNT(id) AS total
FROM
    candidates;

/*---------------------------------------------------------------*/
    
SELECT
    surname
FROM
    candidates
WHERE
    `dob` > 1990 -11 -06

/*---------------------------------------------------------------*/

SELECT
    surname
FROM
    candidates
WHERE
    `salary` < 8000    

/*---------------------------------------------------------------*/
    
  SELECT
    surname
FROM
    candidates
WHERE
    `portfolio` = 'actif'
    
 /*---------------------------------------------------------------*/

 SELECT
    surname
FROM
    candidates
WHERE
    `github`= 'oui'

/*---------------------------------------------------------------*/
SELECT
    surname
FROM
    candidates
WHERE
    `github` = 'oui' AND `portfolio` = 'actif'

 /*---------------------------------------------------------------*/

SELECT
    surname
FROM
    candidates
LEFT JOIN languages ON candidates.id = languages.candidate_id
WHERE
    languages.name = 'js'

 /*---------------------------------------------------------------*/


    SELECT
    surname
FROM
    candidates
LEFT JOIN programming ON candidates.id = programming.candidate_id
WHERE
    programming.name = 'react'

/*---------------------------------------------------------------*/

    