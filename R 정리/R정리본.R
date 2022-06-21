# 여기는 help 가 잘되어 있다  f1  
# 툴에서 옵션변경가능 
#컨트롤 엔터가 실행 , 컨트롤 R 가지고 오기 
# 컨L 다지우기 혹은 remove() or rm()
# = 잘 안쓰고 <- 쓴다 
# +-*/ 같다 ^이것이 제곱이다. 
# 여기는 세가지 타입이 있다 
# 숫자 numeric, 문자, character,참거짓 logical 
# 여기서는  C( )로 리스트 형성이 가능하고
#,로 구분 띄어쓰기는 별 상관없음
# & | and or 그리고 && ||은 첫째 원소만비교
# row 는 행 col은 열을 의미한다 가로 세로 
# 행렬에서 인덱스는 대괄호를 이용한다 . 제외하고
#싶으면 - 사용 
#데이터 프레임에서 인덱스를 활용할 때는 $표시
#$는 열을 나타낸다. 

## 0307오늘 중요한 것 !!
#행렬 만들기와 데이터 프레임 만들기 
# =등호가 아니라 <-이 표시가 여기서는 지정을 해주는 표시
-------------------------------------------------------------------
x <-9
#x<-2
print(x)
y <-10
remove(y)
(1/2+1/3)^2/1/3^2
# 데이터 타입
숫자 : numeric()
문자: char  - character
참거짓 : bool - "logical"
typeof(a) # 타입을 알려주는 함수
a <-1
a == 1 

b = "hello"
typeof(b)
mode(b)
c <- TRUE
mode(c)
줄여서 대문자만 써도 된다.
변수의 이름 설정 
#여기서 리스트를 설정해주는 것은 대괄호가 아니라 c() 이다. 
obj <- c(3,5,7)
name_1 <-c(3,5,7)
name.2<-c(3,5,7)
.name2 <-c(3,5,7)
_name2 <-c(3,5,7)
# 맨  앞자리가 _가 올 수 없다 숫자도 올 수 없음. 
2name <- c(3,5,7)
x_3base <- c(1;111)


a <- c(1,2,"a","b")
mode(a)

A <- T
B <- F
C <-c(T, T)
D <-c(F, T)
C&D
A&B
A && B #앞에 오는 하나만 비교

A || B
C || D

A <- c(3,4)
B <- c(5,4)
A < B

matrix(data, nrow = 2, ncol = 3)
matrix(1:12,nrow = 2 , ncol = 3)
# 12가 포함이 됨  
# 3행 4열 만들기  2X2 3X4 

help("matrix")

?ggplot
# 도움말 보기 F1눌러도 나옴 

install.packages() # 패키지를 다운 여기서  (외장함수 라이브러리) 

matrix(data, nrow = 2, ncol = 3) #nrow 행 가로 , ncol열 세로  
mat <- matrix(1:12,nrow = 3 , ncol = 4, byrow = T)
ma <- matrix(1:12, 4, byrow = T) # 1부터 12까지 4개의 행 3개의 열  그리고 1234 형식으로 하기 에 T
mat <- ma
remove(ma)
mat

#f1f2버튼 도움말 
# 만들고 지정해줘야해

rownames(mat) <- c("국어","영어","수학")
colnames(mat) <- c("al","a2","a3","a4")
mat
mode(mat)
class(mat)

#접근하기

mat[ ,4]
mat[3,]
mat[행,열]
mat[-3,]
mat[-2,] # 2행만 빼고 
mat[-1,] # 1행만 빼고
mat[-2, c(2,4)]
mat[-2, -c(1,3)]
#1행과 3행 2열과 4열 
(1,2) -> (2,1)
(2,1) -> (1,2)
#전치 행렬

t(mat) # 바꿔주는 전치 행렬을 만들어 주는 함수
#3x4 -> 4x3

matrix, 표(table), dataframe 데이터프레임 
avg, mean 
x1 <- c(100,80 , 60 , 40, 30)
x2 <- c("A","B","C","A","B")
a <-  cbind(x1,x2) #컬럼으로 만듬 (기둥으로) 열로 만들어줌 
rbind(x1,x2) # 로우로 만듬 (줄로) 행으로 만들어줌 
a
mode(a)
class(a)
A <- data.frame(a) # 데이터 프레임으로 바꿔주는 함수
df <-  A
A #데이터 프레임으로 만들어주기  자료틀 자료구성 객체 

