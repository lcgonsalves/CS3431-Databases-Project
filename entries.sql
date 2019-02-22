----Create Patients----
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('000-00-0000','100 Institute Road, Worcester, MA, 01609',15555555555,'John','Doe');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('000-00-0001','101 Institute Road, Worcester, MA, 01609',15555555556,'Mark','Key');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('000-00-0002','102 Institute Road, Worcester, MA, 01609',15555555557,'Fan','Plug');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('000-00-0003','103 Institute Road, Worcester, MA, 01609',15555555558,'Jane','Board');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('000-00-0004','104 Institute Road, Worcester, MA, 01609',15555555559,'Suzzy','Cup');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('000-00-0005','105 Institute Road, Worcester, MA, 01609',15555555510,'Jasmine','Bags');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('000-00-0006','106 Institute Road, Worcester, MA, 01609',15555555511,'Jenna','Brown');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('000-00-0007','107 Institute Road, Worcester, MA, 01609',15555555512,'Jocelyn','Dell');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('000-00-0008','108 Institute Road, Worcester, MA, 01609',15555555513,'Leo','Core');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('000-00-0009','109 Institute Road, Worcester, MA, 01609',15555555514,'Ham','Sandwich');
INSERT INTO Patient (ssn,address,tel_number,first_name,last_name)
VALUES ('111-22-3333','109 Institute Road, Worcester, MA, 01609',15555555514,'Care','Aboutme');

----Create Doctors----
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (1,'Heart','Male','Raymond','Dunn');
INSERT INTO Doctor (id,specialty,gender,first_name,last_name)
VALUES (2,'Brain','Female','Marissa','Gordan');
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

----Create Permissions----
INSERT INTO Permissions (employee_id,room_id, permission) VALUES (1,1,'Clean it');
INSERT INTO Permissions (employee_id,room_id, permission) VALUES (1,2,'Wipe it');
INSERT INTO Permissions (employee_id,room_id, permission) VALUES (1,3,'Wash it');
INSERT INTO Permissions (employee_id,room_id, permission) VALUES (1,4,'Soak it');
INSERT INTO Permissions (employee_id,room_id, permission) VALUES (2,1,'Clean it');

