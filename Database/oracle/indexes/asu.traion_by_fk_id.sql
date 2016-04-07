DROP INDEX ASU.TRAION_BY_FK_ID
/

--
-- TRAION_BY_FK_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TRAION_BY_FK_ID ON ASU.TRAION
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

