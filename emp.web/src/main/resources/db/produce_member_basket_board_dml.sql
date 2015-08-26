INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, ADDRESS)
VALUES ('heojk', '허진경', '1234', '010-3402-7902', '서울시 구로구');

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, ADDRESS)
VALUES ('user1', '홍길동', 'user1234', '010-1234-5678', '서울시 강남구');

INSERT INTO BOARD (BBSNO, NAME, PASSWORD, EMAIL, SUBJECT, CONTENT, WRITEDATE, MASTERID, READCOUNT, REPLYNUMBER, REPLYSTEP)
VALUES (1, '홍길동', '1234', 'hong@hong.dom', '자유게시판입니다.', '누구나 자유롭게 글을 작성할 수 있습니다', '2015-08-19', 1, 0, 0, 0);
INSERT INTO BOARD (BBSNO, NAME, PASSWORD, EMAIL, SUBJECT, CONTENT, WRITEDATE, MASTERID, READCOUNT, REPLYNUMBER, REPLYSTEP)
VALUES (2, '허진경', '1234', 'hjk7902@gmail.com', '제목입니다.', '내용입니다.\n누구나 자유롭게 글을 작성할 수 있습니다', '2015-08-20', 2, 0, 0, 0);
INSERT INTO BOARD (BBSNO, NAME, PASSWORD, EMAIL, SUBJECT, CONTENT, WRITEDATE, MASTERID, READCOUNT, REPLYNUMBER, REPLYSTEP)
VALUES (3, 'heojk', '1', 'heojk@daum.net', '[Re]뭐라고요.', '게시글의 댓글입니다.', '2015-08-21', 1, 0, 1, 1);

COMMIT;


--CatergoryList
--1. food

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1000,8812307223742,'아이비','해태',4500,'food 음료수 푸드 헛개수 빵 과자', 'http://192.168.43.92:8080/shop/images/product/ivy.jpg', '(10g 가격 : 119원)');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1001,8801001234742,'불닭떡볶이','풀무원',3000,'food 음료수 푸드 헛개수 빵 과자', 'http://192.168.43.92:8080/shop/images/product/dduck.jpg','(100g 가격 : 1,017원)');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1002,8801007223742,'헛개수','CJ',2480,'food 음료수 푸드 헛개수 빵 과자','http://192.168.43.92:8080/shop/images/product/hut.jpg','(100ml 가격 : 166원)');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1003,8801382131038,'하늘보리','웅진',1980,'food 음료수 푸드 헛개수 빵 과자', 'http://192.168.43.92:8080/shop/images/product/bori.jpg','(100ml 가격 : 132원)');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1004,8801005678742,'칙촉','롯데제과',3800,'food 음료수 푸드 헛개수 빵 과자','http://192.168.43.92:8080/shop/images/product/chic.jpg','(10g 가격 : 212원)');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1005,880109876742,'3분 카레','오뚜기',2380,'food 음료수 푸드 헛개수 빵 과자','http://192.168.43.92:8080/shop/images/product/care.jpg','3분이면 카레 완성! 맛있어요');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1006,8801007223432,'양조간장','샘표',2700,'food 음료수 푸드 헛개수 빵 과자','http://192.168.43.92:8080/shop/images/product/ganjang.jpg','(100ml 가격 : 406원)');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1007,8801007223232, '토스트싞빵', '이마트',2300,'food 음료수 푸드 헛개수 빵 과자','http://192.168.43.92:8080/shop/images/product/bbang.jpg','(10g 가격 : 29원) ');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1008,8801382877038, '신라면 컵', '농심', 700, 'food 음료수 푸드 헛개수 빵 과자','http://192.168.43.92:8080/shop/images/product/cup.jpg','(1개 가격 : 700원)');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1009,8801007227742, '동원참치', '동원', 4980, 'food 음료수 푸드 헛개수 빵 과자','http://192.168.43.92:8080/shop/images/product/chamchi.jpg','(10g 가격 : 125원)');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (1010,8801007223756, '속이 보이는 한단 딸기', '국산', 12800, 'food 음료수 푸드 헛개수 빵 과자','http://192.168.43.92:8080/shop/images/product/ddalgi.jpg','(100g 가격 : 1,423원)');




