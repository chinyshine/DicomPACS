ALTER TABLE ASU.TDISP_MK
  DROP CONSTRAINT TDISP_MK_PK_ID
/

-- 
-- Non Foreign Key Constraints for Table TDISP_MK 
-- 
ALTER TABLE ASU.TDISP_MK ADD (
  CONSTRAINT TDISP_MK_PK_ID
 PRIMARY KEY
 (FK_ID))
/
