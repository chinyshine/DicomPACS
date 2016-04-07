DROP FUNCTION ASU.GET_DD_NEED_II_TRUE
/

--
-- GET_DD_NEED_II_TRUE  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_DD_NEED_II_TRUE
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1179436;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_DD_NEED_II_TRUE
/

--
-- GET_DD_NEED_II_TRUE  (Synonym) 
--
--  Dependencies: 
--   GET_DD_NEED_II_TRUE (Function)
--
CREATE PUBLIC SYNONYM GET_DD_NEED_II_TRUE FOR ASU.GET_DD_NEED_II_TRUE
/


GRANT EXECUTE ON ASU.GET_DD_NEED_II_TRUE TO PUBLIC
/
