SHOW DATABASES;
USE LMS;

INSERT INTO USER_DETAILS (EMAIL,FIRST_NAME,LAST_NAME,PASSWORD,CONTACT_NUMBER,VERIFIED,CREATOR_USER) VALUES
('pranav@mail','PRANAV','KADAM','pranav@234',790234032,TRUE,106),
('hareram@mail','HAREREAM','MANE','hari@954',987241412,TRUE,107),
('rushi@mail','RUSHI','LANDE','rushi@6644',92340912,TRUE,108),
('mama@mail','ABHISHEK','BONDAR','abhi@234',90120319,TRUE,109),
('shiv@mail','SHIV','SHAHANE','shiv@234',981304732,TRUE,110);

SELECT * FROM user_details;

TRUNCATE TABLE USER_DETAILS;

INSERT INTO hired_candidate (ID,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL,HIRED_CITY,DEGREE,HIRED_DATE,MOBILE_NUMBER,PERMANENT_PINCODE,HIRED_LAB,ATTITUDE,COMMUNICATION_REMARK,KNOWLEDGE_REMARK,AGGREGATE_REMARK,STATUS,USER_ID)
VALUES
(2,'RAM','SHYAM','MORE','ram@mail','PUNE','BE COMPUTER','2024-02-02','98219363','7009821','MUMBAI','OK','AVERAGE','AVERAGE','AVERAGE','PENDING',3),
(3,'TUSHAR','MAHESH','JADHAV','tushar@mail','BANGLORE','BE IT','2023-04-12','9018028210','740094','MUMBAI','GOOD','GOOD','GOOD','GOOD','ACCEPTED',1),
(4,'ANJALI','JAGDISH','JAGTAP','anjali@mail','PUNE','MSc','2024-09-21','901822854','400129','PUNE','GOOD','GOOD','AVERAGE','AVERAGE','PENDING',7),
(5,'MAHESH','CHADRAKANT','LONDE','mahesh@mail','MUMBAI','MSc','2024-10-21','901822854','400129','PUNE','AVERAGE','BAD','AVERAGE','BELOW-AVERAGE','PENDING',7),
(6,"Sayali","abcd","Matale","sayali@gmail.com","Mumbai","BSC-CS",'2024-01-01',"8574968598","623745","Mumbai","Average","Need Help","Excellent","Good","Accepted",Now(),6),
(7,"Sushmita","Sandip","Pawar","sushmitapawar@gmail.com","Mumbai","BE-IT",'2024-03-20',"9884567845","400062","Mumbai","Positive","Excellent","Excellent","Excellent","Accepted",Now(),7),
(8,"Pratik","Mahendra","Sawant","pratiksawant@gmail.com","Mumbai","BE-IT",'2024-03-20',"9865457852","623402","Mumbai","Positive","Good","Excellent","Good","Accepted",Now(),8),
(9,"Sakshi","Pravin","Chavan","sakshichavan@gmail.com","Mumbai","BE-IT",'2024-05-12',"9685741256","785412","Mumbai","Positive","Excellent","Excellent","Excellent","Accepted",Now(),9),
(10,"Pranali","abcd","Deware","pranali@gmail.com","Mumbai","MCA",'2023-12-02',"9685789865","400084","Mumbai","Average","Good","Good","Good","Accepted",Now(),10);

SELECT * FROM HIRED_CANDIDATE;

