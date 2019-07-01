ALTER TABLE review
	DROP
		CONSTRAINT FK_member_TO_review
		CASCADE;

ALTER TABLE review
	DROP
		CONSTRAINT FK_hashTag_TO_review
		CASCADE;

ALTER TABLE review
	DROP
		CONSTRAINT FK_contents_TO_review
		CASCADE;

ALTER TABLE TABLE3
	DROP
		CONSTRAINT FK_review_TO_TABLE3
		CASCADE;

ALTER TABLE TABLE5
	DROP
		CONSTRAINT FK_review_TO_TABLE5
		CASCADE;

ALTER TABLE comment
	DROP
		CONSTRAINT FK_review_TO_comment
		CASCADE;

ALTER TABLE pickList
	DROP
		CONSTRAINT FK_member_TO_pickList
		CASCADE;

ALTER TABLE pickList
	DROP
		CONSTRAINT FK_contents_TO_pickList
		CASCADE;

ALTER TABLE TABLE8
	DROP
		CONSTRAINT FK_member_TO_TABLE8
		CASCADE;

ALTER TABLE contents
	DROP
		CONSTRAINT FK_sido_TO_contents
		CASCADE;

ALTER TABLE contents
	DROP
		CONSTRAINT FK_sigungu_TO_contents
		CASCADE;

ALTER TABLE contents
	DROP
		CONSTRAINT FK_boardType_TO_contents
		CASCADE;

ALTER TABLE blacklist
	DROP
		CONSTRAINT FK_member_TO_blacklist
		CASCADE;

ALTER TABLE blackreview
	DROP
		CONSTRAINT FK_review_TO_blackreview
		CASCADE;

ALTER TABLE blackreview
	DROP
		CONSTRAINT FK_member_TO_blackreview
		CASCADE;

ALTER TABLE TABLE7
	DROP
		CONSTRAINT FK_review_TO_TABLE7
		CASCADE;

ALTER TABLE sigungu
	DROP
		CONSTRAINT FK_sido_TO_sigungu
		CASCADE;

ALTER TABLE contents_detail
	DROP
		CONSTRAINT FK_contents_TO_contents_detail
		CASCADE;

ALTER TABLE member
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE hashTag
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE review
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE boardType
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE contents
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE review2
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE review3
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE review4
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE blacklist
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE TABLE7
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE sido
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE sigungu
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE contents_detail
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_member;

DROP INDEX PK_hashTag;

DROP INDEX PK_review;

DROP INDEX PK_boardType;

DROP INDEX PK_contents;

DROP INDEX PK_review2;

DROP INDEX PK_review3;

DROP INDEX PK_review4;

DROP INDEX PK_blacklist;

DROP INDEX PK_TABLE7;

DROP INDEX PK_sido;

DROP INDEX PK_sigungu;

DROP INDEX PK_contents_detail;

/* ���� */
DROP TABLE TABLE 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE TABLE2 
	CASCADE CONSTRAINTS;

/* ȸ�� */
DROP TABLE member 
	CASCADE CONSTRAINTS;

/* �ؽ��ױ� */
DROP TABLE hashTag 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE review 
	CASCADE CONSTRAINTS;

/* ī�װ� */
DROP TABLE boardType 
	CASCADE CONSTRAINTS;

/* �亯���Խ��� */
DROP TABLE TABLE3 
	CASCADE CONSTRAINTS;

/* �� ���̺�2 */
DROP TABLE TABLE4 
	CASCADE CONSTRAINTS;

/* �ٹ����Խ��� */
DROP TABLE TABLE5 
	CASCADE CONSTRAINTS;

/* �ӽ� ���̺� */
DROP TABLE Temporary 
	CASCADE CONSTRAINTS;

/* ��� */
DROP TABLE comment 
	CASCADE CONSTRAINTS;

/* pickList */
DROP TABLE pickList 
	CASCADE CONSTRAINTS;

/* ��������� */
DROP TABLE TABLE8 
	CASCADE CONSTRAINTS;

/* ���ٿ°� */
DROP TABLE TABLE9 
	CASCADE CONSTRAINTS;

/* ������ */
DROP TABLE contents 
	CASCADE CONSTRAINTS;

/* ����/���� */
DROP TABLE review2 
	CASCADE CONSTRAINTS;

