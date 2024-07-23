prompt PL/SQL Developer Export User Objects for user HR@XEPDB1
prompt Created by blekk on 23 Июль 2024 г.
set define off
spool triggers.log

prompt
prompt Creating trigger PROVODKI_FOR_DEISTVIA
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER PROVODKI_FOR_DEISTVIA
AFTER INSERT ON PROVODKI
FOR EACH ROW
DECLARE

BEGIN

INSERT INTO deistvia_dep(
deistvia_dep.id_deistvia,
deistvia_dep.id_provodki,
deistvia_dep.chet_credita ,
deistvia_dep.chet_debeta ,
deistvia_dep.data_deistvia ,
deistvia_dep.type_deistvia ,
deistvia_dep.summa_deistvia)
  VALUES(P_D_D.NEXTVAL,
   :NEW.id_provodki,
   :NEW.id_chet_credet ,
   :NEW.id_chet_debet ,
   :NEW.date_provodki ,
   :NEW.type_deistvia ,
   :NEW.SUMMA_PROVODKI);
END PROVODKI_FOR_DEISTVIA;
/


prompt Done
spool off
set define on
