--DROP TABLE PRODUCT CASCADE CONSTRAINTS;
--DROP TABLE MEMBER CASCADE CONSTRAINTS;
--DROP TABLE BASKET CASCADE CONSTRAINTS;
--DROP TABLE BOARD CASCADE CONSTRAINTS;

CREATE TABLE PRODUCT(
		PRODUCT_ID                    		NUMERIC(10)		 	 NULL ,
		BARCODE	                  			VARCHAR(40)		 NULL ,
		PRODUCT_NAME                  		VARCHAR(40)		 NULL ,
		COMPANY                       		VARCHAR(40)		 NULL ,
		PRICE								NUMERIC(10)		 NULL ,
		KEYWORD                       		VARCHAR(50)		 NULL ,
		PRODUCT_IMAGE                 		VARCHAR(255)		 NULL ,
		DETAILS                       		VARCHAR(1000)		 NULL
		);
ALTER TABLE PRODUCT ADD CONSTRAINT IDX_PRODUCT_PK PRIMARY KEY (PRODUCT_ID);

CREATE TABLE MEMBER(
		USERID                        		VARCHAR(15) NULL,
		NAME                          		VARCHAR(20)	NOT NULL,
		PASSWORD                      		VARCHAR(20)	NOT NULL,
		PHONE                         		VARCHAR(15),
		ADDRESS                       		VARCHAR(100),
		DEPT_NAME							VARCHAR(50)
);
ALTER TABLE MEMBER ADD CONSTRAINT IDX_MEMBER_PK PRIMARY KEY (USERID);

CREATE TABLE BASKET(
		ORDER_NUMBER                  		NUMERIC(10) 	 NULL,
		PRODUCT_ID                    		NUMERIC(10)		 NULL ,
		QUANTITY                      		NUMERIC(4)		 NULL ,
		ORDER_PRICE                   		NUMERIC(10)		 NULL ,
		USERID                        		VARCHAR(15)		 NULL 
);

CREATE TABLE BOARD(
		BBSNO                         		NUMERIC 		 NULL,
		NAME                          		VARCHAR(20)		 NULL ,
		PASSWORD                      		VARCHAR(15)		 NULL ,
		EMAIL                         		VARCHAR(50)		 NULL ,
		SUBJECT                       		VARCHAR(50)		 NULL ,
		CONTENT                       		VARCHAR(4000)		 NULL ,
		WRITEDATE                     		DATE		 NULL ,
		MASTERID                      		NUMERIC		 NULL ,
		READCOUNT                     		NUMERIC		 NULL ,
		REPLYNUMBER                   		NUMERIC		 NULL ,
		REPLYSTEP                     		NUMERIC		 NULL 
);
ALTER TABLE BOARD ADD CONSTRAINT IDX_BOARD_PK PRIMARY KEY (BBSNO);
ALTER TABLE BASKET ADD CONSTRAINT IDX_BASKET_PK PRIMARY KEY (ORDER_NUMBER);
ALTER TABLE BASKET ADD CONSTRAINT IDX_BASKET_FK0 FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT (PRODUCT_ID);
ALTER TABLE BASKET ADD CONSTRAINT IDX_BASKET_FK1 FOREIGN KEY (USERID) REFERENCES MEMBER (USERID);
