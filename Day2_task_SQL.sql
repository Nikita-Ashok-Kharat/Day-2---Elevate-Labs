use hostel

/*
1.Use INSERT INTO for adding rows
*/

INSERT INTO hostel(name,hostel_type,no_of_rooms,no_of_students,capacity,facility)
VALUES("G1","Girls",5,0,20,"Ground, Reading hall");

-- Use select query to retrieve records from table hostel
select * from hostel

INSERT INTO hostel(name,hostel_type,no_of_rooms,no_of_students,capacity,facility)
VALUES("B1","boys",4,0,16,"Ground, Gym, Reading hall"),
("G2","Girls",3,0,12,"Gym, Mess"),
("G3","Girls",5,0,20,"Ground, Mess"),
("B2","Boys",5,0,25,"Tv,Mineral Water,Mess"); 

select * from hostel

INSERT INTO hostel(name,hostel_type,no_of_rooms,no_of_students,capacity,facility)
VALUES("G4","Girls",4,0,20 ,"Mineral water,Tv"),
("B3","Boys",4,0,24,"Ground"),
("G5","Girls",6,0,24,"Mess,Ground,Reading hall,Gym,Solar water heater"),
("B4","Boys",6,0,18,"Mess,Ground,Reading Hall,Gym,Solar water heater"),
("B5","Boys",6,0,22 ,"Gym,Tv,Mineral Water,Mess,Ground,Reading hall"); 

select * from hostel

-- Delete the 'no_of_students' column from hostel table
ALTER TABLE hostel
DROP COLUMN no_of_students;

/*
2.Handle missing values using NULL or default
*/

-- a. Insert a hostel with a missing (NULL) facility value. 
-- For this modify the column facility as it was crreated to be not null 
ALTER TABLE hostel
MODIFY COLUMN facility varchar(50);

desc hostel
-- Insert a hostel with a missing (NULL) facility value
INSERT INTO hostel (name, hostel_type, no_of_rooms, capacity, facility)
VALUES ('G4', 'Girls', 4, 18, NULL);

SELECT * FROM hostel WHERE facility IS NULL;

-- b. Set a default value for the facility column 
ALTER TABLE hostel
ALTER facility SET DEFAULT 'Basic Facilities';

-- c. Insert a hostel without specifying facility (To apply default) 
INSERT INTO hostel (name, hostel_type, no_of_rooms, capacity)
VALUES ('B3', 'Boys', 5, 25);

select * from hostel

/*
 3.Use UPDATE and DELETE with WHERE conditions
 */
 
 -- a. UPDATE
 
 -- Change capacity of a hostel named 'B1' having hostel_id as 2
UPDATE hostel
SET capacity = 30
WHERE hostel_id = 2;

-- Update facility as 'TV, Mess' for hostels with less than 4 rooms 
UPDATE hostel
SET facility = 'TV, Mess'
WHERE no_of_rooms < 4;

select * from hostel

-- b. DELETE

-- Delete a hostel with name 'G4'
DELETE FROM hostel
WHERE name = 'G4';

-- Delete all Boys hostels with hostel_id greater than 10
DELETE FROM hostel
WHERE hostel_type = 'Boys' AND hostel_id > 10;



