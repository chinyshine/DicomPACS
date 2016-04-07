DROP INDEX ASU.TSKUD_PEOPLES_FK_PEOPLES
/

--
-- TSKUD_PEOPLES_FK_PEOPLES  (Index) 
--
CREATE INDEX ASU.TSKUD_PEOPLES_FK_PEOPLES ON ASU.TSKUD_PEOPLES
(FK_PEOPLES)
NOLOGGING
TABLESPACE INDX
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