/* ����3 */
DROP TABLE review3 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE review4 
	CASCADE CONSTRAINTS;

/* �Ű�ȸ�� */
DROP TABLE blacklist 
	CASCADE CONSTRAINTS;

/* �Ű��� */
DROP TABLE blackreview 
	CASCADE CONSTRAINTS;

/* ī�װ� */
DROP TABLE TABLE6 
	CASCADE CONSTRAINTS;

/* ����� */
DROP TABLE TABLE7 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE TABLE10 
	CASCADE CONSTRAINTS;

/* ��/���ڵ� */
DROP TABLE sido 
	CASCADE CONSTRAINTS;

/* �ñ����ڵ� */
DROP TABLE sigungu 
	CASCADE CONSTRAINTS;

/* contents_detail */
DROP TABLE contents_detail 
	CASCADE CONSTRAINTS;

/* ���� */
CREATE TABLE TABLE (
);

COMMENT ON TABLE TABLE IS '����';

/* ���� */
CREATE TABLE TABLE2 (
);

COMMENT ON TABLE TABLE2 IS '����';

/* ȸ�� */
CREATE TABLE member (
	userId VARCHAR2(100) NOT NULL, /* ȸ�����̵� */
	pass VARCHAR2(16) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(40) NOT NULL, /* �̸� */
	age NUMBER, /* ���� */
	gender VARCHAR2(3), /* ���� */
	joinDate DATE DEFAULT sysdate, /* ������ */
	profile CLOB, /* �����ʻ��� */
	enable NUMBER(3) DEFAULT 1 /* ���� */
);

COMMENT ON TABLE member IS 'ȸ��';

COMMENT ON COLUMN member.userId IS 'ȸ�����̵�';

COMMENT ON COLUMN member.pass IS '��й�ȣ';

COMMENT ON COLUMN member.name IS '�̸�';

COMMENT ON COLUMN member.age IS '����';

COMMENT ON COLUMN member.gender IS '����';

COMMENT ON COLUMN member.joinDate IS '������';

COMMENT ON COLUMN member.profile IS '�����ʻ���';

COMMENT ON COLUMN member.enable IS '����';

CREATE UNIQUE INDEX PK_member
	ON member (
		userId ASC
	);

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			userId
		);

/* �ؽ��ױ� */
CREATE TABLE hashTag (
	hashTag VARCHAR2(100) NOT NULL, /* �±��̸� */
	tagCount NUMBER /* ���Ƚ�� */
);

COMMENT ON TABLE hashTag IS '�ؽ��ױ�';

COMMENT ON COLUMN hashTag.hashTag IS '�±��̸�';

COMMENT ON COLUMN hashTag.tagCount IS '���Ƚ��';

CREATE UNIQUE INDEX PK_hashTag
	ON hashTag (
		hashTag ASC
	);

ALTER TABLE hashTag
	ADD
		CONSTRAINT PK_hashTag
		PRIMARY KEY (
			hashTag
		);

/* ���� */
CREATE TABLE review (
	seq NUMBER NOT NULL, /* �۹�ȣ */
	userId VARCHAR2(100), /* ȸ�����̵� */
	contentsId VARCHAR2(50), /* ���������̵� */
	hashTag VARCHAR2(100), /* �±��̸� */
	subject VARCHAR2(100), /* ���� */
	starPoint NUMBER, /* ���� */
	content CLOB, /* ���� */
	logTime DATE, /* �ۼ��ð� */
	folder VARCHAR2(8), /* �������� */
	mainImg VARCHAR2(100), /* ���������̸� */
	saveImg VARCHAR2(100) /* ��������̸� */
);

COMMENT ON TABLE review IS '����';

COMMENT ON COLUMN review.seq IS '�۹�ȣ';

COMMENT ON COLUMN review.userId IS 'ȸ�����̵�';

COMMENT ON COLUMN review.contentsId IS '���������̵�';

COMMENT ON COLUMN review.hashTag IS '�±��̸�';

COMMENT ON COLUMN review.subject IS '����';

COMMENT ON COLUMN review.starPoint IS '����';

COMMENT ON COLUMN review.content IS '����';

COMMENT ON COLUMN review.logTime IS '�ۼ��ð�';

