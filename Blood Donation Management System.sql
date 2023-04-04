CREATE DATABASE SRM_Hospital_blood_donation_database;
USE SRM_Hospital_blood_donation_database;
CREATE TABLE donors_lists(
Donor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(55),
Gender VARCHAR(66),
Aadhar_Number VARCHAR(20),
Age INT,
Blood_Group VARCHAR(68),
Blood_Pressure VARCHAR(29),
Sugar_Level VARCHAR(29), 
Alcohol VARCHAR(15),
HIV VARCHAR(10),
Address VARCHAR(1000),
Phone_Number VARCHAR(20),
Date_Time DATETIME);
INSERT INTO donors_lists(NAME,Gender,Aadhar_Number,Age,Blood_Group,Blood_Pressure,Sugar_Level,Alcohol,HIV,Address,Phone_Number,Date_Time)
VALUES("Yokesh","Male","1234 4321 7676",28,"B+","Normal","Normal","Not Consumed","Negative","45 gandhi street KK Nagar Chennai","9764738611","2022-12-24 08:55:10"),
("Kamesh","Male","1276 8998 4656",27,"B-","Normal","Normal","Not Consumed","Negative","23 anna street Pudhupet Chennai","9765496522","2022-12-25 07:44:33"),
("Aravindh","Male","8787 4544 7676",29,"O+","Normal","Normal","Not Consumed","Negative","76 ganapathy street Anna Nagar Chennai","9664484533","2022-06-24 05:30:22"),
("Vignesh","Male","5565 8878 3576",30,"O-","Normal","Normal","Not Consumed","Negative","38  Vannarpet Chennai","8124436433","2022-04-02 07:55:33");
INSERT INTO donors_lists(NAME,Gender,Aadhar_Number,Age,Blood_Group,Blood_Pressure,Sugar_Level,Alcohol,HIV,Address,Phone_Number,Date_Time)
VALUES("Kamala","Female","6556 2324 4344",32,"A+","Normal","Normal","Not Consumed","Negative","74 bajana street Kanchipuram","8064568055","2022-07-22 08:44:20"),
("Nithish","Male","5627 7612 9877",34,"O+","Normal","Normal","Not Consumed","Positive","23 Podaturpet","6787686687","2022-08-12 09:33:24"),
("Surya","Male","6544 6478 2234",35,"A-","Moderate","Normal","Consumed","Negative","33 Tirupathi","9765876549","2022-09-16 10:44:40"),
("Soniya","Female","1666 6468 8467",45,"O+","Normal","Moderate","Not Consumed","Negative","44 Chennai","9876547698","2022-05-08 11:43:07"),
("Nivetha","Female","6665 8756 3864",33,"A+","Normal","Normal","Not Consumed","Negative","55 Tiruttani","8765438976","2022-05-08 12:04:07"),
("Pavi","Female","5778 1886 9864",45,"O+","Normal","Moderate","Not Consumed","Negative","77 Tiruttani","9876543569","2022-07-12 03:05:08"),
("Mithish","Male","7119 2735 1198",45,"B+","Normal","Moderate","Not Consumed","Negative","88 Thambaram","7898765687","2022-06-18 07:08:23"),
("Balu","Male","4766 2387 2657",35,"O+","Normal","Normal","Not Consumed","Negative","99 Thiruvallur","6789876567","2022-07-12 12:06:55"),
("Saranya","Female","1654 9879 0853",33,"A+","Normal","Normal","Not Consumed","Negative","77 Arakkonam","8798765678","2022-08-12 08:08:34"),
("Sumathi","Female","3443 6543 7647",55,"O-","Normal","Normal","Not Consumed","Negative","88 Sholigar","6789214578","2022-12-09 12:09:35"),
("Vicky","Male","5654 7764 8667",35,"A+","Normal","Normal","Consumed","Negative","66 R.K.PET","6754326765","2022-06-06 05:06:34"),
("Sathish","Male","8421 5665 2642",26,"O-","Normal","Normal","Not Consumed","Negative","77 Valaja","6578987658","2022-05-12 06:34:34"),
("Vijay","Male","7432 9853 0857",44,"A+","Normal","Normal","Not Consumed","Negative","88 Kanchipuram","6785678954","2022-07-23 11:23:45"),
("Ajith","Male","4354 8875 0860",45,"B+","Normal","Normal","Not Consumed","positive","76 Madhurai","9854788790","2022-04-26 10:45:02"),
("Kamlesh","Male","0970 6460 7603",33,"O-","Normal","Normal","Not Consumed","Negative","67 Theni","8754383789","2022-03-30 09:45:38"),
("Kavya","Female","6745 9086 7894",22,"A+","Normal","Normal","Not Consumed","Negative","24 Anna Nagar Chennai","8978766434","2022-05-25 12:50:30");
SELECT * FROM donors_lists;


CREATE TABLE Blood_Stocks(Serial_Number INT NOT NULL AUTO_INCREMENT PRIMARY KEY,Blood_Type VARCHAR(10),Number_of_Stocks VARCHAR(20));
INSERT INTO Blood_Stocks(Blood_Type,Number_of_Stocks)
VALUES("A+","6 pints"),
("A-","3 Pints"),
("B+","4 Pints"),
("B-","2 Pints"),
("AB+","2 Pints"),
("AB-","1 Pint"),
("O+","5 Pints"),
("O-","5 Pints");
SELECT * FROM Blood_Stocks;

UPDATE donors_lists SET NAME="Manoj" WHERE NAME="Yokesh";
SELECT * FROM donors_lists;
SELECT REPLACE(NAME,"Aravindh","Selvem")FROM donors_lists;
SELECT * FROM donors_lists WHERE age=(SELECT MAX(age) FROM donors_lists);
SELECT * FROM donors_lists WHERE age=(SELECT MIN(age) FROM donors_lists);
SELECT * FROM Blood_Stocks WHERE Number_of_Stocks=(SELECT MAX(Number_of_Stocks) FROM Blood_Stocks);
SELECT * FROM Blood_Stocks WHERE Number_of_Stocks=(SELECT MIN(Number_of_Stocks) FROM Blood_Stocks);
SELECT * FROM donors_lists WHERE Blood_Group LIKE"B%";
SELECT * FROM donors_lists WHERE Blood_Group LIKE"O%";
SELECT * FROM donors_lists WHERE Blood_Group LIKE"A%";
SELECT * FROM donors_lists WHERE Gender LIKE"M%";
SELECT * FROM donors_lists WHERE Gender LIKE"F%";
SELECT * FROM donors_lists WHERE age>30;
SELECT * FROM donors_lists WHERE age<30;


SELECT * FROM donors_lists WHERE Alcohol="consumed";
DELETE FROM donors_lists WHERE alcohol="consumed";
SELECT * FROM donors_lists;




SELECT * FROM donors_lists WHERE HIV="Positive";
DELETE FROM donors_lists WHERE HIV="Positive";
SELECT * FROM donors_lists;