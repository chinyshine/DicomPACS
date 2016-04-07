DROP INDEX ASU.I_SLUCH_DBF_ARCHIVE_ROWNUM
/

--
-- I_SLUCH_DBF_ARCHIVE_ROWNUM  (Index) 
--
CREATE INDEX ASU.I_SLUCH_DBF_ARCHIVE_ROWNUM ON ASU.TSLUCH_DBF_ARCHIVE
(FN_ROWNUM)
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

