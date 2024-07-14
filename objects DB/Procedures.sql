prompt PL/SQL Developer Export User Objects for user HR@XEPDB1
prompt Created by blekk on 14 Июль 2024 г.
set define off
spool Procedures.log

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

prompt
prompt Creating procedure VIBOR_PO_FIO_PROC
prompt ====================================
prompt
create or replace procedure hr.VIBOR_PO_FIO_PROC
-- ïîèñê äîãîâîðîâ ïî ôèî Êëèåíòà (âûâîäèò id êëèåíòà, ôèî,id ñ÷åòà , id äîãîâîðà, îñòàòîê äîãîâîðà)
(FIO_CLIENTA_parametr varchar2)is 
ID_clienta number(37);
FIO_CLIENTA_into varchar2(37);
Id_cheta number(37);
id_dog  number(37);
dep_Ostatok number(20);

begin
  Select c.id_client, c.FIO, d.id_chet, d.id_dep_dog, d.ostatok
  INTO ID_clienta, FIO_CLIENTA_into, Id_cheta, id_dog, dep_Ostatok 
  from CLI c inner join DEP_DOG  d on (c.id_client=d.id_client)
  where FIO = FIO_CLIENTA_parametr;
  DBMS_OUTPUT.enable;
  DBMS_OUTPUT.put_line('DANNYE O KLIENTE I EGO DEP DOGOVORAH   '|| ID_clienta||' '||FIO_CLIENTA_into||' '||Id_cheta ||' ' 
  ||id_dog||' '|| dep_Ostatok);    
end;
/


prompt Done
spool off
set define on
