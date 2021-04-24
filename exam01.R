students = read.table("C:/Sources/students.txt", header =T, as.is=T)
students
str(students)
students = read.table("C:/Sources/students.txt", header =T, as.is=T)
str(students)

students = read.csv("c:/Sources/students.csv")
students
str(students)
students = read.csv("c:/Sources/students.csv", stringsAsFactor=TRUE)
str(students)
students = read.csv("c:/Sources/students.csv", stringsAsFactor=FALSE)
str(students)

students = read.table("C:/Sources/students.txt", header=T, as.is=T)
write.table(students, file="C:/Sources/output.txt")
write.table(students, file="C:/Sources/output.txt", quote =F)

students$average = (students$korean + students$english + students$math)/3
students
write.csv(students, file="C:/Sources/output.csv")