INSERT INTO Fellowship_Candidate (Id,CIC_ID,First_Name,Middle_Name,Last_Name,Email,Hired_City,Degree,Hired_Date,Mobile_Number,Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark,Aggregate_Remark,
								  Creator_Stamp,USER_ID,BIRTHDATE,Is_BIRTHDATE_Verified,Parent_Name,Parent_Occupation,Parent_Mobile_Number,Parent_Annual_SAL,Local_Address,Permanent_Address,Photo_Path,Joining_Date,
                                  Candidate_Status,Personal_Information,Bank_Information,Education_Information,Document_Status,Remark) VALUES       
                                  
                                  (1001,"CIC12345-01","Tushar","Shankar","Jadhav","tushar.jadhav.work@gmail.com","Mumbai","BE-IT",'2024-03-16',"8125467896","400084","Mumbai","Positive","Good","Excellent","Good",
                                   Now(),1,'1999-08-03',true,"Shankar Jadhav","Driver","9345687915",200000,"Same as Permament","Ghatkopar West","path/to/pic.jpg",'2024-03-16',
                                   "Active","Complete BE-IT","Bank Of Maharashtra","CGPA 8.32","Verified","All upto Date"),
                                   
								  (1002,"CIC12345-02","Anjali","Ananda","Patil","anjalipatil@gmail.com","Mumbai","BE-IT",'2024-04-02',"8108654596","623458","Mumbai","Positive","Good","Good","Good",
                                   Now(),2,'2001-11-17',true,"Ananda Patil","Worker","9685741254",260000,"Same as Permament","Sector 5 Ghansoli","path/to/pic.jpg",'2024-04-02',
                                   "Active","Complete BE-IT","Nagrik Bank","CGPA 8.70","Verified","All upto Date"),
                                   
								  (1003,"CIC12345-03","Sanket","Sanjay","Kalambaste","sanketkalambaste@gmail.com","Mumbai","BE-IT",'2019-04-02',"9685743245","400654","Mumbai","Average","Excellent","Weak","Good",
                                   Now(),3,'2000-03-31',true,"Sanjay Kalambaste","Government Job","9658741235",650000,"Same as Permament","Dadar East","path/to/pic.jpg",'2019-04-02',
                                   "Inactive","UI/UX Designer","Kotak Bank","CGPA 8.02","Verified","All upto Date"),
                                   
								  (1004,"CIC12345-04","Vedant","abcd","Gujarati","vedantgujarati@gmail.com","Mumbai","BE-CS",'2023-06-14',"7098325648","623462","Mumbai","Positive","Excellent","Excellent","Excellent",
                                   Now(),4,'2002-03-04',true,"Abcd Gujarati","Manager","7085296854",1500000,"Ghansoli","Shirpur","path/to/pic.jpg",'2023-06-14',
                                   "Active","BE-CS","ICIC Bank","CGPA 9.25","Verified","All upto Date"),
                                   
								  (1005,"CIC12345-05","Vaibhav","abcd","Kumbhar","vaibhav.kumbhar@gmail.com","Mumbai","BE-CS",'2024-01-01',"7078451296","400065","Mumbai","Average","Good","Good","Good",
                                   Now(),5,'2001-10-15',true,"Abcd Kumbhar","Driver","8745963215",400000,"Same as Permament","Govandi East","path/to/pic.jpg",'2024-01-01',
                                   "Active","FullStack Developer","Bank Of India","CGPA 7.85","Verified","All upto Date"),
                                   
								  (1006,"CIC12345-06","Sushmita","Sandip","Pawar","sushmitapawar@gmail.com","Mumbai","BE-IT",'2024-03-20',"9884567845","400062","Mumbai","Positive","Excellent","Excellent","Excellent",
								   Now(),7,'2002-02-14',true,"Sandip Pawar","Police Officer","8527419632",450000,"Same as Permament","Kurla East","path/to/pic.jpg",'2024-03-20',
								   "Active","Complete BE-IT","Bank Of Baroda","CGPA 8.30","Verified","All upto Date"),
                                   
								  (1007,"CIC12345-07","Sakshi","Pravin","Chavan","sakshichavan@gmail.com","Mumbai","BE-IT",'2024-05-12',"9685741256","785412","Mumbai","Positive","Excellent","Excellent","Excellent",
                                   Now(),9,'2002-12-28',true,"Pravin Chavan","Manager","7485963215",1800000,"Same as Permament","Ambernath East","path/to/pic.jpg",'2024-05-12',
                                   "Active","Pursuing BE-IT","Axis Bank","CGPA 9.80","Verified","All upto Date"),
                                   
								  (1008,"CIC12345-08","Pranali","abcd","Deware","pranali@gmail.com","Mumbai","MCA",'2023-12-02',"9685789865","400084","Mumbai","Average","Good","Good","Good",
                                   Now(),10,'2000-10-07',true,"Abcd Deware","Government Job","9638521475",400000,"Same as Permament","Ghatkopar West","path/to/pic.jpg",'2023-12-02',
                                   "Active","MCA","Bank Of Maharashtra","CGPA 8.31","Not Verified","All good");
                                   
SELECT * FROM fellowship_candidate;
            
