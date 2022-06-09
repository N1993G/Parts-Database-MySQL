-- CREATE A DATABASE CALLED 'PARTS'
CREATE DATABASE Parts;
USE Parts;
-- CREATE FOUR TABLES CALLED 'PART', 'PROJECT', 'SUPPLIER', 'SUPPLY'
CREATE TABLE Part (
  p_id VARCHAR(50) NOT NULL, 
  p_name VARCHAR(50), 
  colour VARCHAR(50), 
  weight FLOAT(0), 
  city VARCHAR(50)
);
CREATE TABLE Project (
  j_id VARCHAR(50) NOT NULL, 
  jname VARCHAR(50), 
  city VARCHAR(50)
);
CREATE TABLE Supplier (
  s_id VARCHAR(50), 
  sname VARCHAR(50), 
  status_ INT, 
  city VARCHAR(50)
);
CREATE TABLE Supply (
  s_id VARCHAR(50), 
  p_id VARChaR(50), 
  j_id VARCHAR(50), 
  quantity INT
);
-- ADD DATA TO ALL TABLES
INSERT INTO Part (p_id, p_name, colour, weight, city) 
VALUES 
  ('P1', 'NUT', 'RED', 12, 'LONDON'), 
  ('P2', 'BOLT', 'GREEN', 17, 'PARIS'), 
  ('P3', 'SCREW', 'BLUE', 17, 'ROME'), 
  ('P4', 'SCREW', 'RED', 14, 'LONDON'), 
  ('P5', 'CAM', 'BLUE', 12, 'PARIS'), 
  ('P6', 'COG', 'RED', 19, 'LONDON');
INSERT INTO Project (j_id, jname, city) 
VALUES 
  ('J1', 'SORTER', 'PARIS'), 
  ('J2', 'DISPLAY', 'ROME'), 
  ('J3', 'OCR', 'ATHENS'), 
  ('J4', 'CONSOLE', 'ATHENS'), 
  ('J5', 'RAID', 'LONDON'), 
  ('J6', 'EDS', 'OSLO'), 
  ('J7', 'TAPE', 'LONDON');
INSERT INTO Supplier (s_id, sname, status_, city) 
VALUES 
  ('S1', 'SMITH', 20, 'LONDON'), 
  ('S2', 'JONES', 10, 'PARIS'), 
  ('S3', 'BLAKE', 30, 'PARIS'), 
  ('S4', 'CLARK', 20, 'LONDON'), 
  ('S5', 'ADAMS', 30, 'ATHENS');
INSERT INTO Supply (s_id, p_id, j_id, quantity) 
VALUES 
  ('S1', 'P1', 'J1', 200), 
  ('S1', 'P1', 'J4', 700), 
  ('S2', 'P3', 'J1', 400), 
  ('S2', 'P3', 'J2', 200), 
  ('S2', 'P3', 'J3', 200), 
  ('S2', 'P3', 'J4', 500), 
  ('S2', 'P3', 'J5', 600), 
  ('S2', 'P3', 'J6', 400), 
  ('S2', 'P3', 'J7', 800), 
  ('S2', 'P5', 'J2', 100), 
  ('S3', 'P3', 'J1', 200), 
  ('S3', 'P4', 'J2', 500), 
  ('S4', 'P6', 'J3', 300), 
  ('S4', 'P6', 'J7', 300), 
  ('S5', 'P2', 'J2', 200), 
  ('S5', 'P2', 'J4', 100), 
  ('S5', 'P5', 'J5', 500), 
  ('S5', 'P2', 'J7', 100), 
  ('S5', 'P6', 'J2', 200), 
  ('S5', 'P1', 'J4', 100), 
  ('S5', 'P3', 'J4', 200), 
  ('S5', 'P4', 'J4', 800), 
  ('S5', 'P5', 'J4', 400), 
  ('S5', 'P6', 'J4', 500);
-- USING THE TABLE 'PART', RETURN ALL UNIQUE PART NAMES
USE Parts;
SELECT 
  DISTINCT p.p_name 
FROM 
  part p;
-- RETURN ALL UNIQUE PARTS AND THEIR ID NUMBER
SELECT 
  DISTINCT p.p_name, 
  p.p_id 
FROM 
  part p;
-- REFER TO THE TABLE 'PROJECTS' AND RETURN ALL PROJECTS THAT ARE RUN IN LONDON
SELECT 
  pr.jname, 
  pr.city 
FROM 
  project pr 
WHERE 
  pr.city = 'London';
-- FIND THE NAME AND WEIGHT OF EACH RED PART
SELECT 
  p.p_name, 
  p.colour, 
  p.weight 
FROM 
  part p 
WHERE 
  p.colour = 'Red';
-- FIND ALL THE UNIQUE SUPPLIER NAMES FROM LONDON
SELECT 
  DISTINCT s.sname 
FROM 
  supplier s 
WHERE 
  city = 'London';