----Create Admissions----
INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0001, '000-00-0007', TO_TIMESTAMP ('10-Sep-01 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('10-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 350, 0.8, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0002, '000-00-0007', TO_TIMESTAMP ('10-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('10-Sep-02 15:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 500, 0.5, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0003, '000-00-0007', TO_TIMESTAMP ('10-Sep-03 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('10-Sep-05 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 200, 0.7, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0004, '000-00-0003', TO_TIMESTAMP ('10-Sep-04 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('10-Sep-08 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 670, 0.5, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0005, '000-00-0003', TO_TIMESTAMP ('10-Sep-05 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('10-Oct-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 10000, 0.7, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0006, '000-00-0002', TO_TIMESTAMP ('10-Sep-06 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('11-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 670, 0.5, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0007, '000-00-0002', TO_TIMESTAMP ('10-Sep-07 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('12-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 10000, 0.7, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0008, '000-00-0001', TO_TIMESTAMP ('10-Sep-08 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('13-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 456, 0.8, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0009, '000-00-0001', TO_TIMESTAMP ('10-Sep-09 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('14-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 6666, 0.5, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0010, '000-00-0001', TO_TIMESTAMP ('10-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('15-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 69.45, 0.2,
TO_TIMESTAMP ('15-Oct-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'));

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0011, '000-00-0004', TO_TIMESTAMP ('10-Sep-11 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('10-Sep-12 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 456, 0.8, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0012, '000-00-0004', TO_TIMESTAMP ('10-Sep-12 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('10-Sep-25 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 45, 0.5,
TO_TIMESTAMP ('10-Sep-13 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'));

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0013, '000-00-0004', TO_TIMESTAMP ('10-Sep-13 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('10-Sep-26 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 69.45, 0.2, null);

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0014, '111-22-3333', TO_TIMESTAMP ('10-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('23-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 45, 0.5,
TO_TIMESTAMP ('26-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'));

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0015, '111-22-3333', TO_TIMESTAMP ('26-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('27-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 45, 0.5,
TO_TIMESTAMP ('28-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'));

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0016, '111-22-3333', TO_TIMESTAMP ('29-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('29-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 45, 0.5,
TO_TIMESTAMP ('30-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'));

INSERT INTO Admission (id, patient, check_in, check_out, cost, insurance_coverage, future_visit_date)
VALUES (0017, '111-22-3333', TO_TIMESTAMP ('1-Oct-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('1-Oct-10 19:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'), 46, 0.6,
TO_TIMESTAMP ('24-Oct-11 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF')); --most recent admission

----Create Examinations----
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0001, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0002, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0003, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0004, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0005, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0006, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0007, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0008, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0009, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0010, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0011, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0012, 'Subpar exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (1,0012, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0001, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0002, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0003, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0004, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0005, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0006, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0007, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0008, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0009, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0016, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0011, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (2,0012, 'Subpar exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (4,0013, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (3,0014, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (4,0015, 'Decent exam');
INSERT INTO Examination (doctor_id,admission_id,comments) VALUES (4,0010, 'Decent exam');

----Create Equipment Type----
INSERT INTO Type (type_id,model,description,instructions,num_units)
VALUES (1,'Acura', 'Decent equipment','Start it',10);
INSERT INTO Type (type_id,model,description,instructions,num_units)
VALUES (2,'Civic', 'Use it often','Click it',20);
INSERT INTO Type (type_id,model,description,instructions,num_units)
VALUES (3,'Accord', 'Will last forever','Drive it',30);

----Create Equipment----
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('AC-2018',1,2018,TO_TIMESTAMP ('10-Sep-14 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),1);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('AC-2004',1,2019,TO_TIMESTAMP ('10-Sep-15 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),2);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('AC-2008',1,2016,TO_TIMESTAMP ('10-Sep-16 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),2);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('CV-2018',2,2018,TO_TIMESTAMP ('10-Sep-17 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),2);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('CV-2019',2,2019,TO_TIMESTAMP ('10-Sep-18 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),3);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('CV-2000',2,2013,TO_TIMESTAMP ('10-Sep-19 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),6);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('AD-2014',3,2013,TO_TIMESTAMP ('10-Sep-20 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),7);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('AD-2011',3,2015,TO_TIMESTAMP ('10-Sep-21 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),7);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('AD-1997',3,2011,TO_TIMESTAMP ('10-Sep-22 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),10);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('A01-02X',3,2010,TO_TIMESTAMP ('10-Sep-22 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),10);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('A01-01T',2,2011,TO_TIMESTAMP ('10-Sep-22 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),10);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('A01-05U',2,2010,TO_TIMESTAMP ('10-Sep-22 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),10);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('A01-04G',2,2011,TO_TIMESTAMP ('10-Sep-22 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),10);
INSERT INTO Equipment (serial_num,type_id,year_of_purchase,inspection,room_num)
VALUES ('A01-09J',2,2010,TO_TIMESTAMP ('10-Sep-22 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),10);

INSERT INTO AdmittedPatients (patient_ssn, admission_id) VALUES ('000-00-0001', 0008);
INSERT INTO AdmittedPatients (patient_ssn, admission_id) VALUES ('000-00-0001', 0009);
INSERT INTO AdmittedPatients (patient_ssn, admission_id) VALUES ('000-00-0001', 0010);

INSERT INTO RoomStay (admission_id, room_num, start_time, end_time) VALUES (0008, 3, TO_TIMESTAMP ('10-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('15-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'));
INSERT INTO RoomStay (admission_id, room_num, start_time, end_time) VALUES (0009, 3, TO_TIMESTAMP ('10-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('15-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'));
INSERT INTO RoomStay (admission_id, room_num, start_time, end_time) VALUES (0010, 3, TO_TIMESTAMP ('10-Sep-10 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'),
TO_TIMESTAMP ('15-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF'));