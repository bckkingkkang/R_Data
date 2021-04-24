test = c(15, 20, 30, NA, 45)
test[test<40]
test[test %% 3 != 0]
test[is.na(test)]
test[!is.na(test)]
test[test%%2==0&!is.na(test)]

characters = data.frame(name=c("길동","춘향","철수"), age=c(30,16,21), gender=factor(c("M","F","M")))
characters
characters[characters$gender == "F",]
characters[characters$gender == "M" & characters$age<30,]

x = 5
if(x%%2==0) {
  print("x는 짝수")
} else {
  print("x는 홀수")
}

x=c(-5:5)
x
options(digits=3)
sqrt(x)
sqrt(ifelse(x>=0,x,NA))

students=read.csv("C:/Sources/students.csv")
students
students[,2]=ifelse(students[,2]>=0&students[,2]<=100, students[,2],NA)
students[,3]=ifelse(students[,3]>=0&students[,3]<=100, students[,3],NA)
students[,4]=ifelse(students[,4]>=0&students[,4]<=100, students[,4],NA)
students

for(i in 1:10) {
  print(i)
}
for(i in 1:9) {
  print(paste(2, "X", i, "=", 2*i))
}
for(i in 2:9) {
  for(j in 1:9) {
    print(paste(i, "X", j, "=", i*j))
  }
}

for(i in 1:10) {
  if(i%%2==0) {
    print(i)
  }
}

students=read.csv("C:/Sources/students.csv")
students
for(i in 2:4) {
  students[,i] = ifelse(students[,i]>=0&students[,i]<=100, students[,i], NA)
}
students

# Q1
total = 0
for(i in c(1:100)) {
  if(i%%2==0) {
    total = total + i
  }
}
total

# Q2
for(i in seq(1,10,2)) {
  print(i)
}

# Q3
