ALTER TABLE review
	DROP
		CONSTRAINT FK_member_TO_review
		CASCADE;

ALTER TABLE review
	DROP
		CONSTRAINT FK_contents_TO_review
		CASCADE;

ALTER TABLE comments
	DROP
		CONSTRAINT FK_review_TO_comments
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
		CONSTRAINT FK_sigungu_TO_contents
		CASCADE;

ALTER TABLE contents
	DROP
		CONSTRAINT FK_contentsCate_TO_contents
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

ALTER TABLE contentsDetail
	DROP
		CONSTRAINT FK_contents_TO_contentsDetail
		CASCADE;

ALTER TABLE contentsImage
	DROP
		CONSTRAINT FK_contents_TO_contentsImage
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

ALTER TABLE contentsCate
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

ALTER TABLE contentsDetail
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE contentsImage
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE visitCount
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
DROP TABLE contentsCate 
	CASCADE CONSTRAINTS;

/* ��� */
DROP TABLE comments 
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
DROP TABLE contentsDetail 
	CASCADE CONSTRAINTS;

/* �������̹��� */
DROP TABLE contentsImage 
	CASCADE CONSTRAINTS;

/* �湮 */
DROP TABLE visitCount 
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

/* �ؽ��ױ� */
CREATE TABLE hashTag (
	hashTag VARCHAR2(100) NOT NULL, /* �±��̸� */
	rseq NUMBER(12) NOT NULL, /* ����۹�ȣ */
	contentsId NUMBER(12), /* ���������̵� */
	logTime DATE /* ��볯¥ */
);

COMMENT ON TABLE hashTag IS '�ؽ��ױ�';

COMMENT ON COLUMN hashTag.hashTag IS '�±��̸�';

COMMENT ON COLUMN hashTag.rseq IS '����۹�ȣ';

COMMENT ON COLUMN hashTag.contentsId IS '���������̵�';

COMMENT ON COLUMN hashTag.logTime IS '��볯¥';

ALTER TABLE hashTag
	ADD
		CONSTRAINT PK_hashTag
		PRIMARY KEY (
			hashTag,
			rseq
		);

/* ���� */
CREATE TABLE review (
	rseq NUMBER NOT NULL, /* ����۹�ȣ */
	userId VARCHAR2(100), /* ȸ�����̵� */
	contentsId NUMBER(12), /* ���������̵� */
	hashTag VARCHAR2(4000), /* �±��̸� */
	subject VARCHAR2(100), /* ���� */
	starPoint NUMBER, /* ���� */
	content CLOB, /* ���� */
	logTime DATE, /* �ۼ��ð� */
	saveFolder VARCHAR2(8), /* �������� */
	orignPicture VARCHAR2(100), /* ���������̸� */
	savePicture VARCHAR2(100) /* ��������̸� */
);

COMMENT ON TABLE review IS '����';

COMMENT ON COLUMN review.rseq IS '����۹�ȣ';

COMMENT ON COLUMN review.userId IS 'ȸ�����̵�';

COMMENT ON COLUMN review.contentsId IS '���������̵�';

COMMENT ON COLUMN review.hashTag IS '�±��̸�';

COMMENT ON COLUMN review.subject IS '����';

COMMENT ON COLUMN review.starPoint IS '����';

COMMENT ON COLUMN review.content IS '����';

COMMENT ON COLUMN review.logTime IS '�ۼ��ð�';

COMMENT ON COLUMN review.saveFolder IS '��������';

COMMENT ON COLUMN review.orignPicture IS '���������̸�';

COMMENT ON COLUMN review.savePicture IS '��������̸�';

ALTER TABLE review
	ADD
		CONSTRAINT PK_review
		PRIMARY KEY (
			rseq
		);

/* ī�װ� */
CREATE TABLE contentsCate (
	catCode VARCHAR2(12) NOT NULL, /* �з��ڵ� */
	catId NUMBER NOT NULL, /* ī�װ�id */
	catName VARCHAR2(600), /* ī�װ�name */
	catType VARCHAR2(8) /* �з�Ÿ�� */
);

