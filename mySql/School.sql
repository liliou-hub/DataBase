/*     Table Student  */
CREATE TABLE `school`.`students`(
    `id` INT NOT NULL,
    `name` VARCHAR(30) NOT NULL,
    `city` VARCHAR(30) NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE = InnoDB; INSERT INTO `students`(`ID`, `Name`, `City`)

VALUES
('1', 'Véronique', 'Paris'),('2', 'Steeven', 'Lyon'),('3', 'Marc', 'Marseille'),('4', 'Nour', 'Lyon'),('5', 'Romain', 'Paris'),('6', 'Sophie', 'Paris')


/*     Table languages  */ 
CREATE TABLE `school`.`languages`(
    `id` INT NOT NULL,
    `Name` VARCHAR(30) NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE = InnoDB; INSERT INTO `languages`(`ID`, `Name`)

VALUES('1', 'French'),('2', 'English'),('3', 'German'),('4', 'Spanish'),('5', 'Mandarin')


/*     Table favorites  */ 
CREATE TABLE `school`.`favorites`(
    `id` INT NOT NULL,
    `Class` VARCHAR(30) NOT NULL,
    `Sport` VARCHAR(30) NOT NULL,
    `Student_id` INT NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE = InnoDB; INSERT INTO `favorites`(`ID`, `Class`, `Sport`, `Student_id`)

VALUES('1', 'Maths', 'Cricket', '2'),('2', 'Music', 'Hip-Hop', '6'),('3', 'Arts', 'Boxing', '1'),('4', 'Litterature', 'Tennis', '3'),('5', 'Computer Science', 'Tennis', '5'),('6', 'Arts', 'Baseball', '4');


/*     Table students languages  */ 
CREATE TABLE `school`.`students languages`(
    `ID` INT NOT NULL,
    `Student_ID` INT NOT NULL,
    `Language_ID` INT NOT NULL,
    PRIMARY KEY(`ID`)
) ENGINE = InnoDB; INSERT INTO `students languages`(`ID`, `Student_ID`, `Language_ID`)

VALUES('1', '1', '1'),('2', '1', '2'),('3', '2', '1'),('4', '2', '3'),('5', '3', '1'),('6', '4', '1'),('7', '4', '1'),('8', '4', '4'),('9', '4', '5'),('10', '5', '1'),('11', '5', '5'),('12', '6', '1'),('13', '6', '2'),('14', '6', '3')

