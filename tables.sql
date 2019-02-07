CREATE TABLE Employee(
id number(20) NOT NULL,
first_name varchar2(20) NOT NULL,
last_name varchar2(20) NOT NULL,
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


