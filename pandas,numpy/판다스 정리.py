# -*- coding: utf-8 -*-
"""
Created on Tue Mar 22 12:35:50 2022

@author: kyun
"""

#판다스 


import pandas as pd

a = ['Tigers',"Bears"]
pd.Series(a)

diction = {"a":1 , "b": 2 }
pd.Series(diction)

# 리스트나 딕셔너리 들어가 도 된다 . 

# 데이터 프레임 만드는 법 ! 

# 
arr = np.array([[1,2,3],[4,5,6]])
pd.DataFrame(arr) # 알아서 컬럼 붙혀짐 

diction = {"a":[1, 3] , "b": 2 }
pd.DataFrame(diction)



li = [4,5,6,7]




pd.DataFrame(li)


pd.DataFrame(li, index = range(10,14))

#ctl+  i  = help 


pd.DataFrame(li, index = range(10,14),
             columns= ["A"] ) 

pd.DataFrame(arr, index = ["A","B"],
             columns=colums = ['a','b','c'] )


li = [[15,'남','남중'],[17,'여','여중']]
pd.DataFrame(li,index = ['철수', '영희'] , 
             columns = ['나이','성별','학교']) 


li = [[15,'남','남중'],[17,'여','여중'],['19','남','남고']]
df = pd.DataFrame(li,index = ['철수', '영희','길동'] , 
             columns = ['나이','성별','학교'])


df.index


df.drop(나이)
df.drop(["철수","영희"], inplace =True)
df.drop(['나이','성별'], axis = 1 )



df


# 딕셔너리는 인덱스해서 행만 잘 잡아주면 됨 
exam = {"수학":[90,98,85,100],"영어": [80,89,95,90],"음악": [70,95,100,90],}

li = [[90,98,85,100],[80,89,95,90],[70,95,100,90]]

df = pd.DataFrame(li, index= ['서준','우형','미나'])

df['서준','수학'] # 이방식이 안됨 
df.loc["서준","수학"]
df.iloc[0,0] # interger location 

df.loc['서준',:]   # 비우는 것은 R방식 : 판다스 방식
df.loc['서준','우현 ']

# 숫자로는 
df [:2] # 자신이 없으면 ,해서 열 명시 / 글자는 열 
df.head() 
df.iloc[: , [0,1]]

# 인터저로케이션으로 갈것이나 아읻ㄴ  범위로 할 수 있다. 

만들기
선택
이름바꾸기 
인덱싱 
# 행선택 

df.loc['서준']
df.index = ['준','현','아']
df.columns = ['수','양','음','쳐']
df.describe() #  서머리 
df.info() # 유형 , 

df.index[1] = "현" # 안됨 
df.rename()

help(df.rename)

df.rename(str.lower, axis='columns')


df.rename(index = {"우현":"현"})
df.rename(index={'우현':'현'})


!conda install plotly

import plotly.express as px 

conda plotly
[]

! != / ! 아니야 


!pip install plotly 


import plotly.express as px


df = px.data.gapminder()

df.columns
df.info()
df[:10]
df.country 



df[100:501:100]
df.loc[[100,200,300,400,500]]




df.select('country','continent','year','lifeExp','pop')
df.drop(['gdpPercap','iso_alpha','iso_num'  ],axis=1)


df.index = ["A","B","C","D", "E"]
df.index=['A', 'B', 'C', 'D', 'E']

df.rename(columns = {'continent ': 'conti'}, 'lifeExp ': 'life'})
df.rename(columns = {'continent' : 'conti', 'lifeExp':'life'})



import pandas as pd

df = pd.DataFrame([[1,2],[3,4]] , 
                  index = ["a","b"], 
                  columns = ['A','B' ]
                  )

df             

df.iloc[1,1]              
df.loc['b',"B"]
df.loc['b']["B"]                  
df.loc["B"]['b']    #이건안돼 
df['B']
df.B[1]                  



li1 = [1,2,3,4]
li2 = [1,2,3,4]
li3 = []

for i in range(4):
    a = li1[i] + li2[i]
    li3.append(a)
print(li3)




li1 = list(range(10))
li2 = list(range(10))
li3 = []

for i in range(len(li1)):
    a = li1[i] + li2[i]
    li3.append(a)
print(li3)



a4 = np.array(list(range(10)))
a5 = np.array(list(range(10)))
a6 = a4+a5
print(a6)
for i in range(len(li1)):
    a = li1[i] + li2[i]
    li3.append(a)
print(li3)

df.loc['상기'] = [95,100,80,95]
df['주요과목'] = df['수']+df['양']+df['음']


R 처럼 바로 인덱싱이 ㅇ나되기 때문에 ,. iloc 붙혀줘야함 
df.iloc[2,3]
df.iloc[2][3]                  
df.loc["아"]["쳐"]
df.loc[["아"],["쳐",'수']]
df.loc[["아"],["쳐",'수']] = 80,90




pd.read_csv()

import os
os.getcwd()
os.chdir("C:/python")

pd.read_csv("csv_python")




깃허브 row 주소 복사 


address = "https://raw.githubusercontent.com/plotly/datasets/master/auto-mpg.csv"
df = pd.read_csv(address)
df.info()

astype()

df['horsepower'].astype(int)

pd.read_excel("excel_exam.xlsx")

df.to_excel("mpg.xlsx")
df[:5]
df.head()
df.tail()


