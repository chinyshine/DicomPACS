DROP TRIGGER ASU.TDAYPLAN_BEFORE_INSERT
/

--
-- TDAYPLAN_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TDAYPLAN (Sequence)
--   TDAYPLAN (Table)
--
CREATE OR REPLACE TRIGGER ASU."TDAYPLAN_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TDAYPLAN REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TDayPlan.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

