DESC "GOTYPE";
DESC "BY_HISTORI";
DESC "BY_GOODS";
DESC "BY_REVIEW";
DESC "BY_QNA";
DESC "MEMBER";
DESC "GOODS";

SELECT * FROM "GOTYPE";
SELECT * FROM "BY_HISTORI";
SELECT * FROM "BY_GOODS";
SELECT * FROM "BY_REVIEW";
SELECT * FROM "BY_QNA";
SELECT * FROM "MEMBER";
SELECT * FROM "GOODS";
-----------------------------
INSERT INTO GOTYPE
 VALUES(0,'생활용품');
INSERT INTO GOTYPE
 VALUES(1,'편지지');
COMMIT;
-----------------------------
INSERT INTO GOODS
 VALUES('AL_LT001','솔빈편지지',4000,'상품이미지',1);
INSERT INTO GOODS
 VALUES('AL_LS001','솔빈발판',6000,'상품이미지',0);
COMMIT;
-----------------------------
--INSERT INTO "BY_GOODS"
-- VALUES('솔빈 편지지',2000,car25,AL_LT001,1);
--INSERT INTO "BY_GOODS"
-- VALUES('솔빈 메모',3000,tea9,AL_MM002,1);
--COMMIT;
-------------------------------
SELECT GOID,GONM, GOPRICE, GOIMG, GOTY, GT.GOTYNAME
 FROM GOODS G JOIN GOTYPE GT USING(GOTY);

SELECT GONM, GOPRICE, GOIMG
 FROM GOODS G JOIN GOTYPE GT USING(GOTY) 
 WHERE GOTY = 0;
 
SELECT GONM, GOPRICE, GOIMG, GOTY
 FROM GOODS 
 WHERE GOTY = 1;