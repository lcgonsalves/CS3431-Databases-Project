CREATE TABLE Employee(
id number(20) NOT NULL,
first_name varchar2(30) NOT NULL,
last_name varchar2(30) NOT NULL,
job_title varchar2(100),
salary number(10),
office_num number(7),
CONSTRAINT employee_pk PRIMARY KEY (id)
);

CREATE TABLE GeneralManager(
employee_id number(20) NOT NULL,
CONSTRAINT employee_id_fk FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE DivisionalManager(
employee_id number(20) NOT NULL,
general_manager_id number(20) NOT NULL,
CONSTRAINT employee_id_fk FOREIGN KEY (employee_id) REFERENCES Employee(id),
CONSTRAINT manager_fk FOREIGN KEY (general_manager_id) REFERENCES GeneralManager(employee_id)
);

CREATE TABLE Regular(
employee_id number(20) NOT NULL,
divisional_manager_id number(20) NOT NULL,
CONSTRAINT employee_id_fk FOREIGN KEY (employee_id) REFERENCES Employee(id),
CONSTRAINT manager_fk FOREIGN KEY (divisional_manager_id) REFERENCES DivsionalManager(employee_id)
);

CREATE TABLE Room(
room_num number(10) NOT NULL,
is_occupied number(1) NOT NULL,
CONSTRAINT room_number_pk PRIMARY KEY (room_num)
);

CREATE TABLE RoomServices(
room_num number(10) NOT NULL,
service varchar2(100) NOT NULL,
CONSTRAINT room_num_fk FOREIGN KEY REFERENCES Room (room_num)
);

CREATE TABLE Permissions(
employee_id number(20) NOT NULL,
room_id number(10) NOT NULL,
permission varchar2(200) NOT NULL,
CONSTRAINT employee_id_fk FOREIGN KEY (employee_id) REFERENCES Employee(id),
CONSTRAINT room_id_fk FOREIGN KEY (room_id) REFERENCES Room(room_num)
);

CREATE TABLE Doctor(
id number(20) NOT NULL,
specialty varchar2(100),
gender char(10),
first_name varchar2(30) NOT NULL,
last_name varchar2(30) NOT NULL,
CONSTRAINT doctor_id_pk PRIMARY KEY(id)
);

CREATE TABLE Patient(
ssn number(10) NOT NULL,
address varchar2(50) NOT NULL,
tel_number number(14),
first_name varchar2(30) NOT NULL,
last_name varchar2(30) NOT NULL,
CONSTRAINT patient_ssn_pk PRIMARY KEY(ssn)
);

CREATE TABLE FuturePatientVisitDates(
patient_ssn number(10) NOT NULL,
date char(20) NOT NULL,
CONSTRAINT patient_ssn_fk FOREIGN KEY (patient_ssn) REFERENCES Patient(ssn)
);

CREATE TABLE Admission(
id number(30) NOT NULL,
patient number(10) NOT NULL,
check_in TIMESTAMP(0),
check_out TIMESTAMP(0),
cost number(12),
insurance_coverage float(7),
CONSTRAINT admission_id_pk PRIMARY KEY(id)
);

CREATE TABLE AdmittedPatients(
patient_ssn number(10) NOT NULL,
admission_id number(30) NOT NULL,
CONSTRAINT patient_ssn_fk FOREIGN KEY (patient_ssn) REFERENCES Patient(ssn),
CONSTRAINT admission_id_fk FOREIGN KEY (admission_id) REFERENCES Admission(id)
);

CREATE TABLE RoomStay(
admission_id number(30) NOT NULL,
room_num number(10) NOT NULL,
start_time TIMESTAMP(0),
end_time TIMESTAMP(0),
CONSTRAINT admission_id_fk FOREIGN KEY (admission_id) REFERENCES Admission(id),
CONSTRAINT room_num_fk FOREIGN KEY (room_num) REFERENCES Room(room_num)
);

CREATE TABLE Examination(
doctor_id number(20) NOT NULL,
admission_id number(30) NOT NULL,
comments varchar2(5000),
CONSTRAINT doctor_id_fk FOREIGN KEY (doctor_id) REFERENCES Doctor(id),
CONSTRAINT admission_id_fk FOREIGN KEY (admission_id) REFERENCES Admission(id)
);

CREATE TABLE Type(
type_id number(20) NOT NULL,
model varchar2(50) NOT NULL,
description varchar2(1000),
instructions varchar2(5000),
num_units number(20) NOT NULL,
CONSTRAINT type_id_pk PRIMARY KEY(type_id)
);

CREATE TABLE Equipment(
serial_num varchar2(30) NOT NULL,
type_id number(20) NOT NULL,
year_of_purchase char(4),
inspection TIMESTAMP(0),
room_num number(10) NOT NULL,
CONSTRAINT serial_num_pk PRIMARY KEY(serial_num),
CONSTRAINT type_id_fk FOREIGN KEY (type_id) REFERENCES Type(type_id),
CONSTRAINT room_num_fk FOREIGN KEY (room_num) REFERENCES Room(room_num)
);
