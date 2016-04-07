ALTER TABLE ASU.TSOTR1
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TSOTR1 CASCADE CONSTRAINTS
/

--
-- TSOTR1  (Table) 
--
CREATE TABLE ASU.TSOTR1
(
  FK_ID     NUMBER(15)                          NOT NULL,
  FC_FAM    VARCHAR2(30 BYTE),
  FC_NAME   VARCHAR2(30 BYTE),
  FC_OTCH   VARCHAR2(30 BYTE),
  FK_OTDID  NUMBER(15),
  FC_TEL    VARCHAR2(20 BYTE),
  OLDID     VARCHAR2(3 BYTE),
  FK_KOD    VARCHAR2(3 BYTE),
  FP_VRACH  NUMBER(16),
  FL_DEL    NUMBER(1)                           DEFAULT 0
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          520K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TSOTR1 IS '���������� ����������� by TimurLan '
/

COMMENT ON COLUMN ASU.TSOTR1.FK_ID IS '�������������'
/

COMMENT ON COLUMN ASU.TSOTR1.FC_FAM IS '�������'
/

COMMENT ON COLUMN ASU.TSOTR1.FC_NAME IS '���'
/

COMMENT ON COLUMN ASU.TSOTR1.FC_OTCH IS '��������'
/

COMMENT ON COLUMN ASU.TSOTR1.FK_OTDID IS '�����'
/

COMMENT ON COLUMN ASU.TSOTR1.FC_TEL IS '�������'
/

COMMENT ON COLUMN ASU.TSOTR1.OLDID IS '��������� ����'
/

COMMENT ON COLUMN ASU.TSOTR1.FK_KOD IS '��� ����������'
/

COMMENT ON COLUMN ASU.TSOTR1.FP_VRACH IS '������� ����������'
/

COMMENT ON COLUMN ASU.TSOTR1.FL_DEL IS '������� "�������'
/


--
-- TSOTR_BY_ID_OTDID  (Index) 
--
--  Dependencies: 
--   TSOTR1 (Table)
--
CREATE INDEX ASU.TSOTR_BY_ID_OTDID ON ASU.TSOTR1
(FK_ID, FK_OTDID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TSOTR$NAME  (Index) 
--
--  Dependencies: 
--   TSOTR1 (Table)
--
CREATE INDEX ASU.TSOTR$NAME ON ASU.TSOTR1
(FC_FAM, FC_NAME, FC_OTCH)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


-- 
-- Non Foreign Key Constraints for Table TSOTR1 
-- 
ALTER TABLE ASU.TSOTR1 ADD (
  CONSTRAINT TSOTR_BY_ID
 PRIMARY KEY
 (FK_ID))
/