--2. sport

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2000,22345670,'축구화','나이키',108000,'스포츠 야구 축구 sport','http://192.168.43.92:8080/shop/images/product/nike.jpg','메시가 신는 완전 편한 축구화에요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2001,22345671,'축구공','푸마',12000,'스포츠 야구 축구 sport','http://192.168.43.92:8080/shop/images/product/ball.jpg','가볍고 잘 터지지 않아요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2002,22345682,'야구 글러브','썬버드',58000,'스포츠 야구 축구 sport','http://192.168.43.92:8080/shop/images/product/glove.jpg','소가죽 투수용 12인치 글러브에요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2003,22345683,'야구 방망이','맥스',130000,'스포츠 야구 축구 sport','http://192.168.43.92:8080/shop/images/product/bat.jpg','단풍나무로 만든 방망이라 잘 부러지지 않아요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2004,22345684,'자전거','알톤',114500,'스포츠 야구 축구 sport','http://192.168.43.92:8080/shop/images/product/jajun.jpg','온라인 전용 모델로 2000대 한정입니다.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2005,22345685,'고글','나이키',23000,'스포츠 야구 축구 sport','http://192.168.43.92:8080/shop/images/product/gogle.jpg','공기 순환 시스템으로 쾌적하게 스키를 즐길 수 있어요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2006,22345686,'보드복 바지','아디다스',22500,'스포츠 야구 축구 sport','http://192.168.43.92:8080/shop/images/product/bod.jpg','고어텍스 사용해서 방수,방풍 잘되요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2007,22432685,'등산화','빅텐',58900,'스포츠 야구 축구 sport','http://192.168.43.92:8080/shop/images/product/mtshoe.jpg','고어텍스 사용해서 방수 잘되고 발이 편해요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2008,22412585, '트레이닝 바지','아디다스', 45000,'스포츠 야구 축구 sport','http://192.168.43.92:8080/shop/images/product/trpant.jpg','운동할 때 진짜 편해요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2009,27685686,'물안경','쿠키',23500,'스포츠 야구 축구북 sport','http://192.168.43.92:8080/shop/images/product/glass.jpg','수영할 때 필수품! 한번 써보세요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (2010,27645686,'수영복','턴',25500,'스포츠 야구 축구 sport','http://192.168.43.92:8080/shop/images/product/su.jpg','박태환 부럽지 않아요.');


--3. office
insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3000,32345670,'A4','한솔',4500,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/a4.jpg','고품질 종이입니다.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3001,32345671,'볼펜','모나미',4500,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/pen.jpg','국민 볼펜 잘 써집니다.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3002,32345682,'딱풀','왕자',850,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/ddak.jpg','뭐든지 붙여요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3003,32345683,'가위','제도',1000,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/gawi.jpg','잘 잘려요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3004,32345684,'수정 테이브','이마트',500,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/tape.jpg','잘 지워져요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3005,32345685,'노트','문화',3000,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/note.jpg','고품질 종이입니다.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3006,32325686,'코팅지','장미',2500,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/coting.jpg','코팅할 때 필수품.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3007,32325687,'포스트잇','3M',2000,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/post.jpg','메모 할 때 좋아요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3008,32325688,'커터','장미',1500,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/cutter.jpg','잘 잘려요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3009,32325689,'30단 서류함','카파맥스',52500,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/surap.jpg','서류 보관에 좋아요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (3010,32325690,'테이프','아멕스',2500,'office 오피스 사무용품 종이','http://192.168.43.92:8080/shop/images/product/ttape.jpg','잘 붙어요.');


