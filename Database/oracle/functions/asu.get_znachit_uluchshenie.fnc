DROP FUNCTION ASU.GET_ZNACHIT_ULUCHSHENIE
/

--
-- GET_ZNACHIT_ULUCHSHENIE  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_ZNACHIT_ULUCHSHENIE
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return -1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_ZNACHIT_ULUCHSHENIE
/

--
-- GET_ZNACHIT_ULUCHSHENIE  (Synonym) 
--
--  Dependencies: 
--   GET_ZNACHIT_ULUCHSHENIE (Function)
--
CREATE PUBLIC SYNONYM GET_ZNACHIT_ULUCHSHENIE FOR ASU.GET_ZNACHIT_ULUCHSHENIE
/


GRANT EXECUTE ON ASU.GET_ZNACHIT_ULUCHSHENIE TO PUBLIC
/