COMMENT ON TABLE contentsCate IS 'ī�װ�';

COMMENT ON COLUMN contentsCate.catCode IS '�з��ڵ�';

COMMENT ON COLUMN contentsCate.catId IS 'ī�װ�id';

COMMENT ON COLUMN contentsCate.catName IS 'ī�װ�name';

COMMENT ON COLUMN contentsCate.catType IS '�з�Ÿ��';

ALTER TABLE contentsCate
	ADD
		CONSTRAINT PK_contentsCate
		PRIMARY KEY (
			catCode,
			catId
		);

/* ��� */
CREATE TABLE comments (
	rceq NUMBER NOT NULL, /* ����۹�ȣ */
	logId VARCHAR2(40), /* �ۼ��ھ��̵� */
	logTime DATE, /* �ۼ��ð� */
	content VARCHAR2(200) /* �۳��� */
);

COMMENT ON TABLE comments IS '���';

COMMENT ON COLUMN comments.rceq IS '����۹�ȣ';

COMMENT ON COLUMN comments.logId IS '�ۼ��ھ��̵�';

COMMENT ON COLUMN comments.logTime IS '�ۼ��ð�';

COMMENT ON COLUMN comments.content IS '�۳���';

/* pickList */
CREATE TABLE pickList (
	contentsId NUMBER(12) NOT NULL, /* ���̵� */
	userId VARCHAR2(100), /* ȸ�����̵� */
	wanna NUMBER, /* �����������/�ٳ�°� */
	distence NUMBER /* �Ÿ����� */
);

COMMENT ON TABLE pickList IS 'pickList';

COMMENT ON COLUMN pickList.contentsId IS '���̵�';

COMMENT ON COLUMN pickList.userId IS 'ȸ�����̵�';

COMMENT ON COLUMN pickList.wanna IS '�����������/�ٳ�°�';

COMMENT ON COLUMN pickList.distence IS '�Ÿ�����';

/* ������ */
CREATE TABLE contents (
	contentsId NUMBER(12) NOT NULL, /* ���̵� */
	catCode VARCHAR2(12), /* �з��ڵ� */
	catId NUMBER, /* ī�װ�id */
	sggCode NUMBER(5), /* �ñ����ڵ� */
	sdCode NUMBER(5), /* �õ��ڵ� */
	title VARCHAR2(600), /* ���� */
	hit NUMBER, /* ��ȸ�� */
	image1 VARCHAR2(), /* �̹���1 */
	image2 VARCHAR2(), /* �̹���2 */
	updateDate DATE, /* �������� */
	isEnd VARCHAR2(3) DEFAULT 1 /* ��ȿ���� */
);

COMMENT ON TABLE contents IS '������';

COMMENT ON COLUMN contents.contentsId IS '���̵�';

COMMENT ON COLUMN contents.catCode IS '�з��ڵ�';

COMMENT ON COLUMN contents.catId IS 'ī�װ�id';

COMMENT ON COLUMN contents.sggCode IS '�ñ����ڵ�';

COMMENT ON COLUMN contents.sdCode IS '�õ��ڵ�';

COMMENT ON COLUMN contents.title IS '����';

COMMENT ON COLUMN contents.hit IS '��ȸ��';

COMMENT ON COLUMN contents.image1 IS '�̹���1';

COMMENT ON COLUMN contents.image2 IS '�̹���2';

COMMENT ON COLUMN contents.updateDate IS '��������';

COMMENT ON COLUMN contents.isEnd IS '��ȿ����';

ALTER TABLE contents
	ADD
		CONSTRAINT PK_contents
		PRIMARY KEY (
			contentsId
		);

/* �Ű��� */
CREATE TABLE blackreview (
	rseq NUMBER NOT NULL, /* ����۹�ȣ */
	userId VARCHAR2(100), /* ȸ�����̵� */
	reportContent VARCHAR2(200), /* �Ű��� */
	reportDate DATE /* �Ű����� */
);

