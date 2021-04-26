patients = data.frame(name=c("환자1","환자2","환자3","환자4","환자5"), age=c(22,20,25,30,27), gender=factor(c("M","F","M","K","F")), blood.type=factor(c("A","O","B","AB","C")))
patients
patients_outrm = patients[patients$gender=="M" | patients$gender == "F",]
patients_outrm
patients_outrm1 = patients[(patients$gender=="M"|patients$gender=="F") & (patients$blood.type=="A"|patients$blood.type=="B"|patients$blood.type=="O" |patients$blood.type=="AB"),]
patients_outrm1

patients = data.frame(name=c("환자1","환자2","환자3","환자4","환자5"),age=c(22,20,25,30,27), gender=c(1,2,1,3,2), blood.type=c(1,3,2,4,5))
patients
patients$gender = ifelse((patients$gender<1|patients$gender>2), NA,patients$gender)
patients
patients$blood.type = ifelse((patients$blood.type<1|patients$blood.type>4),NA,patients$blood.type)
patients
patients[!is.na(patients$gender)&!is.na(patients$blood.type),]

boxplot(airquality[,c(1:4)])
boxplot(airquality[,1])$stats
air = airquality
table(is.na(air$Ozone))
air$Ozone = ifelse(air$Ozone<1|air$Ozone>122,NA,air$Ozone)
table(is.na(air$Ozone))
air_narm = air[!is.na(air$Ozone),]
mean(air_narm$Ozone)

# Q1
cars
car = cars
boxplot(car)
boxplot(car$dist)
boxplot(car$dist)$stats
car$dist = ifelse(car$dist<2 | car$dist>93, NA, car$dist)
mean(car$dist, na.rm=T)

# Q2
ChickWeight
Chick = ChickWeight
boxplot(Chick$weight)$stats
Chick$weight = ifelse(Chick$weight<35|Chick$weight>309, NA, Chick$weight)
mean(Chick$weight, na.rm=T)