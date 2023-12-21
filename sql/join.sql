1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT *
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia"; 

2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze

SELECT *
FROM `degrees`
JOIN `departments` 
ON `degrees`.`department_id`
WHERE `departments`.`name` = "Dipartimento di Neuroscienze"
AND `degrees`.`level`= "Magistrale";

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT *
FROM `courses`
JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `teachers` . `id` = 44;

4.

SELECT `students` . `surname`, `students`.`name`, `degrees`.*, `departments`.*
FROM `students` 
JOIN `degrees`
ON `students` . `degree_id` = `degrees` . `id`
JOIN `departments` 
ON `degrees` . `department_id` = `departments` . `id`
ORDER BY  `students` . `surname` .`name` ASC; 