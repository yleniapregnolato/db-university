-- selezionare tutti gli studenti nati nel 1990 (160)
SELECT * FROM `students` 
WHERE `date_of_birth` LIKE "1990-%"
ORDER BY `date_of_birth` DESC;

-- selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT *
FROM `courses`
WHERE `cfu` > 10;

-- selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM `students`
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30;

-- selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT * 
FROM `courses` 
WHERE `period`= "I semestre"
AND `year` = 1;

-- selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT *
FROM exams
WHERE DATE(date) = "2020-06-20"
AND HOUR(hour) >= 14
ORDER BY `hour`;

-- selezionare tutti i corsi di laurea magistrale (38)
SELECT * 
FROM `degrees`
WHERE `level`= "magistrale";

-- da quanti dipartimenti è composta l'università?
SELECT COUNT(`id`) AS `departments`
FROM `departments`;

