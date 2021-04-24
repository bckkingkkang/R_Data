# x를 입력하면 x! 값이 출력되는 fact(x) 함수 만들기
fact = function(x) {
  fa = 1
  while(x > 1) {
    fa = fa*x
    x = x - 1
  }
  return(fa)
}
fact(5)

my.is.na <- function(x) {
  table(is.na(x))
}

my.is.na(airquality)
table(is.na(airquality))

# Q1
fact <- function(x) {
  if(x==1) {
    return (1)
  } else if(x>1) {
    return (x*fact(x-1))
  }
}
fact(5)

fact = function(x) {
  if (x>1) {
    return ( x * fact(x-1))
  } else if (x == 1) {
    return (1)
  }
}
fact(5)

# Q2
pn <- function(i) {
  check = 0
  for(j in 1:i) {
    if(i %% j == 0) {
      check = check + 1
    }
  }
  if (check==2) {
    return (T)
  } else
    return (F)
}
pn(5)
pn(10)