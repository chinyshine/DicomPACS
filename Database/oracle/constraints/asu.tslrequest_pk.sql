ALTER TABLE ASU.TSLREQUEST
  DROP CONSTRAINT TSLREQUEST_PK
/

-- 
-- Non Foreign Key Constraints for Table TSLREQUEST 
-- 
ALTER TABLE ASU.TSLREQUEST ADD (
  CONSTRAINT TSLREQUEST_PK
 PRIMARY KEY
 (FK_ID))
/