# 1,2,3,4,5
# x1,x2를 각각 score , grade로 바꿔주세요  

colnames(A) <- c("score","grade") # 컬럼 열의 이름을 점수와 성적으로 한다

colnames(df)[1] <- "score" #  df 열의 이름에서 첫번째 인덱스에 해당하는 것을 score로 지정 
colnames(df)


df <-  data.frame(score =x1 , grade = x2)
df[,1] # 1행 
df$score # score 접근하는법
df$grade 
str(df) #구조 structure
--------------------------------------------------------------------


getwd() #파일 현재경로 출력
setwd("C:/Rdata") #경로 저장 
setwd("C:\\Rdata")

dir()
read.excel

install.packages("readxl") # 패키지 가지고 오기 
library(readx1) # 설치하고 난 이후 가지고오기 
read.excel("L")

install.packages('readxl')

df_exam <- read_excel("excel_exam.xlsx")
df_exam
df <- read_excel("excel_exam.xlsx", sheet = 3)
mean

## 탭 , 볼때마다 셀을 듸워 , 대부분 ,로 구분한다. 
# 읽기 
df <-read.csv("test.csv")
df <- df[1:10, ]
df
read.csv()
write.csv(df,"test1.txt")




#  파이썬과 R 겹치는 것이 많다. 


x1 <-  1:20
X2 <- rep(c("a","b"),10)
x3 <- sample(1:100, 20,replace = T) #100개중 20개 뽑기 반복을 허용 
a <-  cbind(x1,x2,x3)
# 데이터 프레임으로 만들기 

df <- data.frame((a))
df <- data.frame(x1,x2,x3)

#csv로 저장하기 test2.csv
write.csv(df,'test2.csv')
write.table(df,"test3.csv")
write.table(df,"test3.csv",sep = ",")
separate, delim 
read.csv("test.csv", header = T) # 변수명 있을 경우 T 

txt 파일인 경우
- read.table( )을 사용한다.
- read.table( “파일 이름“, ”, header = T , sep
             = “\t”)
: tab으로 분리가 기본값
- write.table(객체이름, file = “파일 이름“ )로
저장한다.
csv 파일인 경우
- read.csv( ) 를 사용한다. 
- read.csv(“파일명”, header = T, sep = “,”)
콤마(,)로 분리가 기본값.
- write.csv( )로 저장한다.
- wrtie.csv( 객체이름, file = “파일 이름“)


str() #구조  알려주는 함수 
카테고리, 범주 , Facotr 같은말, 숫자를 범주로 바꿔줄때는 factor()

df <-  data.frame(score = x1, grade = x2,
                  stringsAsFactors = T) 
# 글자를 범주로 바꿔준것 false 가 기본값이기 때문 
df
str(df)

rm(a)
remove(y)
tmp <- 1:4
rm(tmp)

rm(list = ls())
ls()
------------------------------------------------------------0308
x1 <- c(1,2,3,4,5)
x2 <- c("a","b","c","d","e")
a <-  cbind(x1,x2)
mode(a)
a <- data.frame(x1,x2)  # Cbind 리스트로 안나와 
mode(a)

# txt 읽는 것 read.table()  만드는 것 write.csv

#모든 객체 삭제는 rm(list =ls())

a <- matrix(1:30, nrow = 6)
a[3,4]
a[4:3]  

df = data.frame(a)
df
df[ ,c('X3','X4')]
# 6개 셀이 있고 하나하나 들어간 것이 아니다 , 한개의 셀 안에 다 들어가 있는 것
#한개셀 다들어가 있는 것은 백터 수학과 상관없이 '
# 그리고 각각 셀은 데이터 프레임 그래서 데이터 프레임으로 나눠준것 ,
# 문자를 범주형으로 바꾼다는 이야기 , 

# abc라는 세가지의 범주가 있다. 
# 바 그래프로 할때 범주별로 등급 별 평균 반별로 평균 다 범주형 
#그래서 범주형으로 만들어주는 stringAsFactors / 글자인지 / 성,성별이라면 달라지지 
# tmp: working with tmp and clean up 
# temp 


