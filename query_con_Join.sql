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

/* 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44) */

SELECT `teachers`.`name`,`teachers`.`surname`,`courses`.`name`
FROM `teachers`
JOIN `course_teacher`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
JOIN `courses`
ON `course_teacher`.`course_id` = `courses`.`id`
WHERE `teachers`.`name` = 'Fulvio'
AND `teachers`.`surname` = 'Amato'

/* 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
relativo dipartimento, in ordine alfabetico per cognome e nome */

SELECT `students`.`surname`,`students`.`name`,`degrees`.`name`,`departments`.`name`
FROM `students`
JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname`,`students`.`name`

/* 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti */

SELECT `degrees`.`name`,`courses`.`name`,`teachers`.`name`,`teachers`.`surname`
FROM `degrees`
JOIN `courses`
ON `degrees`.`id` = `courses`.`degree_id`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`

/* 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica */

SELECT `departments`.`name`, `teachers`.`name`, `teachers`.`surname`
FROM `departments`
JOIN `degrees`
ON `departments`.`id` = `degrees`.`department_id`
JOIN `courses`
ON `degrees`.`id` = `courses`.`degree_id`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`