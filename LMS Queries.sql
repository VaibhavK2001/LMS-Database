SHOW DATABASES;

USE LMS;

SHOW TABLES;

-- 1-find all candidate having java technolog --

SELECT FC.* , TS.TECH_NAME
FROM fellowship_candidate FC , tech_stack TS
WHERE FC.USER_ID = TS.USER_ID AND TS.TECH_NAME = 'JAVA';

-- ----------------------------------------------------------------- --

-- 2- find all mentors and ideations have java technology --

SELECT M.*, TS.TECH_NAME
FROM MENTOR M, TECH_STACK TS
WHERE M.USER_ID = TS.USER_ID AND TS.TECH_NAME = 'JAVA';

-- ----------------------------------------------------------------- --

-- 3- find name of candidate which did not assign technology --

SELECT FC.FIRST_NAME, FC.LAST_NAME 
FROM fellowship_candidate FC , TECH_STACK TS
WHERE FC.USER_ID = TS.USER_ID AND  TS.TECH_NAME = NULL ;

-- ----------------------------------------------------------------- --

-- 4- find name of cnadidate which is not submit documents --

SELECT FC.FIRST_NAME, FC.LAST_NAME, CD.*
FROM FELLOWSHIP_CANDIDATE FC, CANDIDATE_DOCUMENTS CD
WHERE FC.USER_ID = CD.USER_ID AND CD.STATUS = 'PENDING';

-- ----------------------------------------------------------------- --

-- 5-find name of candidate which is not submit bank details --

SELECT FC.FIRST_NAME, FC.LAST_NAME, CBD.*
FROM FELLOWSHIP_CANDIDATE FC, CANDIDATE_BANK_DETAILS CBD
WHERE FC.USER_ID = CBD.USER_ID AND CBD.ACCOUNT_NUMBER = '';

-- ----------------------------------------------------------------- --

-- 6-find name of candidates which is joined in dec month --

SELECT FIRST_NAME , LAST_NAME, JOINING_DATE
FROM FELLOWSHIP_CANDIDATE
WHERE JOINING_DATE LIKE '%12___';

SELECT FIRST_NAME , LAST_NAME, JOINING_DATE
FROM FELLOWSHIP_CANDIDATE
WHERE MONTH(JOINING_DATE) = 12;

-- ----------------------------------------------------------------- --

-- 7-find name of candidates which is end of course in feb --

SELECT FC.FIRST_NAME, FC.MIDDLE_NAME, FC.LAST_NAME , CSA.COMPLETE_DATE
FROM FELLOWSHIP_CANDIDATE FC, CANDIDATE_STACK_ASSIGNMENT CSA
WHERE FC.ID = CSA.CANDIDATE_ID AND MONTH(CSA.COMPLETE_DATE) = 2;

SELECT fellowship_candidate.First_Name,fellowship_candidate.Middle_Name,fellowship_candidate.Last_Name FROM fellowship_candidate
WHERE MONTH(DATE_ADD(fellowship_candidate.Hired_Date,INTERVAL 3 MONTH))=2;

-- ----------------------------------------------------------------- --

-- 8-find name of candidates which is ending date is according to joining date if joining date is 22-02-2019 --

SELECT First_Name,Middle_Name,Last_Name,Hired_Date FROM fellowship_candidate
WHERE Hired_Date = '2019-02-22' AND MONTH(DATE_ADD(Hired_Date,INTERVAL 3 MONTH)) = 5;
-- ----------------------------------------------------------------- --

-- 9-find all candidates which is passed out in 2019 year --

SELECT * , CQ.PASSING_YEAR
FROM CANDIDATE_QUALIFICATION CQ, FELLOWSHIP_CANDIDATE FC
WHERE FC.ID = CQ.CANDIDATE_ID AND CQ.PASSING_YEAR = 2019;
-- ----------------------------------------------------------------- --

-- 10-which technology assign to which andidates which is having MCA background --

SELECT FC.FIRST_NAME, FC.LAST_NAME, FC.DEGREE, TS.TECH_NAME
FROM FELLOWSHIP_CANDIDATE FC, TECH_STACK TS
WHERE FC.ID = TS.ID AND FC.DEGREE = 'MCA';
-- ----------------------------------------------------------------- --

-- 11-how many candiates which is having last month --

SELECT COUNT(*) AS LAST_MONTH_CANDIDATES
FROM FELLOWSHIP_CANDIDATE FC, CANDIDATE_STACK_ASSIGNMENT CSA
WHERE FC.ID = CSA.CANDIDATE_ID
AND MONTH(COMPLETE_DATE) = MONTH(now())
  AND YEAR(COMPLETE_DATE) = YEAR(now());