write.csv(df,"a.csv")
save(df,,file= "a.rda")
df
load("a.rda")
# rda 바로저장 . 피클처럼 
rm(df)
저장 : csv , rda 
읽기 : read.csv, read.excel 
# excel_exam.xlsx 파일을 df_exam으로 읽어봅시다. 
df_exam 
library(readxl)
df_exam = read_excel("excel_exam.xlsx")
head(df_exam,2)
tail(df_exam,1)
view(df_exam,2)
dim(df_exam)[1] # R 은 1부터 시작
nrow(df_exam)
ncol(df_exam)
str(df_exam)
summary(df_exam)
install.packages("dplyr") # d plyr 디플라이어 
library(dplyr)
# 5 verbs 
# filter selcet arange mutate summerise 다 많이씀 중요! 오늘 가장 중요한 부분 
df <- df_exam
df$class #$을 쓰면 클래스 부분만지정  
df$class == "1"
filter(df, class!= 2 ) #행에서  class가 2가 아닌것만 뽑아줌 
#데이터 프레임 , 클레스 1
filter(df, class ==1 | class == 2)
filter(df, class ==1 | class == 2)

# 수학이 50점 이상 
filter(df, math >= 50 & english >= 80 & class ==1 )
# 데이터 프레임이 들어가 ! , 
-------------------------------------------------------
%>% pipe 
df %>% filter(class == 1) #파이프 중요한 개념 



유닉스 ps | a * 순서대로 착착 # 곰방대 연기 잔 파이프 출구 좁아 .
# 많은 것에서 좁게 = 필터 
df %>% 
  filter(class == 1) %>%
  filter(math>50) %>%
  filter(english>90) # 행추출 행이 줄어드니까 ! 그 준다는것이 가로 그부분이 없어지니

select(df,math,english,science) #레벨이 같은 것 같자나 하지만 df는 수준이 다르니까
df %>%select(math,english,science) #이렇게 표시 

# 수학열은 빼고, 4개열만 출력 


df %>%select(-math)

df %>%filter(class ==1) %>% select(class , math)


df %>%select(class , math) %>% filter(class ==1)
#1,2,3 반 

df %>% filter(class == 1 | class == 2 | class == 3)



%in%, == 를 의미함 
  
  a in b : 1,2,3 in 1,2,3,4,5 #  클래스에 있는 것에서 끄집어 내서 이것이 
1 == 1,2,3 이냐 라고 보는 것 
2 == 1,2,3
3 == 1,2,3



a %in% b  


## 정렬 arrange 

df %>% arrange(math)  #ascend 오름차순 
df %>% arrange(desc(math)) #descending 내림차순

df %>% select(class,english,math) %>%  arrange(english) %>% arrange(desc(math))
df %>% select(class,math,english) %>%  arrange(desc(math),english) 

# 행 row observation 관측치(사람)   열  coloum variable (열의 이름 ) 


# 파생변수 새로운 변수 만들기  mutate  중요 
sum1 <-  df(math+english+science)

df %>% mutate(mean=(math+english+science)/3) %>% arrange(desc(mean)) %>% head(6)

#평균 전교 순서 그리고 6명만 보여주기 
# 만들고 나서 꼭 저장하기 
# mutantant : 뮤턴트 돌연변이 있는 거로 만드는 덧
#create  없는 것 만드는 것 , 

df %>% mutate(test = ifelse(science>=60,"pass","fail"))
df$math
n(df$math)
# 수학 평균은?
summarize()

df %>% summarise(평균 = mean(math)) # 요약  쓸 수는 있지만 단독으로 쓰지 않음
# 반드시 그룹지어서 쓴다.  
# summarise 반별 평균 집단별로 요약하기에서 쓰임 
#먼저 집단별(반별)로 묶어주는 group_by(class)
# 그다음 그 집단의 평균을 한줄 요약해주는 summarise  

apply tapply

df %>% group_by(class) %>% summarise(수학 평균 = mean(math))
# 빈도는 summarise  안에서만 나옴 

df %>% group_by(class) %>% summarise(n())