COMMENT ON COLUMN review.folder IS '��������';

COMMENT ON COLUMN review.mainImg IS '���������̸�';

COMMENT ON COLUMN review.saveImg IS '��������̸�';

CREATE UNIQUE INDEX PK_review
	ON review (
		seq ASC
	);

ALTER TABLE review
	ADD
		CONSTRAINT PK_review
		PRIMARY KEY (
			seq
		);

/* ī�װ� */
CREATE TABLE boardType (
	cat_id NUMBER NOT NULL, /* ī�װ�id */
	cat_name VARCHAR2(600) /* ī�װ�name */
);

COMMENT ON TABLE boardType IS 'ī�װ�';

COMMENT ON COLUMN boardType.cat_id IS 'ī�װ�id';

COMMENT ON COLUMN boardType.cat_name IS 'ī�װ�name';

CREATE UNIQUE INDEX PK_boardType
	ON boardType (
		cat_id ASC
	);

ALTER TABLE boardType
	ADD
		CONSTRAINT PK_boardType
		PRIMARY KEY (
			cat_id
		);

/* �亯���Խ��� */
CREATE TABLE TABLE3 (
	seq NUMBER NOT NULL, /* �۹�ȣ */
	COL4 NUMBER, /* �鿩���� */
	COL5 NUMBER, /* ������� */
	COL3 NUMBER, /* ���۹�ȣ */
	COL6 NUMBER /* ��۰��� */
);

COMMENT ON TABLE TABLE3 IS '�亯���Խ���';

COMMENT ON COLUMN TABLE3.seq IS '�۹�ȣ';

COMMENT ON COLUMN TABLE3.COL4 IS '�鿩����';

COMMENT ON COLUMN TABLE3.COL5 IS '�������';

COMMENT ON COLUMN TABLE3.COL3 IS '���۹�ȣ';

COMMENT ON COLUMN TABLE3.COL6 IS '��۰���';

/* �� ���̺�2 */
CREATE TABLE TABLE4 (
);

COMMENT ON TABLE TABLE4 IS '�� ���̺�2';

/* �ٹ����Խ��� */
CREATE TABLE TABLE5 (
	seq NUMBER, /* �۹�ȣ */
	COL3 VARCHAR2(8), /* �������� */
	COL4 VARCHAR2(100), /* ���������̸� */
	COL5 VARCHAR2(100), /* ��������̸� */
	COL6 NUMBER(3) /* ����Ÿ�� */
);

COMMENT ON TABLE TABLE5 IS '�ٹ����Խ���';

COMMENT ON COLUMN TABLE5.seq IS '�۹�ȣ';

COMMENT ON COLUMN TABLE5.COL3 IS '��������';

COMMENT ON COLUMN TABLE5.COL4 IS '���������̸�';

COMMENT ON COLUMN TABLE5.COL5 IS '��������̸�';

COMMENT ON COLUMN TABLE5.COL6 IS '����Ÿ��';

/* �ӽ� ���̺� */
CREATE TABLE Temporary (
	COL5 <���� ���� ����> /* �� �÷� */
);

COMMENT ON TABLE Temporary IS '�ӽ� ���̺�';

COMMENT ON COLUMN Temporary.COL5 IS '�� �÷�';

/* ��� */
CREATE TABLE comment (
	seq NUMBER NOT NULL, /* �۹�ȣ */
	logId VARCHAR2(40), /* �ۼ��ھ��̵� */
	logTime DATE, /* �ۼ��ð� */
	content VARCHAR2(200) /* �۳��� */
);

COMMENT ON TABLE comment IS '���';

COMMENT ON COLUMN comment.seq IS '�۹�ȣ';

COMMENT ON COLUMN comment.logId IS '�ۼ��ھ��̵�';

COMMENT ON COLUMN comment.logTime IS '�ۼ��ð�';

COMMENT ON COLUMN comment.content IS '�۳���';

/* pickList */
CREATE TABLE pickList (
	userId VARCHAR2(100), /* ȸ�����̵� */
	contentsId VARCHAR2(50) /* ���̵� */
);

COMMENT ON TABLE pickList IS 'pickList';

COMMENT ON COLUMN pickList.userId IS 'ȸ�����̵�';

