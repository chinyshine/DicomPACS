DROP TRIGGER ASU.TBLOB_ARRAY_INSERT
/

--
-- TBLOB_ARRAY_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TBLOB_ARRAY (Sequence)
--   TBLOB_ARRAY (Table)
--
CREATE OR REPLACE TRIGGER ASU."TBLOB_ARRAY_INSERT"
      BEFORE INSERT ON ASU.TBLOB_ARRAY       REFERENCING OLD AS OLD NEW AS NEW
      FOR EACH ROW
BEGIN
      SELECT ASU.SEQ_TBLOB_ARRAY.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
    END;
/
SHOW ERRORS;


