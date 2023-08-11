DROP TABLE "BY_HISTORI";
DROP TABLE "BY_GOODS";
DROP TABLE "BY_REVIEW";
DROP TABLE "BY_QNA";
DROP TABLE "MEMBER";
DROP TABLE "GOODS";
DROP TABLE "GOTYPE";

CREATE TABLE "MEMBER" (
	"MID"	VARCHAR2(20)		NOT NULL,
	"MNIC"	VARCHAR2(20)		NOT NULL,
	"MPW"	VARCHAR2(20)		NOT NULL,
	"MADDRESS"	VARCHAR2(1000)		NULL
);

CREATE TABLE "GOODS" (
	"GOID"	VARCHAR2(20)		NOT NULL,
	"GONM"	VARCHAR2(50)		NOT NULL,
	"GOPRICE"	NUMBER		NOT NULL,
	"GOIMG"	VARCHAR2(100)		NOT NULL,
	"GOTY"	NUMBER(2)		NOT NULL
);

CREATE TABLE "BY_GOODS" (
	"MID"	VARCHAR2(20)		NOT NULL,
	"GOID"	VARCHAR2(20)		NOT NULL,
	"GONU"	NUMBER		NOT NULL
);

CREATE TABLE "BY_REVIEW" (
	"GOID"	VARCHAR2(20)		NOT NULL,
	"MID"	VARCHAR2(20)		NOT NULL,
	"RTME"	TIMESTAMP		NOT NULL,
	"RCONT"	VARCHAR2(4000)		NOT NULL,
	"RSTAR"	NUMBER(1)		NOT NULL
);

CREATE TABLE "BY_QNA" (
	"GOID"	VARCHAR2(20)		NOT NULL,
	"MID"	VARCHAR2(20)		NOT NULL,
	"QTME"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"QCONT"	VARCHAR2(4000)		NOT NULL
);

CREATE TABLE "BY_HISTORI" (
	"GONM"	VARCHAR2(50)		NOT NULL,
	"GOPRICE"	NUMBER		NOT NULL,
	"ALPRICE"	NUMBER		NOT NULL,
	"MID"	VARCHAR2(20)		NOT NULL,
	"BYDATE"	DATE		NOT NULL,
	"GOID"	VARCHAR2(20)		NOT NULL
);

CREATE TABLE "GOTYPE" (
	"GOTY"	NUMBER(2)	DEFAULT 0	NOT NULL,
	"GOTYNAME"	VARCHAR2(45)		NOT NULL
);

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"MID"
);

ALTER TABLE "GOODS" ADD CONSTRAINT "PK_GOODS" PRIMARY KEY (
	"GOID"
);

ALTER TABLE "GOTYPE" ADD CONSTRAINT "PK_GOTYPE" PRIMARY KEY (
	"GOTY"
);

ALTER TABLE "GOODS" ADD CONSTRAINT "FK_GOTYPE_TO_GOODS_1" FOREIGN KEY (
	"GOTY"
)
REFERENCES "GOTYPE" (
	"GOTY"
);

ALTER TABLE "BY_GOODS" ADD CONSTRAINT "FK_MEMBER_TO_BY_GOODS_1" FOREIGN KEY (
	"MID"
)
REFERENCES "MEMBER" (
	"MID"
);

ALTER TABLE "BY_GOODS" ADD CONSTRAINT "FK_GOODS_TO_BY_GOODS_1" FOREIGN KEY (
	"GOID"
)
REFERENCES "GOODS" (
	"GOID"
);

ALTER TABLE "BY_REVIEW" ADD CONSTRAINT "FK_GOODS_TO_BY_REVIEW_1" FOREIGN KEY (
	"GOID"
)
REFERENCES "GOODS" (
	"GOID"
);

ALTER TABLE "BY_REVIEW" ADD CONSTRAINT "FK_MEMBER_TO_BY_REVIEW_1" FOREIGN KEY (
	"MID"
)
REFERENCES "MEMBER" (
	"MID"
);

ALTER TABLE "BY_QNA" ADD CONSTRAINT "FK_GOODS_TO_BY_QNA_1" FOREIGN KEY (
	"GOID"
)
REFERENCES "GOODS" (
	"GOID"
);

ALTER TABLE "BY_QNA" ADD CONSTRAINT "FK_MEMBER_TO_BY_QNA_1" FOREIGN KEY (
	"MID"
)
REFERENCES "MEMBER" (
	"MID"
);


ALTER TABLE "BY_HISTORI" ADD CONSTRAINT "FK_MEMBER_TO_BY_HISTORI_1" FOREIGN KEY (
	"MID"
)
REFERENCES "MEMBER" (
	"MID"
);

ALTER TABLE "BY_HISTORI" ADD CONSTRAINT "FK_GOODS_TO_BY_HISTORI_1" FOREIGN KEY (
	"GOID"
)
REFERENCES "GOODS" (
	"GOID"
);