INSERT INTO Candidate_Bank_Details (Id,Candidate_Id,Name,Account_Number,Is_Account_Num_Verified,Ifsc_Code,Is_Ifsc_Code_Verified,Pan_Number,Is_Pan_Number_Verified,Adhar_Number,Is_Adhar_Num_Verified,Creator_Stamp,USER_ID) VALUES
								   (01,1001,"Tushar Jadhav","987456321321456",true,"BOM124569",true,"TUSH12345",true,"896512347896",true,Now(),1),
                                   (02,1002,"Anjali Patil","785412369852147",true,"NAG852365",true,"ANJA85214",true,"741298563214",true,Now(),2),
                                   (03,1003,"Sanket Kalambaste","741236589852147",true,"KOTA741256",true,"SANK85236",true,"789632148523",true,Now(),3),
                                   (04,1004,"Vedant Gujarati","741236589852145",true,"ICI784563",true,"VEDA78452",true,"123478965412",true,Now(),4),
                                   (05,1005,"Vaibhav Kumbhar","741236589452136",true,"BOI784521",true,"VAIB74562",true,"785496851235",true,Now(),5),
                                   (06,1006,"Sushmita Pawar","852174589632586",true,"BOB785695",true,"SUSH78521",true,"784532148956",true,Now(),7),
                                   (07,1007,"Sakshi Chavan","789632541245789",true,"AXIS784512",true,"SAKS78456",true,"784532562803",true,Now(),9),
                                   (08,1008,"Pranali Deware","852398745612854",true,"BOM124569",true,"PRAN78456",true,"784512349856",true,Now(),10);
                                   
SELECT * FROM candidate_bank_details;

INSERT INTO Candidate_Qualification (Id,Candidate_Id,Diploma,Degree,Is_Degree_Verified,Employee_Decipline,Is_Employee_Decipline_Verified,Passing_Year,Is_Passing_Year_Verified,AGGR_PER,Final_Year_PER,Is_Final_Year_PER_Verified,Training_Institute,Is_Training_Institute_Verified,Training_Duration_Months,Is_Training_Duration_Month_Verified,Other_Training,Other_Training_Verified,Creator_Stamp,USER_ID) VALUES
                                    (1,1001,"Information Technology","Bachelor of Engineering",true,"Information Technology",true,2023,true,70,75.83,true,"YTCEM",true,"3 years",true,"AWS",true,Now(),1),
                                    (2,1002,"Information Technology","Bachelor of Engineering",true,"Information Technology",true,2023,true,75.5,79.28,true,"YTCEM",true,"3 years",true,"AWS",true,Now(),2),
                                    (3,1003,"Computer science","Bachelor of Engineering",true,"Information Technology",true,2023,true,65.5,70.12,true,"YTCEM",true,"3 years",true,"UI/UX",true,Now(),3),
                                    (4,1004,"None","Bachelor of Engineering",true,"Computer Science",true,2024,true,73,0.0,false,"RCPIT",true,"4 years",true,"AI & ML",true,Now(),4),
                                    (5,1005,"None","Bachelor of Engineering",true,"Computer Science",true,2023,true,68.4,73.58,true,"MGM",true,"4 years",true,"FullStack Developer",true,Now(),5),
                                    (6,1006,"Information Technology","Bachelor of Engineering",true,"Information Technology",true,2023,true,80,78.56,true,"YTCEM",true,"3 years",true,"Data Science",true,Now(),7),
                                    (7,1007,"None","Bachelor of Engineering",true,"Information Technology",true,2024,true,60.3,0.0,false,"YTCEM",true,"4 years",true,"Python/Java",true,Now(),9),
                                    (8,1008,"None","Bachelor of Accounting & Finance",true,"Accounting & Finance",true,2021,true,80,70.26,true,"CMSH",true,"3 years",true,"SQL",true,Now(),10);

SELECT * FROM CANDIDATE_QUALIFICATION;


INSERT INTO Candidate_Documents (Id,Candidate_Id,Doc_Type,Doc_Path,Status,Creator_Stamp,USER_ID) VALUES
								(1,1001,"PAN card,Result,Addhar Card,Any Certificate","path/to/doc/","Approved",Now(),1),
                                (2,1002,"PAN card,Result,Addhar Card,Any Certificate","path/to/doc/","Approved",Now(),2),
                                (3,1003,"PAN card,Result,Addhar Card,Any Certificate","path/to/doc/","Approved",Now(),3),
                                (4,1004,"PAN card,Result,Addhar Card,Any Certificate","path/to/doc/","Pending",Now(),4),
                                (5,1005,"PAN card,Result,Addhar Card,Any Certificate","path/to/doc/","Approved",Now(),5),
                                (6,1006,"PAN card,Result,Addhar Card,Any Certificate","path/to/doc/","Approved",Now(),7),
                                (7,1007,"PAN card,Result,Addhar Card,Any Certificate","path/to/doc/","Approved",Now(),9),
                                (8,1008,"PAN card,Result,Addhar Card,Any Certificate","path/to/doc/","Approved",Now(),10);

