DROP TRIGGER ASU.TEXCHANGE_ELSELOG_INSERT
/

--
-- TEXCHANGE_ELSELOG_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TEXCHANGE_ELSELOG (Sequence)
--   TEXCHANGE_ELSELOG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TEXCHANGE_ELSELOG_INSERT"
 BEFORE
  INSERT
 ON ASU.TEXCHANGE_ELSELOG REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  IF :new.fk_id IS NULL THEN
    SELECT asu.SEQ_TEXCHANGE_ELSELOG.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;
End;
/
SHOW ERRORS;

