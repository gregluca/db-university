1.  SELEZIONARE TUTTI GLI STUDENTI NATI NEL 1990. 

SELECT *
FROM `students`
WHERE YEAR(date_of_birth) = 1990;

2. SELEZIONARE TUTTI I CORSI CHE VALGONO PIU DI 10 CREDITI.

SELECT * 
FROM `courses` 
WHERE `cfu` > 10;

3. SELEZIONARE TUTTI GLI STUDENTI CHE HANNO PIU DI 30 ANNI.

SELECT *
FROM `students`
WHERE TIMESTAMPDIFF(YEAR,date_of_birth, CURDATE()) > 30;

4. SELEZIONARE TUTTI I CORSI DEL PRIMO SEMESTRE DEL PRIMO ANNO DI UN QUALSIASI CORSO DI LAUREA. 

SELECT *
FROM `courses` 
WHERE `period` = 'I semestre' AND `year`= 1;

5. SELEZIONARE TUTTI GLI APPELLI D ESAME CHE AVVENGONO NEL POMERIGGIO (DOPO LE 14) DEL 20/06/2020.

SELECT *
FROM `exams`
WHERE DATE(date) = '2020-06-20' AND HOUR(hour) >= 14;

6. SELEZIONARE TUTTI I CORSI DI LAUREA MAGISTRALE.

SELECT *
FROM `degrees`
WHERE `level` = 'magistrale';

7. DA QUANTI DIPARTIMENTI E COMPOSTA L UNIVERSITA?.

SELECT * FROM `departments` 

8. QUANTI SONO GLI INSEGNANTI CHE NON HANNO UN NUMERO DI TELEFONO?.

SELECT *
FROM `teachers`
WHERE `phone`IS NULL;