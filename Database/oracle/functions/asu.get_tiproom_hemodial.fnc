DROP FUNCTION ASU.GET_TIPROOM_HEMODIAL
/

--
-- GET_TIPROOM_HEMODIAL  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_TIPROOM_HEMODIAL
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 314;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_TIPROOM_HEMODIAL
/

--
-- GET_TIPROOM_HEMODIAL  (Synonym) 
--
--  Dependencies: 
--   GET_TIPROOM_HEMODIAL (Function)
--
CREATE PUBLIC SYNONYM GET_TIPROOM_HEMODIAL FOR ASU.GET_TIPROOM_HEMODIAL
/


GRANT EXECUTE ON ASU.GET_TIPROOM_HEMODIAL TO PUBLIC
/