COMMENT ON COLUMN pickList.contentsId IS '���̵�';

/* ��������� */
CREATE TABLE TABLE8 (
	userId VARCHAR2(100) /* ȸ�����̵� */
);

COMMENT ON TABLE TABLE8 IS '���������';

COMMENT ON COLUMN TABLE8.userId IS 'ȸ�����̵�';

/* ���ٿ°� */
CREATE TABLE TABLE9 (
	COL <���� ���� ����>, /* �� �÷� */
	COL2 <���� ���� ����> /* �� �÷�2 */
);

COMMENT ON TABLE TABLE9 IS '���ٿ°�';

COMMENT ON COLUMN TABLE9.COL IS '�� �÷�';

COMMENT ON COLUMN TABLE9.COL2 IS '�� �÷�2';

/* ������ */
CREATE TABLE contents (
	contentsId VARCHAR2(50) NOT NULL, /* ���̵� */
	title VARCHAR(600), /* ���� */
	cat_id NUMBER, /* ī�װ�id */
	sggCode VARCHAR2(100), /* �ñ����ڵ� */
	sdCode VARCHAR2(100), /* �õ��ڵ� */
	mainImg CLOB, /* �̹��� */
	viewCount NUMBER /* ��ȸ�� */
);

COMMENT ON TABLE contents IS '������';

COMMENT ON COLUMN contents.contentsId IS '���̵�';

COMMENT ON COLUMN contents.title IS '����';

COMMENT ON COLUMN contents.cat_id IS 'ī�װ�id';

COMMENT ON COLUMN contents.sggCode IS '�ñ����ڵ�';

COMMENT ON COLUMN contents.sdCode IS '�õ��ڵ�';

COMMENT ON COLUMN contents.mainImg IS '�̹���';

COMMENT ON COLUMN contents.viewCount IS '��ȸ��';

CREATE UNIQUE INDEX PK_contents
	ON contents (
		contentsId ASC
	);

ALTER TABLE contents
	ADD
		CONSTRAINT PK_contents
		PRIMARY KEY (
			contentsId
		);

/* ����/���� */
CREATE TABLE review2 (
	seq NUMBER NOT NULL, /* �۹�ȣ */
	subject VARCHAR2(100), /* ���� */
	content CLOB, /* ���� */
	logTime DATE, /* �ۼ��ð� */
	COL4 VARCHAR2(200), /* �ּ� */
	boardType NUMBER /* �з���ȣ */
);

COMMENT ON TABLE review2 IS '����/����';

COMMENT ON COLUMN review2.seq IS '�۹�ȣ';

COMMENT ON COLUMN review2.subject IS '����';

COMMENT ON COLUMN review2.content IS '����';

COMMENT ON COLUMN review2.logTime IS '�ۼ��ð�';

COMMENT ON COLUMN review2.COL4 IS '�ּ�';

COMMENT ON COLUMN review2.boardType IS '�з���ȣ';

CREATE UNIQUE INDEX PK_review2
	ON review2 (
		seq ASC
	);

ALTER TABLE review2
	ADD
		CONSTRAINT PK_review2
		PRIMARY KEY (
			seq
		);

/* ����3 */
CREATE TABLE review3 (
	seq NUMBER NOT NULL, /* �۹�ȣ */
	userId VARCHAR2(40), /* ���̵� */
	subject VARCHAR2(100), /* ���� */
	content CLOB, /* ���� */
	logTime DATE, /* �ۼ��ð� */
	COL NUMBER, /* ���� */
	COL4 VARCHAR2(200), /* �ּ� */
	boardType NUMBER, /* �з���ȣ */
	COL2 VARCHAR2(8), /* �������� */
	COL5 VARCHAR2(100), /* ���������̸� */
	COL6 VARCHAR2(100), /* ��������̸� */
	hashTag VARCHAR2(100), /* �±��̸� */
	contentNum NUMBER, /* �Ϸù�ȣ */
	api CLOB /* API */
);

COMMENT ON TABLE review3 IS '����3';

COMMENT ON COLUMN review3.seq IS '�۹�ȣ';

COMMENT ON COLUMN review3.userId IS '���̵�';

COMMENT ON COLUMN review3.subject IS '����';

COMMENT ON COLUMN review3.content IS '����';