df.count()
df.mpg.count()


df["mpg"].value_counts()



df['cylinders'].unique()

df['cylinders'].value_counts() # 일차원 시리즈에서 쓰인다. 



df.corr()


import seaborn as sns
import pandas as pd 
import numpy as np 


#  범주형을 팩터가 아니라 카테고리라고 한다. 

df = sns.load_dataset("titanic")
sns.get_dataset_names()
df.head(5)
df.info()

df[['pclass,''class']]
df.isull()
df.isnull().sum()  #is.na


NA , NAN 
df["deck"]

df["deck"].value_counts()





df.isnull().sum()



df.dropna(axis = 1 ).info()



df['age'] 

round(df['age'].mean()) # 없어도 그냥 값줌 

mean_age = round(df['age'].mean(),1)

#na.rm = T 

df['age'].fillna(mean_age)

#inplace 하면 저장까지 


df = pd.DataFrame({'A': [ 'a','a','b','a','b']
                  , 'B' : [1,1,1,2,2] ,
                  'C' : [1,1,2,2,2]
                   })

df
df.duplicated()  #  중복되는 것 찾기
df["A"].duplicated() # A에서 중복되는 것 찾기 

df.drop_duplicates() # 중복행 제거 



# 데이터 두개 합치기 concat

df1 = pd.DataFrame({'a':['a0','a1','a2'],
                    'b':['b0','b1','b2'],
                    'c':['c0','c1','c2']}
                    ,index = [0,1,2])


df2 = pd.DataFrame({'d':['d2','d3','d4'],
                    'b':['b2','b3','b4'],
                    'c':['c0','c1','c2']}
                    ,index = [0,1,2])

pd.concat([df1,df2],ignore_index = True)

pd.concat([df1,df2], axis=1)

pd.concat([df1,df2], axis=1, join = 'inner')
pd.concat([df1,df2], axis=1, join = 'outer')



# merge 비슷함 . 함수이면서 메소드 이기도 함
pd.merge(df1, df2) # 메소드
df1.merge(df2)

df1 = pd.DataFrame({'key':['b','b','a','c','a','a','b'],
                    'data1':range(7)})

df2 = pd.DataFrame({'key':['b','b','d'],'data2':['A','B','D',]})


pd.merge(df1, df2 )
pd.merge(df2, df1 )

pd.merge(df1, df2, on = 'key' )
pd.merge(df1, df2,how = 'outer' ,on = 'key' ) #합집합
pd.merge(df1, df2,how = 'inner' ,on = 'key' ) # 교집합
pd.merge(df1, df2,how = 'left' ,on = 'key' ) #왼쪽 기준 왼쪽은 다나오게 
pd.merge(df1, df2,how = 'right' ,on = 'key' )


b = pd.read_clipboard()
class	teacher
1	kim
2	park
3	song
4	wong
5	youn

a = pd.read_csv("C:/python/python.txt"  )
a


pd.merge(a,b,how='outer',on='class')
a.iloc[12,]


#groupby 

df = a 

# view! 주소만 복사 같은 것 , 

df.groupby(['']).mean()

df %>% select(class,english) %>% 
group_by(class) %>% summarise(mean(english))

df
df.rename(columns={"class":'classes'},inplace = True)
df.columns("class":'classes')
df.groupby(['classes']).mean()["english"] # 인덱스 번호 붙히기

# class 예약어 
import pandas as pd 

df = pd.DataFrame({'A':[1,6], 'B':[2,7]})

df['c'] = [3,8]

df 

df.loc[2] = [1,2,3]


df['합계'] = df['A'] + df['B'] + df['C']
df['합계'] = df.A + df.B + df.C

import numpy as np

df.values() # 넘파이 형태로 변환 
df.loc['C'].value_counts()


df.isnull().sum()

# 결측치 안지 아닌지 보는 메소드 
# Null 은 값이 아니다. 


df = pd.read_csv("C:/python/python.txt")
df[df['english']<70 | df['math']>80]
mask = df[(df['english']<70 )| (df['math']>80)]

df[mask]


mask = df((df['class'] > 1 ) & 
          df[(df['class'] <5 )&(df['math']>80)  ]

class %in%(2,3,4)
mask = (df['class'] > 1) & (df['class'] < 5) & (df['math'] >= 80)
df[mask]
mask=([df['class']] in [1,2,3]) & (df['math']>=80)

##
df
df.query('math == 50') # 여기서는 대괄호 안들어가 dplyer 같은 늒미


df.query('math == 50 and classes == 1')

df.rename({"class":"classes"}, axis=1, inplace= True)

df
df.query('(classes== 1 or  classes == 2) and math >50' )
df.query('classes in[1,2,3] and math >50' )
df['science'] = df['science'].astype('str')

df.query("'science == 90'") # 문자로하면 안나옴  따옴표 써주기 
df.query("'science == 58'") 

df.query("classes in [2,3,4] and math >= 50")

df.groupby(by = 'classes').mean()['math']   

df.groupby( 'classes' ).max()['math']  


df.query('classes == [2,3]' ).groupby( 'classes' ).max()['math']
df.query('classes == [2, 3]').groupby('classes')['math'].max()

#  수학성적이 60점 ㅣ상인 학생에 대하여 영어성적의 반별평균은? 

df.query('math>60').groupby('classes').mean()['english']

python
numpy
pandas
시각화 