SELECT * FROM CANDIDATE_DOCUMENTS;

INSERT INTO Company (Id,Name,Address,Location,Status,Creator_Stamp,USER_ID) VALUES 
					(101,"QualityKiosk Technologies","C Wing,Rupa Solitaire,Sector-1,Millennium Business Park","Navi Mumbai","Active",Now(),1),
                    (102,"Accenture","1st, 2nd, 3rd, & 4th Office Level, Building No. 02 Mindspace","Navi Mumbai","Active",Now(),2),
                    (103,"ContractPod Solutions Pvt. Ltd","2nd Floor, Raheja Platinum, WeWork India, Road, Sag Baug, Marol","Mumbai","Active",Now(),3),
                    (104,"Amazon Web Services India Private Limited","1th Floor, Godrej One, Pirojshanagar, Vikhroli","Mumbai","Active",Now(),4),
                    (105,"Amdocs DVCI","Tower 12, Magarpatta Inner Circle, Cybercity, Magarpatta, Hadapsar","Pune","Active",Now(),5),
                    (106,"Jet2 Travel Technologies Pvt. Ltd.","16th floor,Jet2 Travel Technologies Pvt. Ltd,Viman Nagar","Pune","Active",Now(),7),
                    (107,"Capgemini Technology Services India Limited","M6, Capgemini Knowledge Park,Thane - Belapur Rd,Airoli","Navi Mumbai","Active",Now(),9),
                    (108,"Zeus Learning","Tower B,Peninsula Business Park,Ganapatrao Kadam Marg,Lower Parel","Mumbai","Active",Now(),10);
                    
SELECT * FROM COMPANY;

INSERT INTO Maker_Program (Id,Program_Name,Program_Type,Program_Link,Tech_Stack_Id,Tech_Type_Id,Is_Program_Approved,Description,Status,Creator_Stamp,USER_ID) VALUES
						  (001,"SDET","Automation Testing","https://www.sdet.com",301,401,true,"Manual & Automation Testing","Active",Now(),1),
                          (002,"SDET","Automation Testing","https://www.sdet.com",302,402,true,"Manual & Automation Testing","Active",Now(),2),
                          (003,"UI/Ux","Graphics Design","https://www.uiux.com",303,403,true,"UI Design with Abode XD & Figma","Active",Now(),3),
                          (004,"SDET","Automation Testing","https://www.sdet.com",304,404,true,"Manual & Automation Testing","Active",Now(),4),
                          (005,"SDET","Automation Testing","https://www.sdet.com",305,405,true,"Manual & Automation Testing","Active",Now(),5),
                          (006,"Python","Python Developer","https://www.python.com",306,406,true,"Python, Numpy,Boto3","Active",Now(),7),
                          (007,"Java","FullStack Developer","https://www.javafullstackdeveloper.com",307,407,true,"Java,Angular,Sql,JDBC","Active",Now(),9),
                          (008,"SQL","SQL Developer","https://www.sqldeveloper.com",308,408,true,"SQL,Workbench,oracle database","Active",Now(),10);
 
SELECT * FROM MAKER_PROGRAM;
                          
INSERT INTO App_Parameters (Id,Key_Type,Key_Value,Key_Text,Curr_Status,Lastupd_User,Lastupd_Stamp,Creator_Stamp,USER_ID,Seq_Num) VALUES
						   (1,"DOC_STATUS","PND","Pending","ACTV",1,Now(),Now(),1,1),
                           (2,"DOC_STATUS","RCEVD","Received","ACTV",2,Now(),Now(),2,2),
                           (3,"CUR_STATUS","ACTV","Active","ACTV",3,Now(),Now(),3,1),
                           (4,"CUR_STATUS","IACTV","Inactive","ACTV",4,Now(),Now(),4,1),
                           (5,"BATCH_STATUS","INPROCESS","In Process","ACTV",5,Now(),Now(),5,1),
                           (6,"BATCH_STATUS","HOLD","Hold","ACTV",7,Now(),Now(),7,2),
                           (7,"BATCH_STATUS","COMPL","Completed","ACTV",9,Now(),Now(),9,3),
                           (8,"DOC_STATUS","RCEVD","Received","ACTV",10,Now(),Now(),10,3);
                           
