prompt PL/SQL Developer Export User Objects for user HR@XEPDB1
prompt Created by blekk on 23 Июль 2024 г.
set define off
spool functions.log

prompt
prompt Creating function DOHOD_ZA_VES_SROK_DOGOVORA
prompt ============================================
prompt
create or replace function dohod_za_ves_srok_dogovora
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


prompt Done
spool off
set define on
