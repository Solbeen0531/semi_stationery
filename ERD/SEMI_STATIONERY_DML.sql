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
 VALUES('ALL');
INSERT INTO GOTYPE
 VALUES('LIFESTYLE');
INSERT INTO GOTYPE
 VALUES('LETTERS');
COMMIT;
-----------------------------
INSERT INTO GOODS(GOID,GONM)
 VALUES('AL_LT001','솔빈편지지');
INSERT INTO GOODS(GOID,GONM)
 VALUES('AL_LS001','솔빈발판');
COMMIT;
-----------------------------
--INSERT INTO "BY_GOODS"
-- VALUES('솔빈 편지지',2000,car25,AL_LT001,1);
--INSERT INTO "BY_GOODS"
-- VALUES('솔빈 메모',3000,tea9,AL_MM002,1);
--COMMIT;
-------------------------------
