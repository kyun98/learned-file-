
DROP TABLE Orders ;
	DROP TABLE Book ;
	DROP TABLE Customer ;
	DROP TABLE Imported_Book ;



CREATE TABLE Book (
  bookid      NUMBER(2) PRIMARY KEY,
  bookname    VARCHAR2(40),
  publisher   VARCHAR2(40),
  price       NUMBER(8) 
);

CREATE TABLE  Customer (
  custid      NUMBER(2) PRIMARY KEY,  
  name        VARCHAR2(40),
  address     VARCHAR2(50),
  phone       VARCHAR2(20)
);


CREATE TABLE Orders (
  orderid NUMBER(2) PRIMARY KEY,
  custid  NUMBER(2) REFERENCES Customer(custid),
  bookid  NUMBER(2) REFERENCES Book(bookid),
  saleprice NUMBER(8) ,
  orderdate DATE
);
-- Book, Customer, Orders 데이터 생성
INSERT INTO Book VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO Book VALUES(2, '축구아는 여자', '나무수', 13000);
INSERT INTO Book VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO Book VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO Book VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO Book VALUES(6, '역도 단계별기술', '굿스포츠', 6000);
INSERT INTO Book VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO Book VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO Book VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO Book VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO Customer VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO Customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');  
INSERT INTO Customer VALUES (3, '장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO Customer VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO Customer VALUES (5, '박세리', '대한민국 대전',  NULL);
-- 주문(Orders) 테이블의 책값은 할인 판매를 가정함
INSERT INTO Orders VALUES (1, 1, 1, 6000, TO_DATE('2014-07-01','yyyy-mm-dd')); 
INSERT INTO Orders VALUES (2, 1, 3, 21000, TO_DATE('2014-07-03','yyyy-mm-dd'));
INSERT INTO Orders VALUES (3, 2, 5, 8000, TO_DATE('2014-07-03','yyyy-mm-dd')); 
INSERT INTO Orders VALUES (4, 3, 6, 6000, TO_DATE('2014-07-04','yyyy-mm-dd')); 
INSERT INTO Orders VALUES (5, 4, 7, 20000, TO_DATE('2014-07-05','yyyy-mm-dd'));
INSERT INTO Orders VALUES (6, 1, 2, 12000, TO_DATE('2014-07-07','yyyy-mm-dd'));
INSERT INTO Orders VALUES (7, 4, 8, 13000, TO_DATE( '2014-07-07','yyyy-mm-dd'));
INSERT INTO Orders VALUES (8, 3, 10, 12000, TO_DATE('2014-07-08','yyyy-mm-dd')); 
INSERT INTO Orders VALUES (9, 2, 10, 7000, TO_DATE('2014-07-09','yyyy-mm-dd')); 
INSERT INTO Orders VALUES (10, 3, 8, 13000, TO_DATE('2014-07-10','yyyy-mm-dd'));
-- 여기는 3장에서 사용되는 Imported_book 테이블

CREATE TABLE Imported_Book (
  bookid      NUMBER ,
  bookname    VARCHAR(40),
  publisher   VARCHAR(40),
  price       NUMBER(8) 
);
INSERT INTO Imported_Book VALUES(21, 'Zen Golf', 'Pearson', 12000);
INSERT INTO Imported_Book VALUES(22, 'Soccer Skills', 'Human Kinetics', 15000);

COMMIT;
-- EXIT
---------------
SELECT *
FROM BOOK;


1. 모든 도서의 이름과 가격을 검색하세요
SELECT BOOKNAME, PRICE FROM BOOK;


2. 모든 도서의 도서번호 도서이름 출ㅍ나사 가격을 검색하세요 
SELECT * FROM BOOK;

3. 도서 테이블에 있는 모든 출판사를 검색하세요 단 한번만 출력 

SELECT DISTINCT PUBLISHER
    FROM BOOK;

4. 가격이 20000원 미만 

SELECT PRICE 
FROM BOOK
where PRICE < 20000;

5. 책 가격이 만원에서 이만원 사이 

SELECT *
    FROM BOOK
    WHERE PRICE BETWEEN 10000 AND 20000;


6. 출판사가 굿스포츠 혹은 대한미디어 
SELECT *
FROM BOOK
WHERE PUBLISHER IN ('굿스포츠','대한미디어');


7. '축구의 역사' 의 출판사를 알아보기 

SELECT PUBLISHER ,BOOKNAME
FROM BOOK
WHERE BOOKNAME = '축구의 역사' ;

8. 도서 이름에 '축구' 가 포함된 출판사를 검색하세요 . 마침표 ; 오타 기호 어법 주의 

SELECT PUBLISHER , BOOKNAME
FROM BOOK
WHERE BOOKNAME LIKE '%축구%' ;



9. 왼쪽 두번째 위치에 구라는 문자열을 갖는 도서를 검색하시오 

SELECT   BOOKNAME
FROM BOOK
WHERE BOOKNAME LIKE '_구%';



10. 축구에 관한 도서 중 가격이 2만원 이상인 도서 
SELECT  BOOKNAME,PRICE
FROM BOOK
WHERE BOOKNAME LIKE '%축구%' AND PRICE >= 20000 ; 




11. 도서를 이름 순으로 검색하세요. 
SELECT * FROM BOOK 
ORDER BY BOOKNAME;


12. 가격순으로 하고 이름순으로 하세요 
SELECT * FROM BOOK 
ORDER BY PRICE, BOOKNAME;


13. 내림차순으로 하세요 . 
SELECT * FROM BOOK 
ORDER BY PRICE DESC , BOOKNAME;




14. 고객이 주문한 도서의 총 판매액을 구하시오 . 


select SUM(SALEPRICE)FROM orders ;


15. 2 번 고객이 주문한 도서의 총 판매액을 구하시오. 

SELECT SUM(SALEPRICE)
FROM  
ORDERS
WHERE CUSTID = 2 ; 

곡객이 주문한 도서의 총판매액 최저가 최고가를 구하시오 . 

SELECT SUM(SALEPRICE),ROUND(AVG(SALEPRICE)), MIN(SALEPRICE),MAX(SALEPRICE)
FROM  
ORDERS;

SELECT *FROM
ORDERS;

고객 별로 주문한 도서의 총 수량과 총 판매액 
SELECT SUM(SALEPRICE),ROUND(AVG(SALEPRICE)), MIN(SALEPRICE),MAX(SALEPRICE)
FROM  
ORDERS;

-- 고객별 총 도서수량 총 판매액 
SELECT COUNT(*), SUM(SALEPRICE)
 FROM ORDERS 
GROUP BY CUSTID;



SELECT COUNT(*) 
FROM ORDERS
WHERE SALEPRICE >=8000
GROUP BY CUSTID
HAVING COUNT(CUSTID) >= 2  ;




고객 테이블과 고객의 주문테이블에 관한 데이터를 모두 보이시오.  조인
SELECT *FROM CUSTOMER C , ORDERS O 
WHERE C.CUSTID= O.CUSTID ;


-- 테이블 합치기 
SELECT * FROM CUSTOMER C, ORDERS O
WHERE C.CUSTID = O.CUSTID
ORDER BY C.CUSTID;

-고객 주문한 도서 


SELECT NAME , SALEPRICE
FROM CUSTOMER C, ORDERS O 
WHERE C.CUSTID = O .CUSTID ; 




-- 모든 도서의 총판매액과 그 것을 고객별로 정렬 


SELECT C.NAME , SUM(SALEPRICE)
FROM CUSTOMER C, ORDERS O
WHERE C.CUSTID = O .CUSTID
GROUP BY C.NAME
ORDER BY C.NAME;

SELECT C.NAME, SUM(O.SALEPRICE)
FROM CUSTOMER C, ORDERS O
WHERE C.CUSTID = O.CUSTID
GROUP BY C.NAME
ORDER BY C.NAME;



- 고객의 이름과 고객이 주문한 도서의 이름을 구하시오 . 
SELECT C.NAME, B.BOOKNAME
FROM CUSTOMER C, BOOK B,ORDERS O  
WHERE O.BOOKID = B.BOOKID AND 
C.CUSTID = O.CUSTID;

SELECT NAME, BOOKNAME
FROM CUSTOMER NATURAL JOIN ORDERS NATURAL JOIN BOOK;





가격이 2만원인 도서를 주문한 고객의 이름과 도서의 이름 
SELECT C.NAME, B.BOOKNAME
FROM CUSTOMER C, BOOK B,ORDERS O  
WHERE O.BOOKID = B.BOOKID AND 
C.CUSTID = O.CUSTID
AND O.SALEPRICE = 20000 ;

- 도서를 구매하지 않은 고객을포함하여 고객의 이름과 고객이 주문한 도서의 판매가격을 구하시오 . 
SELECT C.NAME, O.SALEPRICE
FROM CUSTOMER C, ORDERS O
WHERE C.CUSTID = O.CUSTID(+);



- 가상 비싼 보서의 비름을 보이시오 
SELECT B.BOOKNAME , O.SALEPRICE
FROM BOOK B , ORDERS O 
WHERE B.BOOKID = O.BOOKID 
AND O.SALEPRICE = (SELECT MAX(O.SALEPRICE) FROM ORDERS) ;



SELECT B.BOOKNAME
FROM BOOK B
WHERE  b.price = (SELECT MAX(PRICE) FROM BOOK);



SELECT NAME 
FROM CUSTOMER 
WHERE CUSTID IN (SELECT CUSTID FROM ORDERS);






--- 1. 모든 도서의 이름과 가격을 검색하세요 


SELECT BOOKNAME, PRICE FROM BOOK;


2. 도서 판매 건수 
SELECT COUNT(*) FROM ORDERS;


- 3. 고객과 고객 주문에 관한 데이터 
SELECT* 
FROM ORDERS O , CUSTOMER C
WHERE O.CUSTID = C.CUSTID;

-- 4. 대한미디어에서 출판한 도서를 구매한 고객의 이름을 보이시오.  


SELECT C.NAME 
FROM ORDERS O , CUSTOMER C, BOOK B 
WHERE O.CUSTID = C.CUSTID AND B.BOOKID = O.BOOKID AND B.PUBLISHER = '대한미디어';


5. BOOK 테이블레 새로운 도서 삽입 하세요 . 출간 가격 

INSERT INTO Book VALUES(11, '스포츠 의학', '한솔의학서적', 90000);


SELECT * FROM BOOK;

COMMIT



