#SQL
#package : sqldf
#command: install.packages("sqldf")
library("sqldf")   #to load the package into rstudio   #need to be run everytime in every sql file
stud<-read.csv("C://lpu//4th sem//INT232 - R Programming//Datasets//students.csv")
View(stud)
stud

#using sql commands in R Programming
View(sqldf("Select * from stud"))
sqldf("Select * from stud")
sqldf("Select name,marks from stud")
sqldf("Select count(*) from stud")  #to get no.of rows in the table
sqldf("Select * from stud where marks<80")
sqldf("Select * from stud where marks>80")
sqldf("Select * from stud where marks==80")
sqldf("Select name from stud where marks==80")
sqldf("Select distinct name from stud")  #will retrieve all distinct names from the table i.e. if two names are same then only one will be printed
sqldf("Select * from stud where name='Armaan'")
sqldf("Select * from stud order by name desc limit 4")   #descending order according to the first charcater of the name upto 4 rows
sqldf("Select name,marks from stud order by name,marks desc limit 3") 
sqldf("Select name,roll_no,marks from stud order by name desc,marks")
sqldf("Select * from stud order by name desc")
sqldf("Select * from stud where name like '%s'")  #name ends with letter 's'
sqldf("Select * from stud where name like 'V%'") #name starts with letter 'V'
sqldf("Select * from stud where name like '%k%'")  #name which has letter 'k'
sqldf("Select name as N, marks as M from stud")  #changing the names of the columns
sqldf("Select sum(marks) from stud")  #retreive sum of the marks from the table
sqldf("Select avg(marks) from stud")
#group by
sqldf("Select sum(marks) from stud where name in ('Vikas','Armaan') group by name")  #will add marks of similar names and make it as one entry
sqldf("Select marks,name from stud group by name")
sqldf("Select roll_no, marks from stud group by name")
sqldf("Select name,marks,roll_no as reg_no from stud group by name")  #assign reg_no according to their marks in ascending order
sqldf("Select roll_no,name from stud group by name having sum(marks)>80")  #will retrieve roll_no and name of the student from the table where sum of group of students greater than 80(if only one name exists, then that will be extracted if more than one then will get grouped)
