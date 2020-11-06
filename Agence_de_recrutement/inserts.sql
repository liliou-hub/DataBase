INSERT INTO `candidates`(
    `id`,
    `first_name`,
    `surname`,
    `dob`,
    `salary`,
    `portfolio`,
    `github`
)
VALUES(
    '1',
    'raky',
    'kiki',
    '1987-06-22',
    '9876',
    'actif',
    'oui'
),(
    '2',
    'linda',
    'lindouche',
    '1983-01-01',
    '8765',
    'actif',
    'oui'
),(
    '3',
    'lilia',
    'liliou',
    '1985-11-07',
    '7654',
    'actif',
    'oui'
),(
    '4',
    'riad',
    'zippen',
    '1987-01-15',
    '6543',
    'non',
    'non'
);

/*---------------------------------------------------------------*/

INSERT INTO `languages`(`ID`, `name`, `candidate.id`)
VALUES('1', 'JS', '1'),('2', 'Python', '2'),('3', 'java', '3'),('4', 'sql', '4');

/*---------------------------------------------------------------*/

INSERT INTO `programming`(`id`, `name`, `candidate.id`)
VALUES('1', 'react', '4'),('2', 'express', '3'),('3', 'node', '2'),('4', 'jQuery', '1');