COMMENT ON TABLE blackreview IS '�Ű���';

COMMENT ON COLUMN blackreview.rseq IS '����۹�ȣ';

COMMENT ON COLUMN blackreview.userId IS 'ȸ�����̵�';

COMMENT ON COLUMN blackreview.reportContent IS '�Ű���';

COMMENT ON COLUMN blackreview.reportDate IS '�Ű�����';

/* ��/���ڵ� */
CREATE TABLE sido (
	sdCode NUMBER(5) NOT NULL, /* �õ��ڵ� */
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
	sggCode NUMBER(5) NOT NULL, /* �ñ����ڵ� */
	sdCode NUMBER(5) NOT NULL, /* �õ��ڵ� */
	sggName VARCHAR2(100) /* �ñ����̸� */
);

COMMENT ON TABLE sigungu IS '�ñ����ڵ�';

COMMENT ON COLUMN sigungu.sggCode IS '�ñ����ڵ�';

COMMENT ON COLUMN sigungu.sdCode IS '�õ��ڵ�';

COMMENT ON COLUMN sigungu.sggName IS '�ñ����̸�';

ALTER TABLE sigungu
	ADD
		CONSTRAINT PK_sigungu
		PRIMARY KEY (
			sggCode,
			sdCode
		);

/* contents_detail */
CREATE TABLE contentsDetail (
	contentsId NUMBER(12) NOT NULL, /* ���̵� */
	homePage VARCHAR2(4000), /* Ȩ������ */
	telName VARCHAR2(1000), /* ������ �� */
	tel VARCHAR2(300), /* ������ ��ȭ��ȣ */
	playTime CLOB, /* �����ð� */
	program CLOB, /* ������α׷� */
	useTime CLOB, /* �̿��� */
	spendTime CLOB, /* �����ҿ�ð� */
	ageLimit VARCHAR2(2000), /* �������ɿ��� */
	bookingPlace CLOB, /* ����ó */
	discountInfo CLOB, /* �������� */
	placeInfo CLOB, /* �������ġ�ȳ� */
	infoSogae CLOB, /* ���Ұ� */
	infoNaeyong CLOB, /* ��系�� */
	eventStartDate NUMBER(8), /* �������� */
	eventEndDate NUMBER(8), /* ��������� */
	xPoint NUMBER, /* x��ǥ */
	yPoint NUMBER, /* y��ǥ */
	zipCode VARCHAR2(20), /* �����ȣ */
	addr1 VARCHAR2(400), /* �ּ� */
	addr2 VARCHAR2(400) /* ���ּ� */
);

COMMENT ON TABLE contentsDetail IS 'contents_detail';

COMMENT ON COLUMN contentsDetail.contentsId IS '���̵�';

COMMENT ON COLUMN contentsDetail.homePage IS 'Ȩ������';

COMMENT ON COLUMN contentsDetail.telName IS '������ ��';

COMMENT ON COLUMN contentsDetail.tel IS '������ ��ȭ��ȣ';

COMMENT ON COLUMN contentsDetail.playTime IS '�����ð�';

COMMENT ON COLUMN contentsDetail.program IS '������α׷�';

COMMENT ON COLUMN contentsDetail.useTime IS '�̿���';

COMMENT ON COLUMN contentsDetail.spendTime IS '�����ҿ�ð�';

COMMENT ON COLUMN contentsDetail.ageLimit IS '�������ɿ���';

COMMENT ON COLUMN contentsDetail.bookingPlace IS '����ó';

COMMENT ON COLUMN contentsDetail.discountInfo IS '��������';

COMMENT ON COLUMN contentsDetail.placeInfo IS '�������ġ�ȳ�';

COMMENT ON COLUMN contentsDetail.infoSogae IS '���Ұ�';

COMMENT ON COLUMN contentsDetail.infoNaeyong IS '��系��';

