DROP INDEX ASU.I_TFORM1MED_YM
/

--
-- I_TFORM1MED_YM  (Index) 
--
CREATE UNIQUE INDEX ASU.I_TFORM1MED_YM ON ASU.TFORM1MED
(YEAR, MONTH)
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

