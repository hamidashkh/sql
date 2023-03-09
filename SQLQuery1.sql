--1. Academy databazasını yaradın - 2 bala
CREATE Database Academy

--2. Groups(İd,Name) ve Students(İd,Name,Surname,Groupİd) table-ları yaradın(one-to-many), təkrar qrup adı əlavə etmək olmasın - 5 bal
CREATE TABLE  GROUPS
(Id int primary key,
Name nvarchar Unique)

CREATE TABLE Students
(Id int primary key,
Name nvarchar NOT NULL ,
Surname nvarchar NOT NULL,
GroupId int Foreign key  References GROUPS (Id))

--3. Students table-na Grade (int) kalonunu əlavə etmək - 3 bal
ALTER table Students
ADD
Grade int


--4. Groups table-na 3 data(P133,P229,P221), Students table-na 4 data əlavə edin(1 tələbə P229 qrupna, 3 tələbə P133   qrupuna aid olsun) - 5 bal
INSERT into GROUPS(Name)
Values
(P133),
(P229),
(P221)


INSERT INTO Students
Values
[Fatima,Gaykhanova,1],
[Gamida,Khalilova,1],
[Narmin,Gapchiyeva,1],
[Aqil,Soltanov,2]



--5. P133 qrupuna aid olan tələbələrin siyahisini gosterin - 10 bal
SELECT * FROM Students
where GroupId=1

--6. Her qrupda neçə tələbə olduğunu göstərən siyahı çıxarmaq - 15 bal
SELECT COUNT(Students) FROM Students
Join GROUPS
GROUP BY GROUPS.Name
WHERE Students.GroupId=GROUPS.Id

--7. View yaratmaq - tələbə adını, qrupun adını-qrup kimi , tələbə soyadını, tələbənin balını göstərməli - 20 bal
CREATE VIEW pv_view as
SELECT * from Students as s
Join GROUPS as g



--8. Procedure yazmalı - göndərilən baldan yüksək bal alan tələbələrin siyahısını göstərməlidir - 20 bal

--9. Funksiya yazmalı - göndərilən qrup adina uyğun neçə tələbə olduğunu göstərməlidir - 20 bal

