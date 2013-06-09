use ztp;

drop table Atable;

CREATE TABLE Atable ( 
 i int NOT NULL, 
 j int NOT NULL, 
 a float NOT NULL, 
PRIMARY KEY ( i, j )
);
CREATE TABLE Xtable ( 
 i int NOT NULL, 
 x float NOT NULL, 
PRIMARY KEY ( i )
);

select * from Atable;

select * from Xtable;
