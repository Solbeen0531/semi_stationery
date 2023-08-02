DROP TABLE "BY_GOODS";
DROP TABLE "BY_REVIEW";
DROP TABLE "BY_QNA";
DROP TABLE "MEMBER";
DROP TABLE "GOODS";

CREATE TABLE "MEMBER" (
	"MID"	VARCHAR2(20)		NOT NULL,
	"MNIC"	VARCHAR2(20)		NOT NULL,
	"MPW"	VARCHAR2(20)		NOT NULL
);

CREATE TABLE "GOODS" (
	"GOID"	VARCHAR2(20)		NOT NULL,
	"GONM"	VARCHAR2(50)		NOT NULL,
	"GOTYPE_A"	VARCHAR2(10)		NOT NULL,
	"GOTYPE_B"	VARCHAR2(10)		NOT NULL
);

CREATE TABLE "BY_GOODS" (
	"GONM"	VARCHAR2(50)		NOT NULL,
	"GOPRICE"	NUMBER		NOT NULL,
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

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"MID"
);

ALTER TABLE "GOODS" ADD CONSTRAINT "PK_GOODS" PRIMARY KEY (
	"GOID"
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