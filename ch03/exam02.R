# N차원 배열 생성 p91
x = array(1:5,c(2,4))
x
x[1,]
x[,2]
x = 1:12
x
matrix(x, nrow=3)
matrix(x, nrow=3, byrow=T)

v1=c(1,2,3,4)
v1
v2=c(5,6,7,8)
v3=c(9,10,11,12)
cbind(v1,v2,v3)
rbind(v1,v2,v3)

x=array(1:4, dim=c(2,2))
y=array(5:8, dim=c(2,2))
?dim # 객체의 차원을 검색하거나 설정하다

x
y
x%*%y

Titanic
plot(Titanic)

x = array(1:24, c(4,6))
x
x[,seq(1,dim(x)[2],2)]