library("sqldf")
stud<-read.csv("C://lpu//4th sem//INT232 - R Programming//Datasets//students.csv")
sqldf("Select * from stud")
#extract roll_no, name order by name
sqldf("Select roll_no, marks from stud order by name")
#extract marks where name starts with A
sqldf("Select marks from stud where name like 'A%'")
#extract all data of student whose name ends with r
sqldf("Select * from stud where name like '%r'")
#rename name column with student_name 
#rename marks with grade
#rename roll_no with reg_no
sqldf("Select name as Student_name, marks as grade, roll_no as reg_no from stud")   #this will temporarily change the names of the column but not changed in table just shows as the desired output. Doesn't make any changes in the table. the table remains same.
sqldf("Select * from stud limit 3")
sqldf("Select * from stud order by name desc limit 4")
sqldf("Select name, marks from stud order by roll_no, marks desc limit 3")
sqldf("Select * from stud order by name desc")
sqldf("Select * from stud where name like '%s'")
sqldf("Select sum(marks) from stud")
sqldf("select sum(marks) from stud where name in ('Vikas','Ankit') group by name")
