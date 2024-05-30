-- contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`students`.`enrolment_date`) AS `year_of_enrolment`, COUNT(*) AS `subscribers_numbers`
FROM `students`
GROUP BY `year_of_enrolment`
ORDER BY `year_of_enrolment`;

-- contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `teachers`.`office_address`, COUNT(*) AS `teachers_number`
FROM `teachers`
GROUP BY `office_address`

-- Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_student`.`exam_id` AS `id`, AVG(`exam_student`.`vote`) AS `avarage_grades`
FROM `exam_student`
GROUP BY `id`

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `degrees`.`department_id`, COUNT(*) AS `count_degrees`
FROM `degrees`
GROUP BY `degrees`.`department_id`;