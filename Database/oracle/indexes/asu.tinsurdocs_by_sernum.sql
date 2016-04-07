DROP INDEX ASU.TINSURDOCS_BY_SERNUM
/

--
-- TINSURDOCS_BY_SERNUM  (Index) 
--
CREATE INDEX ASU.TINSURDOCS_BY_SERNUM ON ASU.TINSURDOCS
(FC_SER, FC_NUM, FK_COMPANYID)
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

