/* 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */

SELECT *,`students`.`name`,`students`.`surname`,`students`.`degree_id`
FROM `degrees`
JOIN `students`
ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia'

/* 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze */

SELECT `departments`.`name`, `degrees`.`name`
FROM `departments`
JOIN `degrees`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`id` = `degrees`.`department_id`
AND `departments`.`name` = 'Dipartimento di Neuroscienze'