x =1
y =2

z = x + y
z
z <- x + y
z
x + y -> z

x = 5
y = 2
x / y
xi = 1 + 2i
yi = 1 - 2i
xi+yi

str = "Hello, World!"
str
blood.type = factor(c('A', 'B', 'O', 'AB'))
blood.type
T
F

blood.type1 = c("A", "B", "O", "AB")
blood.type2 = factor(c("A", "B", "O", "AB"))
blood.type1
blood.type2
is.character(blood.type1)
is.character(blood.type2)
is.factor(blood.type1)
is.factor(blood.type2)
# blood.type1은 단순히 문자를 벡터로 묶음. blood.type2 는 레벨이 구분되어 분류에 용이하다.

1 : 7
1 : 3
7 : 1
vector(length = 5)

# c 함수 : 일반 벡터 생성
c(1:5)
c(1,2,3,c(4:6))
x = c(1,2,3)
x
y=c()
y=c(y,c(1:3))
y

# seq 함수 : 순열 벡터 생성
# seq (from ="초깃값", to="종료값", by="증가값")4
seq(from=1, to=10, by=2)
seq(0,1, length.out=11)

# rep 함수 : 반복 벡터 생성
rep(c(1:3), times=2)
rep(c(1:3), each=2)


x = 1:10
x >5
any(x>5)
all(x>5)

x=c(1:5)
x
x=c(x, c(6:10))
x

x = c(1:10)
x = x[seq(2,length(x),2)]
x

