DROP FUNCTION ASU.GET_KDN_PERIOD
/

--
-- GET_KDN_PERIOD  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   GET_KDN (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_KDN_PERIOD" 
  ( pFD_DATA1 IN DATE,pFD_DATA2 IN DATE)
  RETURN  NUMBER IS
  i NUMBER;
  s NUMBER;
BEGIN
  S:=0;
  FOR i IN 0..pFD_DATA2-pFD_DATA1 LOOP
    S:=S+GET_KDN(pFD_DATA1+i);
  END LOOP;
  RETURN S;
END;
/

SHOW ERRORS;

