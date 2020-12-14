
/* Drop Tables */

DROP TABLE cmt CASCADE CONSTRAINTS;
DROP TABLE logindata CASCADE CONSTRAINTS;
DROP TABLE report CASCADE CONSTRAINTS;
DROP TABLE scrap CASCADE CONSTRAINTS;
DROP TABLE porum CASCADE CONSTRAINTS;
DROP TABLE selldata CASCADE CONSTRAINTS;
DROP TABLE customer CASCADE CONSTRAINTS;
DROP TABLE game CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE stocks CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE cmt
(
	cmt_uid number NOT NULL,
	cmt_regdate date NOT NULL,
	cmt_content clob NOT NULL,
	cmt_up number NOT NULL,
	cmt_down number NOT NULL,
	cus_uid number NOT NULL,
	cmt_nickname varchar2(30) NOT NULL,
	por_uid number NOT NULL,
	PRIMARY KEY (cmt_uid)
);


CREATE TABLE customer
(
	cus_uid number NOT NULL,
	cus_id varchar2(20) NOT NULL UNIQUE,
	cus_pw varchar2(20) NOT NULL,
	cus_nickname varchar2(20) NOT NULL UNIQUE,
	cus_name varchar2(20) NOT NULL,
	cus_gender varchar2(10) NOT NULL,
	cus_birth varchar2(20) NOT NULL,
	cus_money number NOT NULL,
	cus_stack number NOT NULL,
	cus_icon number NOT NULL,
	PRIMARY KEY (cus_uid)
);


CREATE TABLE game
(
	game_uid number NOT NULL,''
	game_name varchar2(40) NOT NULL,
	PRIMARY KEY (game_uid)
);


CREATE TABLE logindata
(
	login_uid number NOT NULL,
	login_regdate date NOT NULL,
	login_ip varchar2(20) NOT NULL,
	login_setting varchar2(20) NOT NULL,
	cus_uid number NOT NULL,
	PRIMARY KEY (login_uid)
);


CREATE TABLE porum
(
	por_uid number NOT NULL,
	por_regdate date NOT NULL,
	por_subject varchar2(40) NOT NULL,
	por_content clob,
	/*por_nickname varchar2(30) NOT NULL,*/
	por_viewcnt number NOT NULL,
	por_up number NOT NULL,
	por_down number NOT NULL,
	por_report number NOT NULL,
	cus_uid number NOT NULL,
	cus_nickname varchar2(20) NOT NULL,
	stock_uid number NOT NULL,
	PRIMARY KEY (por_uid)
);


CREATE TABLE product
(
	pro_uid number NOT NULL,
	pro_name varchar2(30) NOT NULL,
	pro_subject varchar2(20) NOT NULL,
	pro_cnt number NOT NULL,
	pro_price number NOT NULL,
	pro_image clob NOT NULL,
	PRIMARY KEY (pro_uid)
);


CREATE TABLE report
(
	repo_uid number NOT NULL,
	repo_subject clob NOT NULL,
	repo_content clob NOT NULL,
	repo_poruid number NOT NULL,
	cus_uid number NOT NULL,
	por_uid number NOT NULL,
	PRIMARY KEY (repo_uid)
);


CREATE TABLE scrap
(
	cus_uid number NOT NULL,
	por_uid number NOT NULL,
	scrap_uid number NOT NULL,
	scrap_subject varchar2(20) NOT NULL,
	scrap_userid varchar2(20) NOT NULL,
	scrap_regdate date NOT NULL,
	PRIMARY KEY (scrap_uid)
);


CREATE TABLE selldata
(
	pro_uid number NOT NULL,
	cus_uid number NOT NULL,
	sell_uid number NOT NULL,
	sell_type number NOT NULL,
	sell_content clob NOT NULL,
	sell_regdate date NOT NULL,
	PRIMARY KEY (sell_uid)
);


CREATE TABLE stocks
(
	stock_uid number NOT NULL,
	stock_name varchar2(30) NOT NULL,
	PRIMARY KEY (stock_uid)
);



/* Create Foreign Keys */

ALTER TABLE cmt
	ADD FOREIGN KEY (cus_uid)
	REFERENCES customer (cus_uid)
;


ALTER TABLE logindata
	ADD FOREIGN KEY (cus_uid)
	REFERENCES customer (cus_uid)
;


ALTER TABLE porum
	ADD FOREIGN KEY (cus_uid)
	REFERENCES customer (cus_uid)
;

ALTER TABLE porum
	ADD FOREIGN KEY (cus_nickname)
	REFERENCES customer (cus_nickname)
;


