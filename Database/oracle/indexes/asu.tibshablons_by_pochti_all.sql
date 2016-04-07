DROP INDEX ASU.TIBSHABLONS_BY_POCHTI_ALL
/

--
-- TIBSHABLONS_BY_POCHTI_ALL  (Index) 
--
CREATE INDEX ASU.TIBSHABLONS_BY_POCHTI_ALL ON ASU.TIBSHABLONS
(FK_SMEDITID, FK_FORMID, FK_SMID, FN_NUM)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          768K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