SELECT * FROM APP_PARAMETERS;

INSERT INTO Mentor (Id,Name,Mentor_Type,Lab_Id,Status,Creator_Stamp,USER_ID) VALUES
				   (1,"Sunil","Lead/Practice head",501,"ACTV",Now(),1),
                   (2,"Venkat","Support Mentor",505,"ACTV",Now(),2),
                   (3,"Pooja","Support Mentor",503,"ACTV",Now(),3),
                   (4,"Aishwarya","Buddy Mentor",505,"ACTV",Now(),4),
                   (5,"Gunjan","Lead/Practice head",501,"ACTV",Now(),5),
                   (6,"Nagendra","Support Mentor",505,"ACTV",Now(),7),
                   (7,"Roshni","Support Mentor",503,"ACTV",Now(),9),
                   (8,"Sudhakar","Lead/Practice head",501,"ACTV",Now(),10);
                   
SELECT * FROM MENTOR;

INSERT INTO Mentor_Ideation_Map (Id,Parent_Mentor_Id,Mentor_Id,Status,Creator_Stamp,USER_ID) VALUES
								(01,1,3,"ACTV",Now(),1),
                                (02,1,3,"ACTV",Now(),2),
                                (03,2,6,"ACTV",Now(),3),
                                (04,8,7,"ACTV",Now(),4),
                                (05,8,7,"ACTV",Now(),5),
                                (06,5,3,"ACTV",Now(),7),
                                (07,5,6,"ACTV",Now(),9),
                                (08,1,7,"ACTV",Now(),10);

SELECT * FROM MENTOR_IDEATION_MAP;
                   
INSERT INTO Mentor_Tech_Stack (Id,Mentor_Id,Tech_Stack_Id,Status,Creator_Stamp,USER_ID) VALUES
							  (1,1,301,"ACTV",Now(),1),
                              (2,2,302,"ACTV",Now(),2),
                              (3,3,303,"ACTV",Now(),3),
                              (4,4,304,"ACTV",Now(),4),
                              (5,5,305,"ACTV",Now(),5),
                              (6,6,306,"ACTV",Now(),7),
                              (7,7,307,"ACTV",Now(),9),
                              (8,8,308,"ACTV",Now(),10);

SELECT * FROM MENTOR_TECH_STACK;

INSERT INTO Tech_Stack (Id,Tech_Name,Image_Path,Framework,Cur_Status,Creator_Stamp,USER_ID) VALUES
					   (301,"Java","path/to/java.jpg","Selenium","Active",Now(),1),
                       (302,"Java","path/to/java.jpg","Selenium","Active",Now(),2),
                       (303,"UI/UX","path/to/uiux.jpg","Figma","Active",Now(),3),
                       (304,"Java","path/to/java.jpg","Selenium","Active",Now(),4),
                       (305,"Java","path/to/java.jpg","Selenium","Active",Now(),5),
                       (306,"Python","path/to/python.jpg","Django","Active",Now(),7),
                       (307,"Java","path/to/java.jpg","Angular","Active",Now(),9),
                       (308,"SQL","path/to/sql.jpg","Workbench","Active",Now(),10);

SELECT * FROM TECH_STACK;

INSERT INTO Tech_Type (Id,Type_Name,Cur_Status,Creator_Stamp,USER_ID) VALUES
					  (401,"Automation","Active",Now(),1),
                      (402,"Automation","Active",Now(),2),
                      (403,"Graphics","Active",Now(),3),
                      (404,"Automation","Active",Now(),4),
                      (405,"Automation","Active",Now(),5),
                      (406,"Developer","Active",Now(),7),
                      (407,"Automation","Active",Now(),9),
                      (408,"Developer","Active",Now(),10);
                      
SELECT * FROM TECH_TYPE;

