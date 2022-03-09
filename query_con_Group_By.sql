1. Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(*) AS 'num_iscritti', YEAR(`enrolment_date`) AS `anno_iscrizione`
FROM `students`
GROUP BY `anno_iscrizione`

2. Contare gli insegnanti che hanno l ufficio nello stesso edificio

SELECT COUNT(*) AS 'numero_insegnanti', `office_address` AS 'numero_ufficio'
FROM `teachers`
GROUP BY `office_address`

3. Calcolare la media dei voti di ogni appello d esame

SELECT `exam_id` AS `appello`, ROUND(AVG(`vote`),2) AS `media_voto`
FROM `exam_student`
GROUP BY `exam_id`

4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT `department_id` AS 'numero_dipartimento', COUNT(`name`) AS 'corsi_di_laurea'
FROM `degrees`
GROUP BY `department_id`