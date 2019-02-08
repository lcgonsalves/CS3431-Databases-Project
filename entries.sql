----Create Patients----
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES (000000000,'100 Institute Road, Worcester, MA, 01609',15555555555,'John','Doe');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES (000000001,'101 Institute Road, Worcester, MA, 01609',15555555556,'Mark','Key');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES (000000002,'102 Institute Road, Worcester, MA, 01609',15555555557,'Fan','Plug');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES (000000003,'103 Institute Road, Worcester, MA, 01609',15555555558,'Jane','Board');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES (000000004,'104 Institute Road, Worcester, MA, 01609',15555555559,'Suzzy','Cup');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES (000000005,'105 Institute Road, Worcester, MA, 01609',15555555510,'Jasmine','Bags');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES (000000006,'106 Institute Road, Worcester, MA, 01609',15555555511,'Jenna','Brown');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES (000000007,'107 Institute Road, Worcester, MA, 01609',15555555512,'Jocelyn','Dell');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES (000000008,'108 Institute Road, Worcester, MA, 01609',15555555513,'Leo','Core');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES (000000009,'109 Institute Road, Worcester, MA, 01609',15555555514,'Ham','Sandwich');

----Create Doctors----
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (1,'Heart','Male','Raymond','Dunn');
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (2,'Brain','Male','Josh','Gordan');
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (3,'Hand','Male','Tom','Brady');
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (4,'Leg','Male','Julian','Edelman');
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (5,'Fingers','Male','Randy','Moss');
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (6,'Shoulder','Female','Sammy','Fun');
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (7,'Elbow','Female','Tammy','Shoe');
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (8,'Neck','Female','Julia','Finn');
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (9,'Blood','Female','Oprah','Winfrey');
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (10,'Toes','Female','Alexis','Woods');

----Create Rooms----