COMMENT ON COLUMN review3.logTime IS '�ۼ��ð�';

COMMENT ON COLUMN review3.COL IS '����';

COMMENT ON COLUMN review3.COL4 IS '�ּ�';

COMMENT ON COLUMN review3.boardType IS '�з���ȣ';

COMMENT ON COLUMN review3.COL2 IS '��������';

COMMENT ON COLUMN review3.COL5 IS '���������̸�';

COMMENT ON COLUMN review3.COL6 IS '��������̸�';

COMMENT ON COLUMN review3.hashTag IS '�±��̸�';

COMMENT ON COLUMN review3.contentNum IS '�Ϸù�ȣ';

COMMENT ON COLUMN review3.api IS 'API';

CREATE UNIQUE INDEX PK_review3
	ON review3 (
		seq ASC
	);

ALTER TABLE review3
	ADD
		CONSTRAINT PK_review3
		PRIMARY KEY (
			seq
		);

/* ���� */
CREATE TABLE review4 (
	seq NUMBER NOT NULL, /* �۹�ȣ */
	subject VARCHAR2(100), /* ���� */
	content CLOB, /* ���� */
	logTime DATE, /* �ۼ��ð� */
	COL4 VARCHAR2(200), /* �ּ� */
	boardType NUMBER /* �з���ȣ */
);

COMMENT ON TABLE review4 IS '����';

COMMENT ON COLUMN review4.seq IS '�۹�ȣ';

COMMENT ON COLUMN review4.subject IS '����';

COMMENT ON COLUMN review4.content IS '����';

COMMENT ON COLUMN review4.logTime IS '�ۼ��ð�';

COMMENT ON COLUMN review4.COL4 IS '�ּ�';

COMMENT ON COLUMN review4.boardType IS '�з���ȣ';

CREATE UNIQUE INDEX PK_review4
	ON review4 (
		seq ASC
	);

ALTER TABLE review4
	ADD
		CONSTRAINT PK_review4
		PRIMARY KEY (
			seq
		);

/* �Ű�ȸ�� */
CREATE TABLE blacklist (
	userId VARCHAR2(100) NOT NULL, /* ȸ�����̵� */
	statement NUMBER(3) NOT NULL /* ���� */
);

COMMENT ON TABLE blacklist IS '�Ű�ȸ��';

COMMENT ON COLUMN blacklist.userId IS 'ȸ�����̵�';

COMMENT ON COLUMN blacklist.statement IS '����';

CREATE UNIQUE INDEX PK_blacklist
	ON blacklist (
		userId ASC
	);

ALTER TABLE blacklist
	ADD
		CONSTRAINT PK_blacklist
		PRIMARY KEY (
			userId
		);

/* �Ű��� */
CREATE TABLE blackreview (
	seq NUMBER NOT NULL, /* �۹�ȣ */
	userId VARCHAR2(100), /* ȸ�����̵� */
	reportContent VARCHAR2(200), /* �Ű��� */
	reportDate DATE /* �Ű����� */
);

COMMENT ON TABLE blackreview IS '�Ű���';

COMMENT ON COLUMN blackreview.seq IS '�۹�ȣ';

COMMENT ON COLUMN blackreview.userId IS 'ȸ�����̵�';

COMMENT ON COLUMN blackreview.reportContent IS '�Ű���';

COMMENT ON COLUMN blackreview.reportDate IS '�Ű�����';

/* ī�װ� */
CREATE TABLE TABLE6 (
);

COMMENT ON TABLE TABLE6 IS 'ī�װ�';

/* ����� */
CREATE TABLE TABLE7 (
	seq NUMBER NOT NULL, /* �۹�ȣ */
	content CLOB, /* ���� */
	address VARCHAR2(200) /* �ּ� */
);

COMMENT ON TABLE TABLE7 IS '�����';

COMMENT ON COLUMN TABLE7.seq IS '�۹�ȣ';

COMMENT ON COLUMN TABLE7.content IS '����';

COMMENT ON COLUMN TABLE7.address IS '�ּ�';

CREATE UNIQUE INDEX PK_TABLE7
	ON TABLE7 (
		seq ASC
	);

ALTER TABLE TABLE7
	ADD
		CONSTRAINT PK_TABLE7
		PRIMARY KEY (
			seq
		);