--4. baby kids 아기 로션 기저귀 애들&kids

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4000,42345670,'베이비 로션','존슨즈베이비',14500,'baby kids 아기 로션 기저귀 애들 kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/baby kids 아기 로션 기저귀 애들lotion.jpg','보습력 좋고 아이에게 무해해요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4001,42345671,'분유','매일',24500,'baby kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/babymilk.jpg','아기들 입맛에 딱 맞아요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4002,42345682,'물티슈','큐티',1850,'baby kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/tisu.jpg','아기들에게 무해해요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4003,42345683,'페퍼민트물티슈','깨끗한나라',5900,'baby kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/watisu.jpg','깨끗한 물티슈에요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4004,42345684,'아임키즈 샴푸','퓨어가닉',14500,'baby kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/babelo.jpg','아이가 좋아하는 향이나요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4005,42345685,'아기 부츠', '세왕',33000,'baby kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/babebo.jpg','아기들이 신는 부츠에요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4006,42345686,'PP신생아수유세트','아벤트',82000,'baby kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/suu.jpg','이가 나기시작하는 시기에 맞게 단단함을 달리해서 아기가 힘차게 빨 수 있도록 도와줍니다.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4007,42345681,'유모차', '치코',263000,'baby kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/umo.jpg','편안한 유모차에요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4008,42345625,'놀이방 매트', '뽀로로',13000,'baby kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/mat.jpg','넘어져도 다치치 않아요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4009,42345643,'매직팬티', '하기스',3000,'baby kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/magicpan.jpg','흡수가 잘되요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (4010,42345615,'베이비 샴푸', '궁중비책',3000,'baby kids 아기 로션 기저귀 애들','http://192.168.43.92:8080/shop/images/product/basom.jpg','두피에 자극이 없어요.');

--5. household

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5000,52345620,'화이트리드디퓨저', '자주',33000,'householde 디퓨저 향수','http://192.168.43.92:8080/shop/images/product/difu.jpg','향기가 좋아요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5001,52345621,'구스다운이블', '이마트',63000,'householde 이불 구스다운','http://192.168.43.92:8080/shop/images/product/ebul.jpg','푹신푹신 잠이 잘와요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5002,52345622,'매트리스', '에몬스홈',23000,'householde 매트리스 침대 가구','http://192.168.43.92:8080/shop/images/product/matri.jpg','싱글 사이즈에요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5003,52345623,'카페트', '루마인홈',56000,'householde 카페트 매트 가정','http://192.168.43.92:8080/shop/images/product/capet.jpg','고급스러운 디자인입니다.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5004,52345624,'베개커버', '헬렌스타인',4800,'householde 베개커버 커버 가정','http://192.168.43.92:8080/shop/images/product/cover.jpg','심플한 디자인 이뻐요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5005,52345625,'의자', '시디즈',129000,'householde 의자 시디즈','http://192.168.43.92:8080/shop/images/product/chair.jpg','공부에 집중할 수 있는 의자.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5006,52345626,'3단 책장', '삼정물산',33000,'householde 책장 3딘 삼정물산','http://192.168.43.92:8080/shop/images/product/jang.jpg','책을 많이 수납할 수 잇어요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5007,52345627,'4단 책장', '삼정물산',43000,'householde 책장 3딘 삼정물산','http://192.168.43.92:8080/shop/images/product/jang4.jpg','책을 더 많이 수납할 수 있어요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5008,52345628,'신발 정리 렉', '우석',24000,'householde 신발 정리 렉 우석','http://192.168.43.92:8080/shop/images/product/sin.jpg','신발 정리에 도움되요.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5009,52345629,'싱글 신발 정리 렉', '우석',13000,'householde 신발 정리 렉 우석 싱글','http://192.168.43.92:8080/shop/images/product/sin2.jpg','간편한 신발 정리.');

insert into product (PRODUCT_ID, BARCODE, PRODUCT_NAME, COMPANY, PRICE, KEYWORD, PRODUCT_IMAGE, DETAILS)
values (5010,52345610,'부츠 홀더', '우석',3000,'householde 신발 정리 렉 우석 부츠 홀더','http://192.168.43.92:8080/shop/images/product/hol.jpg','부츠 홀더에요.');


commit;

--select * from product;