INSERT INTO Lab (Id,Name,Location,Address,Status,Creator_Stamp,USER_ID) VALUES
				(501,"BL Mumbai","Mumbai","Address of Mumbai BL","Active",Now(),1),
                (502,"BL Mumbai","Mumbai","Address of Mumbai BL","Active",Now(),2),
                (503,"BL Pune","Pune","Address of Pune BL","Active",Now(),3),
                (504,"BL Pune","Pune","Address of Pune BL","Active",Now(),4),
                (505,"BL Bengalore","Bengalore","Address of Bengalore BL","Active",Now(),5),
                (506,"BL Bengalore","Bengalore","Address of Bengalore BL","Active",Now(),7),
                (507,"BL Mumbai","Mumbai","Address of Mumbai BL","Active",Now(),9),
                (508,"BL Pune","Pune","Address of Pune BL","Active",Now(),10);

SELECT * FROM LAB;

INSERT INTO Lab_Threshold (Id,Lab_Id,Lab_Capacity,Lead_Threshold,Ideation_Engg_Threshold,Buddy_Engg_Threshold,Status,Creator_Stamp,USER_ID) VALUES 
						  (1,501,120,19,9,8,"ACTV",Now(),1),
                          (2,502,120,19,8,9,"ACTV",Now(),2),
                          (3,503,57,13,7,9,"ACTV",Now(),3),
                          (4,504,57,13,8,11,"ACTV",Now(),4),
                          (5,505,38,11,7,8,"ACTV",Now(),5),
                          (6,506,38,11,8,7,"ACTV",Now(),7),
                          (7,507,120,19,9,8,"ACTV",Now(),9),
                          (8,508,57,13,8,9,"ACTV",Now(),10);
                          
SELECT * FROM LAB_THRESHOLD;

INSERT INTO Company_Requirement (Id,Company_Id,Requested_Month,City,Is_Doc_Verification,Requirement_Doc_Path,No_Of_Engg,Tech_Stack_Id,Tech_Type_Id,Maker_Program_Id,Lead_Id,Ideation_Engg_Id,Buddy_Engg_Id,Special_Remark,Status,Creator_Stamp,USER_ID) VALUES 
								(111,101,'2024-08-03',"Mumbai",true,"/path/to/doc.pdf",12,301,401,001,1,2,4,"Good in Java","Active",Now(),1),
                                (222,102,'2023-11-12',"Mumbai",true,"/path/to/doc.pdf",15,302,402,002,1,2,4,"Good in Logic","Active",Now(),2),
                                (333,103,'2024-01-19',"Bengalore",true,"/path/to/doc.pdf",23,303,403,003,8,7,4,"Good in Graphics","Active",Now(),3),
                                (444,104,'2019-12-28',"Pune",true,"/path/to/doc.pdf",28,304,404,004,5,3,4,"Good in Logic","Active",Now(),4),
                                (555,105,'2023-08-03',"Navi Mumbai",true,"/path/to/doc.pdf",14,305,405,005,5,3,4,"Good in Java","Active",Now(),5),
                                (666,106,'2024-04-22',"Mumbai",true,"/path/to/doc.pdf",12,306,406,006,1,2,4,"Good in Python","Active",Now(),7),
                                (777,107,'2023-10-02',"Mumbai",true,"/path/to/doc.pdf",23,307,407,007,8,7,4,"Good in Logic","Active",Now(),9),
                                (888,108,'2024-02-14',"Navi Mumbai",true,"/path/to/doc.pdf",12,308,408,008,1,2,4,"Good in SQL","Active",Now(),10);
                                
SELECT * FROM COMPANY_REQUIREMENT;

INSERT INTO Candidate_Stack_Assignment (Id,Requirement_Id,Candidate_Id,Assign_Date,Complete_Date,Status,Creator_Stamp,USER_ID) VALUES  
									   (01,111,1001,'2024-03-18','2024-05-18',"Completed",Now(),1),
                                       (02,222,1002,'2024-04-18','2024-07-18',"Pending",Now(),2),
                                       (03,333,1003,'2019-08-05','2019-12-03',"Completed",Now(),3),
                                       (04,444,1004,'2023-06-19','2023-11-10',"Completed",Now(),4),
                                       (05,555,1005,'2024-01-03','2024-05-18',"Completed",Now(),5),
                                       (06,666,1006,'2023-11-04','2024-03-15',"Completed",Now(),7),
                                       (07,777,1007,'2024-02-13','2024-06-27',"Pending",NOw(),9),
                                       (08,888,1008,'2024-02-13','2024-06-27',"Pending",Now(),10);
                                       
SELECT * FROM CANDIDATE_STACK_ASSIGNMENT;