DROP INDEX ASU.TSCRJ_FK_PACID
/

--
-- TSCRJ_FK_PACID  (Index) 
--
CREATE INDEX ASU.TSCRJ_FK_PACID ON ASU.TSCREENING_JOURNAL
(FK_PACID)
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