/* �������� */
CREATE TABLE TABLE10 (
	content CLOB, /* ���� */
	COL6 VARCHAR2(40), /* X��ǥ */
	COL7 VARCHAR2(40) /* Y��ǥ */
);

COMMENT ON TABLE TABLE10 IS '��������';

COMMENT ON COLUMN TABLE10.content IS '����';

COMMENT ON COLUMN TABLE10.COL6 IS 'X��ǥ';

COMMENT ON COLUMN TABLE10.COL7 IS 'Y��ǥ';

/* ��/���ڵ� */
CREATE TABLE sido (
	sdCode VARCHAR2(100) NOT NULL, /* �õ��ڵ� */
	sdName VARCHAR2(100) /* �õ��̸� */
);

COMMENT ON TABLE sido IS '��/���ڵ�';

COMMENT ON COLUMN sido.sdCode IS '�õ��ڵ�';

COMMENT ON COLUMN sido.sdName IS '�õ��̸�';

CREATE UNIQUE INDEX PK_sido
	ON sido (
		sdCode ASC
	);

ALTER TABLE sido
	ADD
		CONSTRAINT PK_sido
		PRIMARY KEY (
			sdCode
		);

/* �ñ����ڵ� */
CREATE TABLE sigungu (
	sggCode VARCHAR2(100) NOT NULL, /* �ñ����ڵ� */
	sggName VARCHAR2(100), /* �ñ����̸� */
	sdCode VARCHAR2(100) /* �õ��ڵ� */
);

COMMENT ON TABLE sigungu IS '�ñ����ڵ�';

COMMENT ON COLUMN sigungu.sggCode IS '�ñ����ڵ�';

COMMENT ON COLUMN sigungu.sggName IS '�ñ����̸�';

COMMENT ON COLUMN sigungu.sdCode IS '�õ��ڵ�';

CREATE UNIQUE INDEX PK_sigungu
	ON sigungu (
		sggCode ASC
	);

ALTER TABLE sigungu
	ADD
		CONSTRAINT PK_sigungu
		PRIMARY KEY (
			sggCode
		);

/* contents_detail */
CREATE TABLE contents_detail (
	contentsid VARCHAR2(50) NOT NULL, /* ���̵� */
	homepage VARCHAR(4000), /* Ȩ������ */
	telname VARCHAR(1000), /* ������ �� */
	tel VARCHAR(300), /* ������ ��ȭ��ȣ */
	zipcode VARCHAR2(20), /* �����ȣ */
	addr1 VARCHAR(400), /* �ּ� */
	addr2 VARCHAR(400), /* ���ּ� */
	eventstartdate DATE, /* �������� */
	eventenddate DATE, /* ��������� */
	playtime LONG TEXT, /* �����ð� */
	program LONG TEXT, /* ������α׷� */
	usetime LONG TEXT, /* �̿��� */
	spendtime LONG TEXT, /* �����ҿ�ð� */
	agelimit VARCHAR(2000), /* �������ɿ��� */
	bookingplace LONG TEXT, /* ����ó */
	discountinfo LONG TEXT, /* �������� */
	placeinfo LONG TEXT, /* �������ġ�ȳ� */
	infoname LONG TEXT, /* ���Ұ� */
	infotext LONG TEXT /* ��系�� */
);

COMMENT ON TABLE contents_detail IS 'contents_detail';

COMMENT ON COLUMN contents_detail.contentsid IS '���̵�';

COMMENT ON COLUMN contents_detail.homepage IS 'Ȩ������';

COMMENT ON COLUMN contents_detail.telname IS '������ ��';

COMMENT ON COLUMN contents_detail.tel IS '������ ��ȭ��ȣ';

COMMENT ON COLUMN contents_detail.zipcode IS '�����ȣ';

COMMENT ON COLUMN contents_detail.addr1 IS '�ּ�';

COMMENT ON COLUMN contents_detail.addr2 IS '���ּ�';

COMMENT ON COLUMN contents_detail.eventstartdate IS '��������';

COMMENT ON COLUMN contents_detail.eventenddate IS '���������';

COMMENT ON COLUMN contents_detail.playtime IS '�����ð�';

COMMENT ON COLUMN contents_detail.program IS '������α׷�';

