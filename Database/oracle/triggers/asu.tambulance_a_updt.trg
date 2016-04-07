DROP TRIGGER ASU.TAMBULANCE_A_UPDT
/

--
-- TAMBULANCE_A_UPDT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TAMBULANCE (Table)
--   TEXP_TPACKART (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAMBULANCE_A_UPDT"
 AFTER UPDATE
 ON ASU.TAMBULANCE  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
DECLARE
 vCnt     NUMBER;
BEGIN
 SELECT COALESCE(MAX(FK_ID), -1979) INTO vCnt FROM ASU.TEXP_TPACKART WHERE FK_PACID = :NEW.FK_ID;

 IF vCnt = -1979
 THEN
  INSERT INTO ASU.TEXP_TPACKART(FK_PACID, FP_ISABULANCE)
  VALUES(:NEW.FK_ID, 1);
 ELSE
  UPDATE ASU.TEXP_TPACKART
  SET FD_LAST_UPDATE = SYSDATE
  WHERE FK_PACID = :NEW.FK_ID;
 END IF;
End;
/
SHOW ERRORS;

