CREATE TABLE CUSTOMERS(
    CNO INT PRIMARY KEY,
    CNAME VARCHAR(25),
    STREET VARCHAR(255),
    ZIP INT,
    PHONE INT,
    FOREIGN KEY (ZIP) REFERENCES ZIPCODES(ZIP)
);

INSERT INTO CUSTOMERS VALUES 
(1111,'charles','123 main st.', 67226 ,316636),
(2222, 'amina', '124 lane 11', 60606 ,24203227),
(3333 ,'soma' ,'224 main st.' ,54444, 24203270),
(4444, 'rita', '321 lane 13', 66006, 24219706),
(5555, 'bhaswati', '543 main st.' ,50302, 32157654),
(6666, 'santu', '432 main st' ,61111 ,5432167),
(7777, 'manas', '432 lane 17', 61111, 5432167),
(8888, 'monirul' ,'765 main st.', 65222, 4321566),
(9999, 'tapan', '654 lane 19' ,63111, 5432156),
(1000, 'dipu' ,'543 main st.', 60706, 9876543),
(9988, 'barun', '657 lane 12' ,61818, 9876543);


CREATE TABLE ORDERS(
    ONO INT PRIMARY KEY,
    CNO INT FOREIGN KEY REFERENCES CUSTOMERS(CNO),
    ENO INT FOREIGN KEY REFERENCES EMPLOYEES(CNO),
    RECIVED DATE,
    SHIPPED DATE
);

INSERT INTO ORDERS VALUES
(1020, 1111, 1000, '1994-12-10', '1994-12-12'),
(1021, 1111, 1000, '1995-01-12', '1995-01-15'),
(1022, 2222, 1001, '1997-01-20', NULL),
(1023, 3333, 1002, '1998-04-13', '1998-04-29'),
(1024, 4444, 1003, '1996-03-11', '1996-03-13'),
(1025, 5555, 1004, '1996-03-11', '1996-03-12'),
(1026, 5555, 1004, '1998-05-31', '1998-06-08'),
(1027, 8888, 1006, '1995-05-23', '1993-03-23'),
(1028, 7777, 1007, '1984-05-17', '1983-12-18'),
(1029, 3333, 1008, '1992-12-13', '1993-09-18'),
(1030, 2222, 1010, '1983-04-30', '1985-09-17'),
(1031, 1000, 1011, '1993-05-26', '1985-04-16'),
(1032, 1111, 1012, '1986-04-15', '2005-01-31'),
(1033, 9988, 1013, '2000-04-18', '2005-04-18'),
(1034, 9988, 1014, '2005-02-08', '2005-02-18'),
(1035, 1111, 1015, '2005-04-18', NULL);


CREATE TABLE ODETAILS(
  ONO INT FOREIGN KEY REFERENCES ORDERS(ONO),
  PNO INT FOREIGN KEY REFERENCES PARTS(PNO),
  QTY INT,
  PRIMARY KEY(ONO,PNO)
);

INSERT INTO ODETAILS VALUES
(1034, 10506, 7),
(1020, 10507, 5),
(1022, 10507, 6),
(1029, 10508, 5),
(1026, 10509, 9),
(1029, 10507, 3),
(1028, 10701, 7),
(1026, 10801, 4),
(1021, 10800, 2),
(1035, 10601, 5),
(1033, 10602, 8),
(1032, 10509, 7),
(1031, 10603, 1);
