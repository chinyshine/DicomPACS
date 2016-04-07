DROP INDEX ASU.PK_TNAZN_STATUS
/

--
-- PK_TNAZN_STATUS  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TNAZN_STATUS ON ASU.TNAZN_STATUS
(FK_ID)
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

