DROP FUNCTION ASU.IS_USE_AREAL
/

--
-- IS_USE_AREAL  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.IS_USE_AREAL
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM IS_USE_AREAL
/

--
-- IS_USE_AREAL  (Synonym) 
--
--  Dependencies: 
--   IS_USE_AREAL (Function)
--
CREATE PUBLIC SYNONYM IS_USE_AREAL FOR ASU.IS_USE_AREAL
/


GRANT EXECUTE ON ASU.IS_USE_AREAL TO PUBLIC
/
