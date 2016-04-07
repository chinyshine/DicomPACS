DROP FUNCTION ASU.GET_DAYSTACID
/

--
-- GET_DAYSTACID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_DAYSTACID
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_DAYSTACID
/

--
-- GET_DAYSTACID  (Synonym) 
--
--  Dependencies: 
--   GET_DAYSTACID (Function)
--
CREATE PUBLIC SYNONYM GET_DAYSTACID FOR ASU.GET_DAYSTACID
/


GRANT EXECUTE ON ASU.GET_DAYSTACID TO PUBLIC
/
