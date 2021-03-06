DROP INDEX ASU.TDOCOBSL_BY_ID_VIDDOC
/

--
-- TDOCOBSL_BY_ID_VIDDOC  (Index) 
--
CREATE UNIQUE INDEX ASU.TDOCOBSL_BY_ID_VIDDOC ON ASU.TDOCOBSL
(FK_ID, FK_VIDDOCID)
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


