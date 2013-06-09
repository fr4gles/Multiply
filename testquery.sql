use ztp;

drop table Atable;
drop table Xtable;

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

SELECT * FROM Atable where i = 9;

insert into Atable values(2, 0, -0.634754);
insert into Atable values(6, 8, 0.518418);
insert into Atable values(1, 8, -0.322001);
insert into Atable values(1, 4, -0.264260);
insert into Atable values(8, 0, -0.063936);
insert into Atable values(4, 10, -0.939817);
insert into Atable values(0, 6, -0.610584);
insert into Atable values(2, 1, 0.295022);
insert into Atable values(8, 1, -0.711905);
insert into Atable values(2, 7, 0.079928);
insert into Atable values(6, 4, 0.117893);
insert into Atable values(2, 4, 0.044527);
insert into Atable values(2, 3, -0.578600);
insert into Atable values(10, 0, -0.938841);
insert into Atable values(5, 4, -0.843989);
insert into Atable values(1, 5, 0.664052);
insert into Atable values(7, 0, 0.516465);
insert into Atable values(9, 4, -0.788812);
insert into Atable values(1, 9, 0.699820);
insert into Atable values(5, 9, -0.968261);
insert into Atable values(4, 6, -0.812860);
insert into Atable values(8, 6, -0.952391);
insert into Atable values(1, 10, 0.605579);
insert into Atable values(4, 3, -0.491195);
insert into Atable values(0, 8, -0.827998);
insert into Atable values(10, 7, -0.230079);
insert into Atable values(7, 9, -0.232887);
insert into Atable values(7, 5, -0.561876);
insert into Atable values(9, 1, -0.935789);
insert into Atable values(9, 10, 0.573351);
insert into Atable values(5, 5, -0.193335);
insert into Atable values(2, 9, 0.014496);
insert into Atable values(2, 6, 0.755608);
insert into Atable values(8, 2, -0.372539);
insert into Atable values(9, 8, 0.185888);
insert into Atable values(10, 1, -0.794183);
insert into Atable values(5, 3, -0.416120);
insert into Atable values(5, 0, 0.770501);
insert into Atable values(1, 7, 0.051485);
insert into Atable values(7, 10, -0.387188);
insert into Atable values(3, 10, 0.222633);
insert into Atable values(3, 1, 0.012543);
insert into Atable values(10, 2, 0.222388);
insert into Atable values(7, 3, -0.070894);
insert into Atable values(8, 4, -0.058931);
insert into Atable values(6, 1, -0.135960);
insert into Atable values(4, 2, 0.726676);
insert into Atable values(0, 2, 0.549791);
insert into Atable values(7, 1, -0.268288);
insert into Atable values(0, 7, 0.101169);
insert into Atable values(6, 9, 0.307962);
insert into Atable values(2, 2, 0.619373);
insert into Atable values(6, 7, -0.194433);
insert into Atable values(10, 10, 0.510605);
insert into Atable values(7, 4, 0.681143);
insert into Atable values(8, 7, -0.977783);
insert into Atable values(2, 10, -0.829096);
insert into Atable values(3, 4, 0.786737);
insert into Atable values(1, 6, -0.195776);
insert into Atable values(8, 8, -0.431013);
insert into Atable values(0, 0, 0.655995);
insert into Atable values(4, 7, -0.319559);
insert into Atable values(6, 2, 0.850093);
insert into Atable values(5, 2, 0.054048);
insert into Atable values(4, 4, -0.815546);
insert into Atable values(10, 3, -0.310526);
insert into Atable values(6, 0, -0.006684);
insert into Atable values(7, 6, -0.989746);
insert into Atable values(9, 9, 0.887692);
insert into Atable values(3, 3, -0.918699);
insert into Atable values(6, 3, -0.004364);
insert into Atable values(6, 5, -0.376080);
insert into Atable values(8, 3, -0.813105);
insert into Atable values(3, 2, -0.503159);
insert into Atable values(5, 6, 0.816279);
insert into Atable values(9, 7, 0.135472);
insert into Atable values(0, 9, 0.658681);
insert into Atable values(7, 7, -0.298318);
insert into Atable values(0, 3, -0.924192);
insert into Atable values(4, 8, -0.344951);
insert into Atable values(3, 0, 0.779412);
insert into Atable values(10, 6, 0.852290);
insert into Atable values(0, 10, 0.812983);
insert into Atable values(9, 6, -0.578356);
insert into Atable values(3, 8, 0.184179);
insert into Atable values(10, 9, -0.057711);
insert into Atable values(9, 2, -0.998901);
insert into Atable values(5, 8, 0.489975);
insert into Atable values(3, 7, -0.004852);
insert into Atable values(1, 0, 0.618274);
insert into Atable values(4, 9, -0.043306);
insert into Atable values(5, 1, 0.211035);
insert into Atable values(6, 6, 0.986328);
insert into Atable values(9, 0, 0.416364);
insert into Atable values(9, 5, -0.021577);
insert into Atable values(1, 3, 0.056490);
insert into Atable values(1, 2, -0.719474);
insert into Atable values(5, 7, -0.945555);
insert into Atable values(4, 0, 0.015595);
insert into Atable values(3, 9, 0.819819);
insert into Xtable values(0, 1.000000);
insert into Xtable values(1, 1.000000);
insert into Xtable values(2, 1.000000);
insert into Xtable values(3, 1.000000);
insert into Xtable values(4, 1.000000);
insert into Xtable values(5, 1.000000);
insert into Xtable values(6, 1.000000);
insert into Xtable values(7, 1.000000);
insert into Xtable values(8, 1.000000);
insert into Xtable values(9, 1.000000);
insert into Xtable values(10, 1.000000);
