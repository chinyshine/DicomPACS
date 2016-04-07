DROP TRIGGER ASU.TPEOPLES_COMPANY_BEFORE_INSERT
/

--
-- TPEOPLES_COMPANY_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPEOPLES_COMPANY (Sequence)
--   TPEOPLES_COMPANY (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPEOPLES_COMPANY_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON asu.tpeoples_company
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  SELECT SEQ_TPEOPLES_COMPANY.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;