a <- ("") # 캐릭터 
mat <- matrix(1:9,nrow = 3,byrow = T)
colnames(mat)=c("철수","영희","장구")
rownames(mat)=c("국","영","수")

a1 <-  c("철","짱","맹")
a2 <-  c(90,50,60)
a3 <-  c(95,50,55)
df <- data.frame(name=a1,english=a2,math=a3)
mean(df$english)

df %>% group_by(class) %>%  summarise(mean_math=mean(math),sum_math = sum(math))




library(ggplot2)
str(mpg)
unique(mpg$manufacturer) #회사 수  
#몇번?
table(mpg$manufacturer) #테이블 통해서 세줌 
colnames(mpg)
cty:city 도시 주행 연비
hwy: highway 고속도로 연비 
library(dplyr)

mpg %>% group_by(manufacturer) %>% filter(class == "suv" ) %>%
  mutate(tot=(cty+hwy)/2) %>% summarise(mean_tot=mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% head(5)

cheatsheet
mtcars %>%  filter(mpg > 20)



test1 <- data.frame(id =c(1,2,3,4,5),
                    midterm = c(60,80,70,90,85))

test2 <- data.frame(id= c(1,2,3,4,5),final = c(70,83,65,95,80))                     

left_join(test1,test2,by = "id") #합치기 ! 


name <- data.frame(class = c(1,2,3,4,5),teacher = c('kim','lee','park','lim','ki,'))
library('readxl')

df <- read_excel('excel_exam.xlsx')

left_join(df,name,by = 'class')

cbind(test1,test2) # 그대로 4개 
test2
colnames(test2)[2] = "midterm"
test2
test1
test2 <- test2 %>% rename(final = midterm) # 라고 재 저장 
cbind(test1,test2) #열
rbind() #행 더 붙혀줌 왜냐면 같아서 


inner_join(test1,test2)
#join merge 비슷함,  
#  NA는 빈칸  not available 
# na NAN 결측치 


df <- data.frame(sex = c("m",'f',NA,'f','m'),score = c(5,4,3,4,NA))

df

#  데이터 na가 들어간 것이 많을 거야 결측치를 처리 해야해 !
# 데이터 처리를 위해 , !is.na() 하거나 rm.na = T 하기 

is.na(df)
is.na(df$sex)
# 결측치 보는 법 
sum(is.na(df$sex))
#ture의 개수를 세어줌 , 

# summary(df) 중요한 이유 알려줌 
summary(df) 

mean(df$score)
df
#not == ! 
df %>% filter(!is.na(df$score)) %>% summarise(sum(score))

# 처리방법 2 다른 값으로  채워 넣는다. 
# ekfmsrkqt , 평균 최빈값 직전값 직후값 
5,4,3,4,NA
#처리방법 3 무시한다 .처리 방법 1 데이터를 지운다 


df %>% filter(!is.na(df$score)) %>% na.omit(df)
#. 데이터 다날라버림 별로 안좋은 방법  

df %>% filter(!is.na(df$score)) %>% na.omit(df)



----------------------------------------------------0310
  3월 10일
library(readxl)
#exam %>% summarise("csv_exam")
df <- read_excel("excel_exam.xlsx")
df %>% summarise(mean(math)) #  수치값의 요약 
# group_by 와 같이 씀 열을 나눠서 하려고 ! 반별 평귱

결측치 제거 
%>% filter(!is.na(score)) | na.rm=T
ifelse(조건 , 만약 NA ,엘스 출력 )
geom_

############################### 시작
ggplot2 # 이것을 이용해 굉장히 많은 것을 그릴
수 있음
# ggplot이라는 함수를 쓴다 그안에 a, b로 정리한다
#여기서 a는 데이터 b는 메핑 맵을 말한다 
#맵은 에스테틱의 약자 심미적 , 그리고 x축과 y축을 정해준다
#그리고 점을 어떻게 표현할지 geon 통해 결정 
#color은 테두리 fill은 채우기 size 는 크기 ,shape모양 
#범위도 lim으로 제한가능 
#그래프 마다 어떤것은  x 축만 어떤것은 숫자만 범주만 
#기본형태 ggplot(data,aes(x,y,color,shape,fill))+geom_
# 확장 형태 data%>% group_by() %>% summerise(mean=mean(data$변수))
# %>% ggplot(aes(factor(x),mean))+geom_
str(mpg)
ggplot(mpg, aes(x=displ,y=hwy,color=drv))+geom_point() 
# mpg라는 데이터에서 X 축은   displ Y축은 hwy로 하고 색은 drv에 따라서 칠한다
#그리고 그래프는 산점도로 표현한다 
# 모르는 것은 치팅 스크립트 보기 
# 바그래프는 x  하나만 그래서 두개 변수하려면 col로 해야함 
# bar ,히스토그램, point산점도, 박스플롯, 선들 ,density 밀도 ,freqpoly다각형선
ggplot(mpg, aes(x=displ,y=hwy,color=hwy))+geom_point()
ggplot(mpg, aes(x=displ,color=hwy))+geom_bar()
ggplot(mpg, aes(x=displ,color=hwy))+geom_histogram()
ggplot(mpg, aes(x=displ,y=hwy,fill=drv))+geom_boxplot()
ggplot(mpg, aes(x=displ,y=hwy,color=hwy))+
  geom_point()+geom_smooth(method = "lm") # 선생기기
p3<- ggplot(mpg, aes(x=displ,y=hwy,color=hwy))+
  geom_point()

p3+labs(title ="배기랑",x = "배기량",y = "연비")
#라벨 붙혀주기 , 이름 붙히기 

-----------------------------------------0311
as.data.frame()
as.table()

read.csv()
read_excel
read.excel
read_excel
ReadExcel 
read_excel() 

#티블로 나옴 그게 나으니까 

readExcel# R  만든 이사람은 이렇게 표현하는 것을 좋아해 


geom_smooth() # 곡선
# method = 'lm' 직선

mpg



mpg %>% filter(manufacturer == "volkswagen"| 
                 manufacturer == "audi" | 
                 manufacturer == "land rover" )%>% 
  group_by(manufacturer) %>% summarise(mean(hwy, rm = T))

idex
index
cnt
count

names(mpg)
ggplot(mpg,aes(x=displ,y=hwy,color=drv,shape=drv))+
  geom_point(size=3)+
  facet_grid(cty~.) # 수치형  x 

#실린더 별로 4개 실린더 
#facet 조각내기 ! 
# 숫자형이면 안된다.  
# 생각보다 점의 개수가 모자르다 . 

names(mpg)
ggplot(mpg,aes(x=displ,y=hwy,color=drv,shape=drv))+
  geom_point(size=3) +geom_jitter()
names(mpg)
ggplot(mpg,aes(x=displ,y=hwy,color=drv))+
  geom_point(size=3) +geom_line()

ggplot(data = mpg, aes(x=displ))+geom_bar()
ggplot(data = mpg, aes(x=displ,fill = drv))+geom_bar()




mpg$cty<- as.factor(mpg$cty)
mpg


ggplot(data = mpg, aes(x=displ,fill= as.factor(cty)))+
  geom_bar(position = "dodge")


#수치형을 문자형처럼 바꾸기 


ggplot(data = mpg, aes(x=displ))+
  geom_bar(position = "dodge")

mpg %>% 
  ggplot(aes(x=displ))+
  geom_histogram(bins = 10,color="white")+
  geom_freqpoly(bins=10, color = "red", size =3) #선긋기 
#bar과 비슷하지만 이것은 붙어져있음 히스토그램 


ggplot(mpg,aes(drv,hwy))+geom_boxplot()+
  filter(model,manu)

mpg %>% arrange(desc(hwy))



mpg %>% select(manufacturer,model,hwy,drv)
%>% filter(drv == "f") %>% arrange(hwy)%>%head(10)


ggplot(data = mpg, aes(drv,hwy,color=hwy))+geom_violin()


# 바이올린을 통해 얼마나 분포했는지 알 수 있음 중복되는 것들  


ggplot(data = mpg, aes(drv,hwy,color=hwy))+geom_point()
# 숫자가 커질 수록 연해짐 .

economics

ggplot(economics,aes(date,unemploy))+ geom_line(color = "blue")
p <- ggplot(economics,aes(date,unemploy/pop))+ geom_line(color = "blue")

p
library(plotly)

ggplotly(p)
# 기능 인터렉티브

diamonds
sample(1:10,15, replace =T)
5394개의 임의의 수를 뽑는다. 
sample(1:53940,5394)


#행과열을 하는 것 접근법 
#facet 통해 칸 나누기 , 그리고 샘플 뽑기 )
diamonds[c(1,2),]
diamonds = diamonds[sample(1:nrow(diamonds),nrow(diamonds)*0.1),]

ggplot(diamonds, aes(x= carat,y=price,color=cut))+geom_point()

ggplot(mpg,aes(displ,hwy,color=drv))+geom_point()

ggplot(mpg,aes(displ,hwy,color=drv,shape=drv))+geom_point()+theme_economist()

ggplot(mpg,aes(displ,hwy,color=drv))+geom_point()+facet_grid(drv~.)

ggplot(mpg,aes(displ,fill=drv))+geom_bar(postion= "dodge") #dodge를 하면 펼쳐짐 

ggplot(mpg,aes(displ))+geom_histogram(binwidth = 0.2,fill = "blue")


ggplot(mpg,aes(x=class,fill=class))+geom_bar()+ggtitle("클래스별 차 종류")


#R friend


# shape 모양 알파는 투명도 
ggtilte , labs(title= 
                 
save()

load()

df %>% filter(grade!=)
df %>% filter(grade %in%c(1,2,3)) #123다 모으기 


score1 <- data.frame(id=c("a","b","c"),math = c(30,45,89))
score2 <- data.frame(id=c("a","b","f"),english = c(55,80,88))

df <- data.frame(score1,score2)

inner_join(score1,score2)
left_join(score1,score2)
right_join(score1,score2)
full_join(score1,score2)


test3 <- bind_rows(test1,test2)
sum(test3$x)+sum(test3$y)+sum(test3$z,na.rm=T)

group_by는 행으로 ... =

test1 %>% mutate(sum = x+y+z , mean = sum/3) 
%>%filter(x>=3 & y>= 7) %>% arrange(sum)

# bar 색 지정하기 
ggplot(diamonds,aes(x=cut,fill=clarity))+
geom_bar()+scale_fill_manual(values = user_palette)

scale_fill_brewer("") 찾아서 읽어보고 사용하기  
user_palette = c(#999)


###

C <- ggplot(diamonds,aes(x=carat,color=cut))
C+geom_freqpoly()



ggplot(diamonds,aes(x=carat,color=cut))+geom_freqpoly(bins=60)

airquality

# 다 나왔다는 것은 데이터 프레임 
table(airquality$Month)
unique(airquality$Month)
air <- airquality

airquality %>% filter(airquality$Month == 5 |airquality$Month == 8)

airquality %>% filter(Month == 5 |Month == 8) %>% 
ggplot(aes(x=Day,y=Wind,color=factor(Month)))+
geom_line()+
geom_point()



economics %>% ggplot(aes(date,uempmed))+geom_line()


economics %>% ggplot(aes(date,unemploy/pop))+geom_line()

# spss 외부파일 읽기 , 
library(foreign)
raw_welfare<- read.spss("Koweps_hpc10_2015_beta1.sav")
#데이터 프레임으로 바꾸기 
raw <- as_data_frame(raw_welfare)
str(raw_welfare)

#새로운 열 만들기 행 
mpg$city <- mpg$cty
cty <- ("city")
colnames(mpg)[8] <- "city"


colnames(mpg$cty)
remove(colnames(mpg)[12]) <- "city"
mpg<- mpg[,1:11] #열 지우는 법 
mpg <- mpg[,-12]
mpg
colnames(mpg)[8] <- "city"
mpg %>% rename(city= cty)


# income의 최대값은?

max(raw$income,na.rm = T)
max(raw$h10_id)
raw <- as.data.frame(welfare)
raw <- as_tibble(welfare)

# spss 외부파일 읽기 , 
library(foreign)
raw_welfare<- read.spss("Koweps_hpc10_2015_beta1.sav")
#데이터 프레임으로 바꾸기 
raw <- as_data_frame(raw_welfare)


welfare <- raw %>% select(gender = h10_g3,birth=h10_g4,
                          marriage=h10_g10,religion=h10_g11,
                          income = p1002_8aq1,job=h10_eco9,
                          region=h10_reg7) 
summary(welfare) # NA값 알

boxplot(welfare)


colSums(is.na(welfare))

ggplot(welfare,aes(x=income,color=factor(gender)))+geom_density() 
# 성별에 따른 임금 차이 

ggplot(mpg,aes(x=displ,fill=cty))+geom_bar() # factor로 안하면 안먹혀 범주아니라
install.packages("airquality")
str(airquality)
airquality %>% filter(Month==6|Month==7|Month==8) %>% 
ggplot(aes(Ozone,Temp,color=factor(Month)))+geom_point()

sample(1:10,20,replace=T) #샘플 뽑기 반복허용
# 문제들
dplyr

diamonds

sample(1:diamonds,0.1*diamonds)
index = sample(1:nrow(diamonds),nrow(diamonds)*0.1)
test <-  sample(1:nrow(diamonds),nrow(diamonds)*0.7,)
train <- diamonds[test,]
test <- diamonds[-train,] # 나머지는 - 
sample_n(diamonds,5940)
sample_frac(diamonds,0.1)

ggplot(mpg,aes(x=displ,fill=drv))+geom_bar()+facet_grid(~drv)
#그리드 행과 열로 나탠준다 
airquality
air <- tibble(airquality)
str(air)

ggplot(economics,aes(x=date,y=unemploy))+geom_line()
ggplot(mpg,aes(x=displ))+geom_histogram(bins=10,color="white")


#spss
library(foreign)
raw_welfare <- read.spss("Koweps_hpc10_2015_beta1.sav")
raw <- as.data.frame(raw_welfare)

str(welfare)
summary(welfare)
income의 0을 NA로 처리하기
welfare <- raw %>% select(gender = h10_g3,birth=h10_g4,
                          marriage=h10_g10,religion=h10_g11,
                          income = p1002_8aq1,job=h10_eco9,
                          region=h10_reg7) 

welfare %>% select(gender,income) %>% head(20)
Welfare$income <- ifelse(welfare$income == 0 ,NA,welfare$income)

ggplot(data=welfare,aes(x=factor(gender),income,fill= factor(gender)))+
geom_boxplot()

#mpg, drv별로 boxplot 
ggplot(mpg,aes(x=drv,y=hwy,fill=drv))+geom_boxplot() #factor형이군 = 범주형
#범주로 만들어주는 함수가  factor() 성별이 숫자로 나오니까 바꿔줌 

ggplot(data=welfare,aes(x=income))+geom_density() #밀도

ggplot(data=welfare,aes(x=income))+geom_freqpoly()# 빈도수로 잡아줌 

ggplot(welfare,aes(x=income,color=factor(gender)))+geom_density()

welfare$gender <- ifelse(welfare$gender==1,"male","female")

table(welfare$gender) #숫자 세기 
ggplot(welfare,aes(gender,fill=gender))+geom_bar() # 남여 임금차이 

#남여별 , 평균임금 

 welfare %>% group_by(gender) %>% summarise(Mean = mean(income,na.rm=T)) #숫자


data <- welfare %>% filter(!is.na(welfare$income))

 ggplot(data,aes(mean(income,na.rm=T),y=gender) )+ geom_col()


age <- mutate(welfare,2015-welfare$birth)
welfare$age <-2015-welfare$birth

age <- 
mutate()
ggplot(welfare,aes(age,income))+geom_line()


# 파이프랑 지지플롯이랑 별개 
welfare<- welfare %>% filter(age>=20) %>% group_by(age) %>% 
summarise(mean_income=mean(income,na.rm=T))

# 그래서 재정의 해주고 다시 보여줘야함 
ggplot(welfare, aes(age,mean_income))+geom_line()

#연령별 평균소득 글미에서 
#연령의 남녀별 평균 소득 
#나이가 20살 이상인 것만 
welfare %>% filter(age>=20) %>% group_by(age,gender) %>% 
summarise(mean_income=mean(income,na.rm=T)) %>% ggplot(aes(age,mean_income,color=gender))
+geom_line()

welfare %>% filter(age>=20) %>% group_by(age,gender) %>% 
summarise(mean_income=mean(income,na.rm=T)) %>% ggplot(aes(age,mean_income,color=gender))
+geom_line()
# 나이 구간 나누기 

welfare <- welfare %>% mutate(age_gen = ifelse(age < 30 , "young",
                                        ifelse(age <=50,"middle","old")))


ggpolot(welfare,aes(mena_income,fill=age_gen)+geom_bar()
 
 
 
 group_by(gender,age_gen) %>% summarise(mean=mean(income))
 
 
welfare %>% group_by(age_gen,gender) %>% summarise(mean(income),na.rm=T)
 
ggplot(age_gen,eman,fill=gender)+geom_col(position='dodge')+scale_x_discrete(limits=c("young",'middle','old'))
 

 #워드 클라우드 
 
 
 
 #한글 설치 패키지 
 
 

 
 install.packages("multilinguer")
 
 multilinguer::install_jdk()
 
 install.packages("KoNLP", 
                  repos = c("https://forkonlp.r-universe.dev",
                            "https://cloud.r-project.org"),
                  INSTALL_opts = c("--no-multiarch")
 )
 

 
 library(KoNLP)
 library(wordcloud2)
 
 useSejongDic()
 
 NLP(Natural language Processing ) 자연어 처리 ! 
   #자연어는 사람들이 쓰는 언어 자연스럽게 만들어진 언어 
   #형식어 컴퓨터 수학언어, 화학언어 
   # 라이브러리만 잘하면 ! / 
   # 전공자 ,, 이사람이 다 a는 아니야 , 
   
   
   getwd()
 
 read.csv("ahn.txt.txt")
 text = readLines("ahn.txt")  
 
 nouns <- extractNoun(text)
 
 typeof(nouns)
 nouns <- unlist(nouns)
 nouns<- nouns[nchar(nouns) >=2] 
 
 wordFreq <- table(nouns)
 wordFreq <- head(sort(wordFreq, decreasing= T),20)
 wordcloud2(wordFreq)
 
 extractNoun(text) %>% unlist() %>% filter(nouns[nchar(nouns)>=2])
 words<- table(nouns) %>% sort(decreasing = T) %>% head(40)
 
 wordcloud2(words,fontFamily = "바탕체")  
 
 
 #입력방법 차이 안시   
 
 
 readLines("ahn.txt")
 nouns <- extractNoun(text) %>% unlist()
 nouns[nchar(nouns)>1] %>% table() %>% sort(decreasing = T) %>% head(20) %>% 
   wordcloud2()
 
 words <- data.frame(nouns)
 names(words)[1] <- "word"
 words <- words %>% arrange(desc(nouns)) %>% filter(nouns>5)
 
 ggplot(words,aes(x= word,y= nouns,fill=word))+
   geom_bar()+theme(legend.position = None)
 
 
 # 내림차순 ,, 90도 회전 ,
 
 ggplot(words,aes(x= reorder(word,Freq) , y= nouns,fill=word))+
   geom_col()+theme(legend.position = None)
 +coord_flip() # 회전시켜줌 
 
 
 
 
 # 김대중 텍스트를 읽고 인코딩을 한다. 
 # 명사를 추출한다. 명사라고 명명한다. 텍스트로 그리고 리스트가 아니게 한다
 #nouns에서  명사수를 세는 함수를 통해서 거기에서 1번 초과 사용한 것 탐지
 #table통해 숫자세기
 # 오름차순으로 정렬
 #가장 많은 20개 뽑기
 #그것으로 워드 클라우드 생성 
 readLines("kimdaejung.txt", encoding = "UTF-8")
 nouns <- extractNoun(text) %>% unlist()
 nouns[nchar(nouns)>1] %>% table() %>% sort(decreasing = T) %>% head(20) %>% 
   wordcloud2()
 
 nouns<- nouns[nchar(nouns)>1] %>% table() %>% sort(decreasing = T) %>% head(20)
 
 words <- data.frame(nouns)
 names(words)[1] <- "word"
 words <- words %>% arrange(desc(Freq)) %>% filter(Freq>10)
 
 ggplot(words,aes(x= word,y= Freq ,fill=word))+
   geom_col()+theme(legend.position = 'None')+coord_flip()

 