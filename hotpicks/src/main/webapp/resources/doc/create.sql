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

ALTER TABLE blackreview
	DROP
		CONSTRAINT FK_review_TO_blackreview
		CASCADE;

ALTER TABLE blackreview
	DROP
		CONSTRAINT FK_member_TO_blackreview
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

ALTER TABLE pickList
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE contents
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

/* ��� */
DROP TABLE comment 
	CASCADE CONSTRAINTS;

/* pickList */
DROP TABLE pickList 
	CASCADE CONSTRAINTS;

/* ������ */
DROP TABLE contents 
	CASCADE CONSTRAINTS;

/* �Ű��� */
DROP TABLE blackreview 
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

/* ȸ�� */
CREATE TABLE member (
	userId VARCHAR2(100) NOT NULL, /* ȸ�����̵� */
	pass VARCHAR2(16) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(40) NOT NULL, /* �̸� */
	age NUMBER, /* ���� */
	gender VARCHAR2(3), /* ���� */
	joinDate DATE DEFAULT sysdate, /* ������ */
	profile VARCHAR2(100), /* �����ʻ��� */
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

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			userId
		);
/* sequence1 */
DROP SEQUENCE seq;

/* sequence1 */
CREATE SEQUENCE seq
	start with 100;


/* �ؽ��ױ� */
CREATE TABLE hashTag (
	hashTag VARCHAR2(100) NOT NULL, /* �±��̸� */
	tagCount NUMBER /* ���Ƚ�� */
);

COMMENT ON TABLE hashTag IS '�ؽ��ױ�';

COMMENT ON COLUMN hashTag.hashTag IS '�±��̸�';

COMMENT ON COLUMN hashTag.tagCount IS '���Ƚ��';

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

ALTER TABLE review
	ADD
		CONSTRAINT PK_review
		PRIMARY KEY (
			seq
		);

/* ī�װ� */
CREATE TABLE boardType (
	catId NUMBER NOT NULL, /* ī�װ�id */
	catName VARCHAR2(600) /* ī�װ�name */
);

COMMENT ON TABLE boardType IS 'ī�װ�';

COMMENT ON COLUMN boardType.catId IS 'ī�װ�id';

COMMENT ON COLUMN boardType.catName IS 'ī�װ�name';

ALTER TABLE boardType
	ADD
		CONSTRAINT PK_boardType
		PRIMARY KEY (
			catId
		);

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
	seq NUMBER NOT NULL, /* �۹�ȣ */
	userId VARCHAR2(100), /* ȸ�����̵� */
	contentsId VARCHAR2(50) /* ���̵� */
);

COMMENT ON TABLE pickList IS 'pickList';

COMMENT ON COLUMN pickList.seq IS '�۹�ȣ';

COMMENT ON COLUMN pickList.userId IS 'ȸ�����̵�';

COMMENT ON COLUMN pickList.contentsId IS '���̵�';

ALTER TABLE pickList
	ADD
		CONSTRAINT PK_pickList
		PRIMARY KEY (
			seq
		);

/* ������ */
CREATE TABLE contents (
	contentsId VARCHAR2(50) NOT NULL, /* ���̵� */
	title VARCHAR(600), /* ���� */
	catId NUMBER, /* ī�װ�id */
	sggCode VARCHAR2(100), /* �ñ����ڵ� */
	sdCode VARCHAR2(100), /* �õ��ڵ� */
	hit NUMBER, /* ��ȸ�� */
	image1 CLOB, /* �̹���1 */
	image2 CLOB /* �̹���2 */
);

COMMENT ON TABLE contents IS '������';

COMMENT ON COLUMN contents.contentsId IS '���̵�';

COMMENT ON COLUMN contents.title IS '����';

COMMENT ON COLUMN contents.catId IS 'ī�װ�id';

COMMENT ON COLUMN contents.sggCode IS '�ñ����ڵ�';

COMMENT ON COLUMN contents.sdCode IS '�õ��ڵ�';

COMMENT ON COLUMN contents.hit IS '��ȸ��';

COMMENT ON COLUMN contents.image1 IS '�̹���1';

