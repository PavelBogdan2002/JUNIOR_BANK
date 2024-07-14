prompt PL/SQL Developer Export User Objects for user HR@XEPDB1
prompt Created by blekk on 14 Июль 2024 г.
set define off
spool Functions.log

prompt
prompt Creating function DOHOD_ZA_VES_SROK
prompt ===================================
prompt
create or replace function hr.DOHOD_ZA_VES_SROK
(
OSTATOK  number,
Proc number, 
DATA_PODPS date,
DATA_END date
)
return number
  is
 
  summ_vp_not_tab number;
  Kolvo_let number;

  begin
   Kolvo_let:= to_number(floor(MONTHS_BETWEEN(data_end,data_podps)/12));
  summ_vp_not_tab := (OSTATOK*Proc)/100 * Kolvo_let; 
  
  
  return summ_vp_not_tab;
  end;
/

prompt
prompt Creating procedure POISK_KLIENTA_S_MAX_DOHODOM
prompt ==============================================
prompt
create or replace procedure hr.POISK_KLIENTA_S_MAX_DOHODOM
(id_client_param in varchar2) is
id_client_tb number(20);
max_dohod_za_god number(20);
begin
  Select max(dohod_za_god), id_client into max_dohod_za_god, id_client_tb from dep_dogs_info where id_client = id_client_param group by id_client ;
  DBMS_OUTPUT.enable;
  DBMS_OUTPUT.put_line(max_dohod_za_god||' '||id_client_tb );
end POISK_KLIENTA_S_MAX_DOHODOM;
/


prompt Done
spool off
set define on
