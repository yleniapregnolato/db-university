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