COMMENT ON COLUMN contents_detail.usetime IS '�̿���';

COMMENT ON COLUMN contents_detail.spendtime IS '�����ҿ�ð�';

COMMENT ON COLUMN contents_detail.agelimit IS '�������ɿ���';

COMMENT ON COLUMN contents_detail.bookingplace IS '����ó';

COMMENT ON COLUMN contents_detail.discountinfo IS '��������';

COMMENT ON COLUMN contents_detail.placeinfo IS '�������ġ�ȳ�';

COMMENT ON COLUMN contents_detail.infoname IS '���Ұ�';

COMMENT ON COLUMN contents_detail.infotext IS '��系��';

CREATE UNIQUE INDEX PK_contents_detail
	ON contents_detail (
		contentsid ASC
	);

ALTER TABLE contents_detail
	ADD
		CONSTRAINT PK_contents_detail
		PRIMARY KEY (
			contentsid
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_member_TO_review
		FOREIGN KEY (
			userId
		)
		REFERENCES member (
			userId
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_hashTag_TO_review
		FOREIGN KEY (
			hashTag
		)
		REFERENCES hashTag (
			hashTag
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_contents_TO_review
		FOREIGN KEY (
			contentsId
		)
		REFERENCES contents (
			contentsId
		);

ALTER TABLE TABLE3
	ADD
		CONSTRAINT FK_review_TO_TABLE3
		FOREIGN KEY (
			seq
		)
		REFERENCES review (
			seq
		);

ALTER TABLE TABLE5
	ADD
		CONSTRAINT FK_review_TO_TABLE5
		FOREIGN KEY (
			seq
		)
		REFERENCES review (
			seq
		);

ALTER TABLE comment
	ADD
		CONSTRAINT FK_review_TO_comment
		FOREIGN KEY (
			seq
		)
		REFERENCES review (
			seq
		);

ALTER TABLE pickList
	ADD
		CONSTRAINT FK_member_TO_pickList
		FOREIGN KEY (
			userId
		)
		REFERENCES member (
			userId
		);

ALTER TABLE pickList
	ADD
		CONSTRAINT FK_contents_TO_pickList
		FOREIGN KEY (
			contentsId
		)
		REFERENCES contents (
			contentsId
		);

ALTER TABLE TABLE8
	ADD
		CONSTRAINT FK_member_TO_TABLE8
		FOREIGN KEY (
			userId
		)
		REFERENCES member (
			userId
		);

ALTER TABLE contents
	ADD
		CONSTRAINT FK_sido_TO_contents
		FOREIGN KEY (
			sdCode
		)
		REFERENCES sido (
			sdCode
		);

ALTER TABLE contents
	ADD
		CONSTRAINT FK_sigungu_TO_contents
		FOREIGN KEY (
			sggCode
		)
		REFERENCES sigungu (
			sggCode
		);

ALTER TABLE contents
	ADD
		CONSTRAINT FK_boardType_TO_contents
		FOREIGN KEY (
			cat_id
		)
		REFERENCES boardType (
			cat_id
		);

ALTER TABLE blacklist
	ADD
		CONSTRAINT FK_member_TO_blacklist
		FOREIGN KEY (
			userId
		)
		REFERENCES member (
			userId
		);

ALTER TABLE blackreview
	ADD
		CONSTRAINT FK_review_TO_blackreview
		FOREIGN KEY (
			seq
		)
		REFERENCES review (
			seq
		);

ALTER TABLE blackreview
	ADD
		CONSTRAINT FK_member_TO_blackreview
		FOREIGN KEY (
			userId
		)
		REFERENCES member (
			userId
		);

ALTER TABLE TABLE7
	ADD
		CONSTRAINT FK_review_TO_TABLE7
		FOREIGN KEY (
			seq
		)
		REFERENCES review (
			seq
		);

ALTER TABLE sigungu
	ADD
		CONSTRAINT FK_sido_TO_sigungu
		FOREIGN KEY (
			sdCode
		)
		REFERENCES sido (
			sdCode
		);

ALTER TABLE contents_detail
	ADD
		CONSTRAINT FK_contents_TO_contents_detail
		FOREIGN KEY (
			contentsid
		)
		REFERENCES contents (
			contentsId
		);