
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
-- Book, Customer, Orders ������ ����
INSERT INTO Book VALUES(1, '�౸�� ����', '�½�����', 7000);
INSERT INTO Book VALUES(2, '�౸�ƴ� ����', '������', 13000);
INSERT INTO Book VALUES(3, '�౸�� ����', '���ѹ̵��', 22000);
INSERT INTO Book VALUES(4, '���� ���̺�', '���ѹ̵��', 35000);
INSERT INTO Book VALUES(5, '�ǰ� ����', '�½�����', 8000);
INSERT INTO Book VALUES(6, '���� �ܰ躰���', '�½�����', 6000);
INSERT INTO Book VALUES(7, '�߱��� �߾�', '�̻�̵��', 20000);
INSERT INTO Book VALUES(8, '�߱��� ��Ź��', '�̻�̵��', 13000);
INSERT INTO Book VALUES(9, '�ø��� �̾߱�', '�Ｚ��', 7500);
INSERT INTO Book VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO Customer VALUES (1, '������', '���� ��ü��Ÿ', '000-5000-0001');
INSERT INTO Customer VALUES (2, '�迬��', '���ѹα� ����', '000-6000-0001');  
INSERT INTO Customer VALUES (3, '��̶�', '���ѹα� ������', '000-7000-0001');
INSERT INTO Customer VALUES (4, '�߽ż�', '�̱� Ŭ������', '000-8000-0001');
INSERT INTO Customer VALUES (5, '�ڼ���', '���ѹα� ����',  NULL);
-- �ֹ�(Orders) ���̺��� å���� ���� �ǸŸ� ������
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
-- ����� 3�忡�� ���Ǵ� Imported_book ���̺�

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


1. ��� ������ �̸��� ������ �˻��ϼ���
SELECT BOOKNAME, PRICE FROM BOOK;


2. ��� ������ ������ȣ �����̸� �⤽���� ������ �˻��ϼ��� 
SELECT * FROM BOOK;

3. ���� ���̺� �ִ� ��� ���ǻ縦 �˻��ϼ��� �� �ѹ��� ��� 

SELECT DISTINCT PUBLISHER
    FROM BOOK;

4. ������ 20000�� �̸� 

SELECT PRICE 
FROM BOOK
where PRICE < 20000;

5. å ������ �������� �̸��� ���� 

SELECT *
    FROM BOOK
    WHERE PRICE BETWEEN 10000 AND 20000;


6. ���ǻ簡 �½����� Ȥ�� ���ѹ̵�� 
SELECT *
FROM BOOK
WHERE PUBLISHER IN ('�½�����','���ѹ̵��');


7. '�౸�� ����' �� ���ǻ縦 �˾ƺ��� 

SELECT PUBLISHER ,BOOKNAME
FROM BOOK
WHERE BOOKNAME = '�౸�� ����' ;

8. ���� �̸��� '�౸' �� ���Ե� ���ǻ縦 �˻��ϼ��� . ��ħǥ ; ��Ÿ ��ȣ ��� ���� 

SELECT PUBLISHER , BOOKNAME
FROM BOOK
WHERE BOOKNAME LIKE '%�౸%' ;



9. ���� �ι�° ��ġ�� ����� ���ڿ��� ���� ������ �˻��Ͻÿ� 

SELECT   BOOKNAME
FROM BOOK
WHERE BOOKNAME LIKE '_��%';



10. �౸�� ���� ���� �� ������ 2���� �̻��� ���� 
SELECT  BOOKNAME,PRICE
FROM BOOK
WHERE BOOKNAME LIKE '%�౸%' AND PRICE >= 20000 ; 




11. ������ �̸� ������ �˻��ϼ���. 
SELECT * FROM BOOK 
ORDER BY BOOKNAME;


12. ���ݼ����� �ϰ� �̸������� �ϼ��� 
SELECT * FROM BOOK 
ORDER BY PRICE, BOOKNAME;


13. ������������ �ϼ��� . 
SELECT * FROM BOOK 
ORDER BY PRICE DESC , BOOKNAME;




14. ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ� . 


select SUM(SALEPRICE)FROM orders ;


15. 2 �� ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�. 

SELECT SUM(SALEPRICE)
FROM  
ORDERS
WHERE CUSTID = 2 ; 

��� �ֹ��� ������ ���Ǹž� ������ �ְ��� ���Ͻÿ� . 

SELECT SUM(SALEPRICE),ROUND(AVG(SALEPRICE)), MIN(SALEPRICE),MAX(SALEPRICE)
FROM  
ORDERS;

SELECT *FROM
ORDERS;

�� ���� �ֹ��� ������ �� ������ �� �Ǹž� 
SELECT SUM(SALEPRICE),ROUND(AVG(SALEPRICE)), MIN(SALEPRICE),MAX(SALEPRICE)
FROM  
ORDERS;

-- ���� �� �������� �� �Ǹž� 
SELECT COUNT(*), SUM(SALEPRICE)
 FROM ORDERS 
GROUP BY CUSTID;



SELECT COUNT(*) 
FROM ORDERS
WHERE SALEPRICE >=8000
GROUP BY CUSTID
HAVING COUNT(CUSTID) >= 2  ;




�� ���̺�� ���� �ֹ����̺� ���� �����͸� ��� ���̽ÿ�.  ����
SELECT *FROM CUSTOMER C , ORDERS O 
WHERE C.CUSTID= O.CUSTID ;


-- ���̺� ��ġ�� 
SELECT * FROM CUSTOMER C, ORDERS O
WHERE C.CUSTID = O.CUSTID
ORDER BY C.CUSTID;

-�� �ֹ��� ���� 


SELECT NAME , SALEPRICE
FROM CUSTOMER C, ORDERS O 
WHERE C.CUSTID = O .CUSTID ; 




-- ��� ������ ���Ǹžװ� �� ���� ������ ���� 


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



- ���� �̸��� ���� �ֹ��� ������ �̸��� ���Ͻÿ� . 
SELECT C.NAME, B.BOOKNAME
FROM CUSTOMER C, BOOK B,ORDERS O  
WHERE O.BOOKID = B.BOOKID AND 
C.CUSTID = O.CUSTID;

SELECT NAME, BOOKNAME
FROM CUSTOMER NATURAL JOIN ORDERS NATURAL JOIN BOOK;





������ 2������ ������ �ֹ��� ���� �̸��� ������ �̸� 
SELECT C.NAME, B.BOOKNAME
FROM CUSTOMER C, BOOK B,ORDERS O  
WHERE O.BOOKID = B.BOOKID AND 
C.CUSTID = O.CUSTID
AND O.SALEPRICE = 20000 ;

- ������ �������� ���� ���������Ͽ� ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ� . 
SELECT C.NAME, O.SALEPRICE
FROM CUSTOMER C, ORDERS O
WHERE C.CUSTID = O.CUSTID(+);



- ���� ��� ������ ���� ���̽ÿ� 
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






--- 1. ��� ������ �̸��� ������ �˻��ϼ��� 


SELECT BOOKNAME, PRICE FROM BOOK;


2. ���� �Ǹ� �Ǽ� 
SELECT COUNT(*) FROM ORDERS;


- 3. ���� �� �ֹ��� ���� ������ 
SELECT* 
FROM ORDERS O , CUSTOMER C
WHERE O.CUSTID = C.CUSTID;

-- 4. ���ѹ̵��� ������ ������ ������ ���� �̸��� ���̽ÿ�.  


SELECT C.NAME 
FROM ORDERS O , CUSTOMER C, BOOK B 
WHERE O.CUSTID = C.CUSTID AND B.BOOKID = O.BOOKID AND B.PUBLISHER = '���ѹ̵��';


5. BOOK ���̺� ���ο� ���� ���� �ϼ��� . �Ⱓ ���� 

INSERT INTO Book VALUES(11, '������ ����', '�Ѽ����м���', 90000);


SELECT * FROM BOOK;

COMMIT



