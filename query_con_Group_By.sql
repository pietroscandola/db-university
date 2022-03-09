1. Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(*) AS 'num_iscritti', YEAR(`enrolment_date`) AS `anno_iscrizione`
FROM `students`
GROUP BY `anno_iscrizione`