COMMENT ON COLUMN contentsDetail.eventStartDate IS '��������';

COMMENT ON COLUMN contentsDetail.eventEndDate IS '���������';

COMMENT ON COLUMN contentsDetail.xPoint IS 'x��ǥ';

COMMENT ON COLUMN contentsDetail.yPoint IS 'y��ǥ';

COMMENT ON COLUMN contentsDetail.zipCode IS '�����ȣ';

COMMENT ON COLUMN contentsDetail.addr1 IS '�ּ�';

COMMENT ON COLUMN contentsDetail.addr2 IS '���ּ�';

ALTER TABLE contentsDetail
	ADD
		CONSTRAINT PK_contentsDetail
		PRIMARY KEY (
			contentsId
		);

/* �������̹��� */
CREATE TABLE contentsImage (
	contentsId NUMBER(12) NOT NULL, /* ���������̵� */
	serialNum VARCHAR2(500) NOT NULL, /* �ø������ */
	imgName VARCHAR2(500), /* �̹����� */
	originImgurl VARCHAR2(500), /* �̹���url */
	smallImageUrl VARCHAR2(500) /* �����̹���url */
);

COMMENT ON TABLE contentsImage IS '�������̹���';

COMMENT ON COLUMN contentsImage.contentsId IS '���������̵�';

COMMENT ON COLUMN contentsImage.serialNum IS '�ø������';

COMMENT ON COLUMN contentsImage.imgName IS '�̹�����';

COMMENT ON COLUMN contentsImage.originImgurl IS '�̹���url';

COMMENT ON COLUMN contentsImage.smallImageUrl IS '�����̹���url';

ALTER TABLE contentsImage
	ADD
		CONSTRAINT PK_contentsImage
		PRIMARY KEY (
			contentsId,
			serialNum
		);

/* �湮 */
CREATE TABLE visitCount (
	statDate DATE NOT NULL, /* �������� */
	visitCount NUMBER, /* �湮�� */
	visitorCount NUMBER /* �湮�ڼ� */
);

COMMENT ON TABLE visitCount IS '�湮';

COMMENT ON COLUMN visitCount.statDate IS '��������';

COMMENT ON COLUMN visitCount.visitCount IS '�湮��';

COMMENT ON COLUMN visitCount.visitorCount IS '�湮�ڼ�';

ALTER TABLE visitCount
	ADD
		CONSTRAINT PK_visitCount
		PRIMARY KEY (
			statDate
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
		CONSTRAINT FK_contents_TO_review
		FOREIGN KEY (
			contentsId
		)
		REFERENCES contents (
			contentsId
		);

ALTER TABLE comments
	ADD
		CONSTRAINT FK_review_TO_comments
		FOREIGN KEY (
			rceq
		)
		REFERENCES review (
			rseq
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
		CONSTRAINT FK_sigungu_TO_contents
		FOREIGN KEY (
			sggCode,
			sdCode
		)
		REFERENCES sigungu (
			sggCode,
			sdCode
		);

ALTER TABLE contents
	ADD
		CONSTRAINT FK_contentsCate_TO_contents
		FOREIGN KEY (
			catCode,
			catId
		)
		REFERENCES contentsCate (
			catCode,
			catId
		);

ALTER TABLE blackreview
	ADD
		CONSTRAINT FK_review_TO_blackreview
		FOREIGN KEY (
			rseq
		)
		REFERENCES review (
			rseq
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

ALTER TABLE contentsDetail
	ADD
		CONSTRAINT FK_contents_TO_contentsDetail
		FOREIGN KEY (
			contentsId
		)
		REFERENCES contents (
			contentsId
		);

ALTER TABLE contentsImage
	ADD
		CONSTRAINT FK_contents_TO_contentsImage
		FOREIGN KEY (
			contentsId
		)
		REFERENCES contents (
			contentsId
		);

drop sequence review_seq;

create sequence review_seq
	start with 1
	increment by 1;