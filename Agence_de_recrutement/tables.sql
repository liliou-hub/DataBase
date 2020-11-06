CREATE TABLE `agence_de_recrutement`.`candidates`(
    `id` INT NOT NULL,
    `first_name` VARCHAR(225) NOT NULL,
    `surname` VARCHAR(225) NOT NULL,
    `dob` DATE NOT NULL,
    `salary` INT NOT NULL,
    `portfolio` TEXT NOT NULL,
    `github` TEXT NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE = InnoDB;

/*---------------------------------------------------------------*/

CREATE TABLE `agence_de_recrutement`.`languages`(
    `ID` INT NOT NULL,
    `name` VARCHAR(225) NOT NULL,
    `candidate.id` INT NOT NULL,
    PRIMARY KEY(` ID`)
) ENGINE = InnoDB;

/*---------------------------------------------------------------*/

CREATE TABLE `agence_de_recrutement`.`programming`(
    `id` INT NOT NULL,
    `name` VARCHAR(225) NOT NULL,
    `candidate.id` INT NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE = InnoDB;