-- ------------------------------------------------------------------------------------------ --

-- 12-how many week candidate completed in the bridgelabz since joining date candidate id is 2 --

SET @JOINING_DATE = (SELECT JOINING_DATE FROM FELLOWSHIP_CANDIDATE
WHERE ID = 1002);
SET @TODAY = (SELECT CURRENT_DATE);
-- SELECT @JOINING_DATE;
-- SELECT @TODAY;
SELECT FIRST_NAME,LAST_NAME, FLOOR(DATEDIFF(@TODAY, @JOINING_DATE)/7) AS 'WEEKS COMPLETED'
FROM FELLOWSHIP_CANDIDATE
WHERE ID = 1002;

SELECT FIRST_NAME, LAST_NAME, FLOOR(DATEDIFF(CURRENT_DATE, JOINING_DATE)/7) AS 'WEEK COMPLETED'
FROM FELLOWSHIP_CANDIDATE
WHERE ID = 1002;
-- ------------------------------------------------------------------------------------------ --

-- 13-find joining date of candidate if candidate id is 4 --

SELECT ID,FIRST_NAME,LAST_NAME,JOINING_DATE
FROM FELLOWSHIP_CANDIDATE
WHERE ID = 1004;
-- -------------------------------------------------------------------------------------------

-- 14-how many week remaining of candidate in the bridglabz from today if candidate id is 5 --

SELECT FC.ID,FC.FIRST_NAME,FC.LAST_NAME,CSA.COMPLETE_DATE, FLOOR(DATEDIFF(CSA.COMPLETE_DATE, CURDATE())/7) AS 'WEEKS REMAINING'
FROM FELLOWSHIP_CANDIDATE FC, CANDIDATE_STACK_ASSIGNMENT CSA
WHERE FC.ID = CSA.CANDIDATE_ID AND FC.ID = 1005;
-- -------------------------------------------------------------------------------------------

-- 15-how many days remaining of candidate in the bridgelabz from today if candidate is is 6 --

SELECT FC.ID,FC.FIRST_NAME, FC.LAST_NAME, CSA.COMPLETE_DATE, DATEDIFF(CSA.COMPLETE_DATE, CURDATE()) AS 'DAYS REMAINING'
FROM FELLOWSHIP_CANDIDATE FC, CANDIDATE_STACK_ASSIGNMENT CSA
WHERE FC.ID = CSA.CANDIDATE_ID AND FC.ID = 1006;
-- -------------------------------------------------------------------------------------------

-- 16-find candidates which is deployed --

SELECT FC.FIRST_NAME, FC.LAST_NAME, CSA.COMPLETE_DATE AS 'COMPLETE DATE'
FROM FELLOWSHIP_CANDIDATE FC, CANDIDATE_STACK_ASSIGNMENT CSA
WHERE FC.ID = CSA.CANDIDATE_ID AND CSA.COMPLETE_DATE < CURDATE();

-- -------------------------------------------------------------------------------------------

-- 17-find name and other details and name of company which is assign to candidate --

SELECT FC.*, COMP.NAME AS 'COMPANY NAME'
FROM FELLOWSHIP_CANDIDATE FC, COMPANY COMP
WHERE FC.USER_ID = COMP.USER_ID;

-- -------------------------------------------------------------------------------------------

-- 18-find all condidate and mentors which is related to lab= banglore/mumbai/pune --

SELECT FC.*, M.NAME AS 'MENTOR NAME', LAB.LOCATION as 'LAB LOCATION'
FROM FELLOWSHIP_CANDIDATE FC JOIN MENTOR M ON FC.USER_ID = M.USER_ID JOIN LAB ON FC.USER_ID = LAB.USER_ID
WHERE LAB.LOCATION IN ('Mumbai','Pune','Bengalore');

-- -------------------------------------------------------------------------------------------

-- 19-find all condidate and mentors which is related to lab= banglore/mumbai/pune --

SELECT fellowship_candidate.First_Name,mentor.Name,mentor.Mentor_Type,tech_stack.Tech_Name 
FROM fellowship_candidate JOIN mentor ON fellowship_candidate.USER_ID = mentor.USER_ID JOIN tech_stack ON fellowship_candidate.USER_ID = tech_stack.USER_ID 
WHERE fellowship_candidate.Id = 1006;
