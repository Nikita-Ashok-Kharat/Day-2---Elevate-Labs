use hostel;

insert into hostel(name,hostel_type,no_of_rooms,no_of_students,capacity,facility) values ("G1","Girls",5,0,20,"Ground,Reading Hall");

select * from hostel;

insert into hostel(name,hostel_type,no_of_rooms,no_of_students,capacity,facility)values("B1","boys",4,0,16,"Ground, Gym, Reading hall"),
("G2","Girls",3,0,12,"Gym, Mess"),
("G3","Girls",5,0,20,"Ground, Mess"),("B2","Boys",5,0,25,"Tv,Mineral Water,Mess");

insert into room(room_id,capacity,floor,hostel_id)values (1,4,"Ground",1);

insert into room(room_id,capacity,floor,hostel_id)values (2,4,"Ground",1);

insert into room(room_id,capacity,floor,hostel_id)values (3,4,"First",1);

insert into room(room_id,capacity,floor,hostel_id)values (4,4,"First",1);

insert into room(room_id,capacity,floor,hostel_id)values (5,4,"Second",1);

select * from room;

DELETE FROM room WHERE room_id=5;
select * from room;

insert into room(room_id,capacity,floor,hostel_id)values (5,4,"Second",1);
select * from room;

insert into mess values(1,"M1","Lunch & Dinner",2000);
select * from mess;
insert into mess values(2,"M2","Lunch & Dinner(tiffin)",2500),(3,"M3","Breakfast,Lunch,Dinner",4000),(4,"M4","Breakfast,dinner,lunch(tiffin)",4500),(5,"M5","Lunch & Dinner",2000),(6,"M6","Lunch & Dinner(tiffin)",2500),(7,"M7","Breakfast,Lunch,Dinner",4000),(8,"M8","Brakfast,Lunch,Dinner(tiffin)",4500),(9,"M9","Lunch & Dinner",2000),(10,"M10","Lunch & Dinner(tiffin)",2500);


insert into student(prn_no,stud_name,stud_stream,department,addyear,address,phone_no,email_id,parents_no,room_id,dob,gender,blood_group,joining_date,hostel_id,mess_id)values
("UIT15M1001","Dhawan Vaun","Junior","Commerse","Null","Shirdi",'8800099222',"varun@gmail.com",'8811100777',2,'2004-01-06',"Male","B+ve",'2020-12-06',2,2);

Insert into student(prn_no,stud_name,stud_stream,department,addyear,address,phone_no,email_id,parents_no,room_id,dob,gender,blood_group,joining_date,hostel_id,mess_id)values ("UIT12F1005","Bhatt Alia","D.pharm","Pharmacy","1st year","Nashik",'9933311000',"alia25@gmail.com",'7773332211',4,'2002-02-06',"Male","A+ve",'2019-07-12',3,1), ("UIT17M1007","Kapoor Ranbir","Diploma","Mechanical","3rd year","Nagar",'9944332211',"ranbir@gmail.com",'7700221133',4 ,'2000-01-06',"Male","B-ve",'2020-12-07',3,4);

UPDATE student
SET email_id = 'ranbirkapoor@gmail.com'
WHERE prn_no = 'UIT17M1007';
select * from student;

SELECT * FROM student WHERE student_id IS NULL;

ALTER TABLE student
ALTER address SET DEFAULT 'Pune';

Insert into student(prn_no,stud_name,stud_stream,department,addyear,phone_no,email_id,parents_no,room_id,dob,gender,blood_group,joining_date,hostel_id,mess_id)values ("UIT12F10015","Alia","D.pharm","Pharmacy","1st year",'9933311000',"alia5@gmail.com",'7773302211',4,'2002-02-06',"Male","A+ve",'2019-07-12',3,1), ("UIT17M10057","Kapoor","Diploma","Mechanical","3rd year",'9044332211',"ranbirk@gmail.com",'7700221133',4 ,'2000-01-06',"Male","B-ve",'2020-12-07',3,4);
