DROP INDEX ASU.TNAZAN_SOS_VRACHID
/

--
-- TNAZAN_SOS_VRACHID  (Index) 
--
CREATE INDEX ASU.TNAZAN_SOS_VRACHID ON ASU.TNAZAN
(FK_VRACHID, FD_NAZ)
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

