-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`id`, `students`.`name`, `students`.`surname`, `students`.`degree_id`
FROM `students`
INNER JOIN `degrees` 
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT `degrees`.`id`, `degrees`.`name`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = "Dipartimento di Neuroscienze"
AND `degrees`.`level` = 'magistrale';

-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`id`, `courses`.`name`
FROM `courses`
INNER JOIN `course_teacher` 
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers` 
ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `teachers`.`id` = 44;


-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`id`, `students`.`name`, `students`.`surname`, `degrees`.`name`, `departments`.`name`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`name`, `students`.`surname`;