ALTER TABLE report
	ADD FOREIGN KEY (cus_uid)
	REFERENCES customer (cus_uid)
;


ALTER TABLE scrap
	ADD FOREIGN KEY (cus_uid)
	REFERENCES customer (cus_uid)
;


ALTER TABLE selldata
	ADD FOREIGN KEY (cus_uid)
	REFERENCES customer (cus_uid)
;


ALTER TABLE cmt
	ADD FOREIGN KEY (por_uid)
	REFERENCES porum (por_uid)
;


ALTER TABLE report
	ADD FOREIGN KEY (por_uid)
	REFERENCES porum (por_uid)
;


ALTER TABLE scrap
	ADD FOREIGN KEY (por_uid)
	REFERENCES porum (por_uid)
;


ALTER TABLE selldata
	ADD FOREIGN KEY (pro_uid)
	REFERENCES product (pro_uid)
;


ALTER TABLE porum
	ADD FOREIGN KEY (stock_uid)
	REFERENCES stocks (stock_uid)
;

/* Create Sequence*/
CREATE SEQUENCE CUSTOMER_SEQ;
CREATE SEQUENCE PORUM_SEQ;
CREATE SEQUENCE PRODUCT_SEQ;
CREATE SEQUENCE STOCKS_SEQ;
CREATE SEQUENCE STOCKS_SEQ_CO increment by 1 start with 100;  -- 시작값 100
/* Drop Sequence*/

DROP SEQUENCE CUSTOMER_SEQ;
DROP SEQUENCE PORUM_SEQ;
DROP SEQUENCE PRODUCT_SEQ;
DROP SEQUENCE STOCKS_SEQ;
DROP SEQUENCE STOCKS_SEQ_CO;

/* 테스트용 */
INSERT INTO CUSTOMER 
	VALUES	(CUSTOMER_SEQ.nextval, 'jjh', '1234', '닉넴', '장정호' ,'남', '1994-01-03', 10, 1, 5);

INSERT INTO PORUM 
	VALUES (PORUM_SEQ.nextval, sysdate, '공지사항', '공지사항입니다', 1, 10, 0, 0, 1, '닉넴', 1); /*맨 뒤의 숫자가 stock uid */
																				/* 1~99 가 게시판 100부터는 코인*/
INSERT INTO PORUM 
	VALUES (PORUM_SEQ.nextval, sysdate, '수익게시판 테스트', '수익테스트중',  1, 10, 0, 0, 1, '닉넴', 2);
INSERT INTO PORUM 
	VALUES (PORUM_SEQ.nextval, sysdate, '수익 테스트', '익절중', 1, 10, 0, 0, 1, '닉넴', 2);

INSERT INTO PORUM 
	VALUES (PORUM_SEQ.nextval, sysdate, '자유게시판 테스트', '자유테스트중',  1, 10, 0, 0, 1, '닉넴', 3);
	
INSERT INTO PRODUCT 
	VALUES (PRODUCT_SEQ.nextval,'흑우',10, 1, 100,'<p><img alt="" src="/SemiProject/chkupload/r1.jpg" style="width: 220px; height: 220px;" /></p>');


INSERT INTO STOCKS 
	VALUES (STOCKS_SEQ.nextval, '공지사항');
INSERT INTO STOCKS 
	VALUES (STOCKS_SEQ.nextval, '수익게시판');
INSERT INTO STOCKS 
	VALUES (STOCKS_SEQ.nextval, '자유게시판');

/**/
INSERT INTO STOCKS 
	VALUES (STOCKS_SEQ_CO.nextval, '비트코인');
/**/

/* CUSTOMER 조회 */
SELECT 
	CUS_UID "uid", CUS_ID id, CUS_PW pw, CUS_NICKNAME nickname, CUS_NAME name, CUS_GENDER gender, CUS_BIRTH birth, CUS_MONEY money, CUS_STACK stack, CUS_ICON icon
FROM 
	CUSTOMER
WHERE
	CUS_UID = 1;

/* PORUM 조회*/
SELECT POR_UID "uid", POR_REGDATE, POR_SUBJECT, CUS_NICKNAME FROM PORUM WHERE STOCK_UID = 2;
	


SELECT * FROM CUSTOMER;
SELECT * FROM PORUM;
SELECT * FROM STOCKS;

 /* 현재 시퀀스값 확인 */
SELECT CUSTOMER_SEQ.CURRVAL FROM DUAL;
SELECT STOCKS_SEQ.CURRVAL FROM DUAL;
SELECT STOCKS_SEQ_CO.CURRVAL FROM DUAL;

