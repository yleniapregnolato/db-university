-- contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`students`.`enrolment_date`) AS `year_of_enrolment`, COUNT(*) AS `subscribers_numbers`
FROM `students`
GROUP BY `year_of_enrolment`
ORDER BY `year_of_enrolment`;

-- contare gli insegnanti che hanno l'ufficio nello stesso edificio
