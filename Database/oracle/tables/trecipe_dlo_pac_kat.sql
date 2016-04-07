ALTER TABLE ASU.TRECIPE_DLO_PAC_KAT
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TRECIPE_DLO_PAC_KAT CASCADE CONSTRAINTS
/

--
-- TRECIPE_DLO_PAC_KAT  (Table) 
--
--  Dependencies: 
--   TRECIPE_DLO_REG_PAC (Table)
--
CREATE TABLE ASU.TRECIPE_DLO_PAC_KAT
(
  FK_ID        NUMBER,
  FK_REGPACID  NUMBER,
  FK_LPU       NUMBER,
  NPP          NUMBER,
  KAT          VARCHAR2(4 BYTE),
  TIPDOCKAT    NUMBER,
  DOCKAT       VARCHAR2(40 BYTE),
  DATABEG      DATE,
  DATAEND      DATE,
  MKB          VARCHAR2(5 BYTE),
  INVALID      VARCHAR2(2 BYTE),
  DATADOCEND   DATE
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TRECIPE_DLO_PAC_KAT IS '���. ������������ ������� ����������. ���� ������ �� ���������� ��������� � ���'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.FK_ID IS '����'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.FK_REGPACID IS '������ �� ���������'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.FK_LPU IS '��� ���'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.NPP IS '� �/� ��� ��������� ���������'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.KAT IS '��� ���������'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.TIPDOCKAT IS '��� ���� ��������� �� ������'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.DOCKAT IS '�������� �� ������'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.DATABEG IS '���� ������ �������� ���������'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.DATAEND IS '���� ��������� �������� ���������'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.MKB IS '��� ��������'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.INVALID IS '������ ������������'
/

COMMENT ON COLUMN ASU.TRECIPE_DLO_PAC_KAT.DATADOCEND IS '���� ��������� �������� ��������� �� ���������'
/


--
-- TRECIPE_DLO_PAC_KAT_IDX  (Index) 
--
--  Dependencies: 
--   TRECIPE_DLO_PAC_KAT (Table)
--
CREATE INDEX ASU.TRECIPE_DLO_PAC_KAT_IDX ON ASU.TRECIPE_DLO_PAC_KAT
(FK_REGPACID, FK_LPU)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TRECIPE_DLO_PAC_KAT_PK  (Index) 
--
--  Dependencies: 
--   TRECIPE_DLO_PAC_KAT (Table)
--
CREATE UNIQUE INDEX ASU.TRECIPE_DLO_PAC_KAT_PK ON ASU.TRECIPE_DLO_PAC_KAT
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TRECIPE_DLO_PAC_KAT_INS  (Trigger) 
--
--  Dependencies: 
--   TRECIPE_DLO_PAC_KAT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRECIPE_DLO_PAC_KAT_INS"
 BEFORE
  INSERT
 ON ASU.TRECIPE_DLO_PAC_KAT REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
  if (:new.fk_id is null) then
    select ASU.SEQ_TRECIPE_DLO_PAC_KAT.nextval into :new.fk_id from dual;
  end if;
end;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TRECIPE_DLO_PAC_KAT 
-- 
ALTER TABLE ASU.TRECIPE_DLO_PAC_KAT ADD (
  CONSTRAINT TRECIPE_DLO_PAC_KAT_PK
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

-- 
-- Foreign Key Constraints for Table TRECIPE_DLO_PAC_KAT 
-- 
ALTER TABLE ASU.TRECIPE_DLO_PAC_KAT ADD (
  CONSTRAINT TRECIPE_DLO_PAC_KAT_PAC_FK 
 FOREIGN KEY (FK_REGPACID) 
 REFERENCES ASU.TRECIPE_DLO_REG_PAC (FK_ID))
/