COMMENT ON COLUMN contents.image2 IS '�̹���2';

ALTER TABLE contents
	ADD
		CONSTRAINT PK_contents
		PRIMARY KEY (
			contentsId
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

/* ��/���ڵ� */
CREATE TABLE sido (
	sdCode VARCHAR2(100) NOT NULL, /* �õ��ڵ� */
	sdName VARCHAR2(100) /* �õ��̸� */
);

COMMENT ON TABLE sido IS '��/���ڵ�';

COMMENT ON COLUMN sido.sdCode IS '�õ��ڵ�';

COMMENT ON COLUMN sido.sdName IS '�õ��̸�';

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

ALTER TABLE sigungu
	ADD
		CONSTRAINT PK_sigungu
		PRIMARY KEY (
			sggCode
		);

/* contents_detail */
CREATE TABLE contents_detail (
	contentsId VARCHAR2(50) NOT NULL, /* ���̵� */
	homePage VARCHAR(4000), /* Ȩ������ */
	telName VARCHAR(1000), /* ������ �� */
	tel VARCHAR(300), /* ������ ��ȭ��ȣ */
	zipCode VARCHAR2(20), /* �����ȣ */
	addr1 VARCHAR(400), /* �ּ� */
	addr2 VARCHAR(400), /* ���ּ� */
	eventStartDate DATE, /* �������� */
	eventEndDate DATE, /* ��������� */
	playTime LONG TEXT, /* �����ð� */
	program LONG TEXT, /* ������α׷� */
	useTime LONG TEXT, /* �̿��� */
	spendTime LONG TEXT, /* �����ҿ�ð� */
	ageLimit VARCHAR(2000), /* �������ɿ��� */
	bookingPlace LONG TEXT, /* ����ó */
	discountInfo LONG TEXT, /* �������� */
	placeInfo LONG TEXT, /* �������ġ�ȳ� */
	infoName LONG TEXT, /* ���Ұ� */
	infoText LONG TEXT, /* ��系�� */
	xPoint NUMBER, /* x��ǥ */
	yPoint NUMBER /* y��ǥ */
);

COMMENT ON TABLE contents_detail IS 'contents_detail';

COMMENT ON COLUMN contents_detail.contentsId IS '���̵�';

COMMENT ON COLUMN contents_detail.homePage IS 'Ȩ������';

COMMENT ON COLUMN contents_detail.telName IS '������ ��';

COMMENT ON COLUMN contents_detail.tel IS '������ ��ȭ��ȣ';

COMMENT ON COLUMN contents_detail.zipCode IS '�����ȣ';

COMMENT ON COLUMN contents_detail.addr1 IS '�ּ�';

COMMENT ON COLUMN contents_detail.addr2 IS '���ּ�';

COMMENT ON COLUMN contents_detail.eventStartDate IS '��������';

COMMENT ON COLUMN contents_detail.eventEndDate IS '���������';

COMMENT ON COLUMN contents_detail.playTime IS '�����ð�';

COMMENT ON COLUMN contents_detail.program IS '������α׷�';

COMMENT ON COLUMN contents_detail.useTime IS '�̿���';

COMMENT ON COLUMN contents_detail.spendTime IS '�����ҿ�ð�';

COMMENT ON COLUMN contents_detail.ageLimit IS '�������ɿ���';

COMMENT ON COLUMN contents_detail.bookingPlace IS '����ó';

COMMENT ON COLUMN contents_detail.discountInfo IS '��������';

COMMENT ON COLUMN contents_detail.placeInfo IS '�������ġ�ȳ�';

COMMENT ON COLUMN contents_detail.infoName IS '���Ұ�';

COMMENT ON COLUMN contents_detail.infoText IS '��系��';

COMMENT ON COLUMN contents_detail.xPoint IS 'x��ǥ';

COMMENT ON COLUMN contents_detail.yPoint IS 'y��ǥ';

ALTER TABLE contents_detail
	ADD
		CONSTRAINT PK_contents_detail
		PRIMARY KEY (
			contentsId
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
			catId
		)
		REFERENCES boardType (
			catId
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
			contentsId
		)
		REFERENCES contents (
			contentsId
		);