----Create Employees----
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (1,'Alex','Smith','Cleaner I',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (2,'John','Smith','Cleaner II',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (3,'Mary','Smith','Cleaner III',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (4,'Paul','Smith','Cleaner II',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (5,'Stacy','Smith','Cleaner I',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (6,'Bob','Smith','Wiper I',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (7,'Jim','Smith','Wiper II',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (8,'Ryan','Smith','Wiper III',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (9,'George','Smith','Sweeper I',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (10,'Matt','Smith','Sweeper II',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (11,'Phil','Smith','Sweeper III',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (12,'Jan','Smith','Scrubber I',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (13,'John','Smith','Scrubber II',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (14,'Ron','Smith','Scrubber III',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (15,'Sam','Smith','Washer I',100000,0);
INSERT INTO Employee (id,first_name,last_name,job_title,salary,office_num)
VALUES (16,'Lexi','Smith','Washer II',100000,0);

----Create Specific Employees----
--Create GeneralManager--
INSERT INTO GeneralManager (gm_id,employee_id) VALUES (1,1);
INSERT INTO GeneralManager (gm_id,employee_id) VALUES (2,2);

--Create DivisionalManager--
INSERT INTO DivisionalManager (dm_id,employee_id,general_manager_id) VALUES (1,3,1);
INSERT INTO DivisionalManager (dm_id,employee_id,general_manager_id) VALUES (2,4,1);
INSERT INTO DivisionalManager (dm_id,employee_id,general_manager_id) VALUES (3,5,2);
INSERT INTO DivisionalManager (dm_id,employee_id,general_manager_id) VALUES (4,6,2);

--Create Regular--
INSERT INTO Regular (r_id,employee_id,divisional_manager_id) VALUES (1,7,1);
INSERT INTO Regular (r_id,employee_id,divisional_manager_id) VALUES (2,8,1);
INSERT INTO Regular (r_id,employee_id,divisional_manager_id) VALUES (3,9,1);
INSERT INTO Regular (r_id,employee_id,divisional_manager_id) VALUES (4,10,2);
INSERT INTO Regular (r_id,employee_id,divisional_manager_id) VALUES (5,11,2);
INSERT INTO Regular (r_id,employee_id,divisional_manager_id) VALUES (6,12,2);
INSERT INTO Regular (r_id,employee_id,divisional_manager_id) VALUES (7,13,3);
INSERT INTO Regular (r_id,employee_id,divisional_manager_id) VALUES (8,14,3);
INSERT INTO Regular (r_id,employee_id,divisional_manager_id) VALUES (9,15,3);
INSERT INTO Regular (r_id,employee_id,divisional_manager_id) VALUES (10,16,4);

----Create Rooms----
INSERT INTO Room (room_num,is_occupied) VALUES (1,0);
INSERT INTO Room (room_num,is_occupied) VALUES (2,0);
INSERT INTO Room (room_num,is_occupied) VALUES (3,1);
INSERT INTO Room (room_num,is_occupied) VALUES (4,0);
INSERT INTO Room (room_num,is_occupied) VALUES (5,0);
INSERT INTO Room (room_num,is_occupied) VALUES (6,1);
INSERT INTO Room (room_num,is_occupied) VALUES (7,0);
INSERT INTO Room (room_num,is_occupied) VALUES (8,0);
INSERT INTO Room (room_num,is_occupied) VALUES (9,1);
INSERT INTO Room (room_num,is_occupied) VALUES (10,1);

----Create Room Services----
INSERT INTO RoomServices (room_num,service) VALUES (1,'Massage');
INSERT INTO RoomServices (room_num,service) VALUES (1,'Oral Surgery');
INSERT INTO RoomServices (room_num,service) VALUES (1,'Vasectomy');
INSERT INTO RoomServices (room_num,service) VALUES (2,'X-Rays');
INSERT INTO RoomServices (room_num,service) VALUES (2,'MRI');
INSERT INTO RoomServices (room_num,service) VALUES (2,'CT-Scan');
INSERT INTO RoomServices (room_num,service) VALUES (3,'Stitching');
INSERT INTO RoomServices (room_num,service) VALUES (3,'ICU');
INSERT INTO RoomServices (room_num,service) VALUES (3,'Ultra-sound');

----Create Equipment----





----Create Admissions----
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0001, 000000007, "2005-01-22[T20:28:00[.00]]", "2005-01-23[T20:28:00[.00]]", 350, 0.8);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0002, 000000007, "2007-01-20[T20:28:00[.00]]", "2005-01-23[T20:28:00[.00]]", 500, 0.5);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0003, 000000007, "2007-03-22[T10:28:00[.00]]", "2008-01-23[T20:28:00[.00]]", 200, 0.7);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0004, 000000003, "2007-01-20[T20:28:00[.00]]", "2008-01-23[T20:28:00[.00]]", 670, 0.5);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0005, 000000003, "2007-03-22[T10:28:00[.00]]", "2008-01-23[T20:28:00[.00]]", 10000, 0.7);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0006, 000000002, "2007-05-20[T20:28:00[.00]]", "2008-01-23[T20:28:00[.00]]", 670, 0.5);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0007, 000000002, "2007-06-22[T10:28:00[.00]]", "2008-01-23[T20:28:00[.00]]", 10000, 0.7);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0008, 000000001, "2002-01-22[T20:28:00[.00]]", "2005-01-23[T20:28:00[.00]]", 456, 0.8);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0009, 000000001, "2002-01-20[T20:28:00[.00]]", "2005-01-23[T20:28:00[.00]]", 6666, 0.5);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0010, 000000001, "2019-03-22[T10:28:00[.00]]", "2019-03-25[T10:28:00[.00]]", 69.45, 0.2);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0011, 000000004, "2012-01-22[T20:28:00[.00]]", "2012-12-22[T20:28:00[.00]]", 456, 0.8);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0012, 000000004, "2013-01-20[T20:28:00[.00]]", "2013-02-10[T20:28:00[.00]]", 45, 0.5);
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage)
VALUES (0013, 000000004, "2019-05-22[T10:28:00[.00]]", "2019-05-25[T10:28:00[.00]]", 69.45, 0.2);


