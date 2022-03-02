CREATE TABLE Member(
    Mid VARCHAR2(10) NOT NULL,                        -- ���̵�
    Mpassword VARCHAR2(10) NOT NULL,                  -- ��й�ȣ
    Mname VARCHAR2(10) NOT NULL,                      -- �̸�

    Mpostalcode VARCHAR2(50) NOT NULL,               -- �ּ�1
    Maddress VARCHAR2(100) NOT NULL,                 -- �ּ�2
    
    Mresidentnumber1 VARCHAR2(6) NOT NULL,             -- �ֹι�ȣ ��
    Mresidentnumber2 VARCHAR2(7) NOT NULL,             -- �ֹι�ȣ ��
    Mcallnumber1 VARCHAR2(3) NOT NULL,                 -- ��ȭ��ȣ1
    Mcallnumber2 VARCHAR2(4) NOT NULL,                 -- ��ȭ��ȣ2
    Mcallnumber3 VARCHAR2(4) NOT NULL,                 -- ��ȭ��ȣ3
    Memail VARCHAR2(50) NOT NULL,                    -- �̸���
    
    PRIMARY KEY (Mid)
);

CREATE TABLE Restaurant(
    RTnumber VARCHAR2(10) NOT NULL,                    -- ������������ȣ
    RTname VARCHAR2(500) NOT NULL,                      -- �̸�
    RTtype VARCHAR2(100) NOT NULL,                      -- Ÿ��
    RTaddress VARCHAR2(500) NOT NULL,                   -- �ּ�1
    RTpostalcode VARCHAR2(1000) NOT NULL,               -- �ּ�2
    
    RTcallnumber1 VARCHAR2(3) NOT NULL,                -- ��ȭ��ȣ
    RTcallnumber2 VARCHAR2(4) NOT NULL,                -- ��ȭ��ȣ
    RTcallnumber3 VARCHAR2(4) NOT NULL,                -- ��ȭ��ȣ
    
    RTlatitude VARCHAR2(100) NOT NULL,                    -- ����
    RTlongitude VARCHAR2(100) NOT NULL,                   -- �浵
    RTintroduce VARCHAR2(100),                         -- �Ұ�
    RTcount NUMBER(10) DEFAULT '0' NOT NULL,           -- ��ȸ��
    
    RTIname VARCHAR2(100) NOT NULL,                     -- ����
    RTIsize LONG NOT NULL,                              -- ũ��
    RTIpath VARCHAR2(300) NOT NULL,                     -- �ּ�
    
    PRIMARY KEY (RTnumber)
);
CREATE SEQUENCE Restaurant_RTnumber_seq;
drop SEQUENCE Restaurant_RTnumber_seq;

CREATE TABLE BOOKMARK(
    Bnumber NUMBER(5) NOT NULL,                       -- ������ȣ
    Mid VARCHAR2(10) NOT NULL,                        -- ���̵�
    RTnumber VARCHAR2(10) NOT NULL,                   -- ������������ȣ
    PRIMARY KEY (Bnumber),
    FOREIGN KEY (Mid) REFERENCES Member (Mid),
    FOREIGN KEY (RTnumber) REFERENCES Restaurant (RTnumber)
);
CREATE SEQUENCE BOOKMARK_Bnumber_seq;

CREATE TABLE Comments(
    CMnumber NUMBER(5) NOT NULL,                       -- ������ȣ
    Mid VARCHAR2(10) NOT NULL,                         -- ���̵�
    RTnumber VARCHAR2(10) NOT NULL,                     -- ������������ȣ
    CMliked NUMBER(1) NOT NULL,                        -- ����
    CMcontent VARCHAR2(1000) NOT NULL,                   -- ���� ����
    
    PRIMARY KEY (CMnumber),
    FOREIGN KEY (Mid) REFERENCES Member (Mid),
    FOREIGN KEY (RTnumber) REFERENCES Restaurant (RTnumber)
);
CREATE SEQUENCE Comments_CMnumber_seq;

CREATE TABLE Review(
    RVnumber VARCHAR2(10) NOT NULL,                       -- ������ȣ
    Writer VARCHAR2(10) NOT NULL,                         -- ���̵�
    RTnumber VARCHAR2(10) NOT NULL,                       -- ������������ȣ
    RTname VARCHAR2(50) NOT NULL,
    RVtitle VARCHAR2(100) NOT NULL,                     -- ���� ����
    RVcontent VARCHAR2(2000) NOT NULL,                   -- ���� ����
    RVcount NUMBER(10) DEFAULT '0' NOT NULL,           -- �����
    RVdate DATE NOT NULL,                              -- ��¥
    
    RVimgname VARCHAR2(100),
    RVimgpath VARCHAR2(300),
    RVimgsize LONG,
    
    PRIMARY KEY (RVnumber),
    FOREIGN KEY (Writer) REFERENCES Member (Mid),
    FOREIGN KEY (RTnumber) REFERENCES Restaurant (RTnumber)
);
CREATE SEQUENCE Review_RVnumber_seq;

CREATE TABLE Community(
    Cnumber NUMBER(5) NOT NULL,                       -- ������ȣ
    Ccategory VARCHAR2(10) NOT NULL,                  -- ī�װ�
    Ctitle VARCHAR2(20) NOT NULL,                     -- ����
    Ccontent VARCHAR2(1000) NOT NULL,                   -- ����
    
    PRIMARY KEY (Cnumber)
);
CREATE SEQUENCE Community_Cnumber_seq;

CREATE TABLE Landmark( -- ���� ��Ʈ ��� LMnumber �� Iī�װ��� ������
    LMnumber NUMBER(10) NOT NULL,                     -- ������ȣ �ڵ�������ȣ
    LMcategory VARCHAR2(100) NOT NULL,                  -- ī�װ� 2
    LMtitle VARCHAR2(200) NOT NULL,                     -- ����
    LMcontent VARCHAR2(2000) NOT NULL,                   -- ���� 4
    LMaddress VARCHAR2(100) NOT NULL,                   -- �ּ�   
    LMpostalcode VARCHAR2(100) NOT NULL,                      --  6
    LMlatitude VARCHAR2(100) NOT NULL,                    -- ����
    LMlongitude VARCHAR2(100) NOT NULL,                   -- �浵 8
    
    Iname VARCHAR2(100) NOT NULL,                     -- ���� (����_��ȣ)
    Isize LONG NOT NULL,                              -- ũ�� 
    Ipath VARCHAR2(300) NOT NULL,    
    PRIMARY KEY (LMnumber)
); --�Է��ϰ� 
CREATE SEQUENCE Landmark_LMnumber_seq;

create table event(
    enumber  number(5) not null,
    etitle   varchar2(50) not null,
    econtent varchar2(500),
    
    group_number number(2) not null,
    sequence_number number(2) not null,
    sequence_level number(2) not null,
    
    edate date not null,
    efilename varchar2(1000),
    epath varchar2(1000),
    efilesize long,

    PRIMARY KEY (enumber)
);
CREATE SEQUENCE event_enumber_seq;