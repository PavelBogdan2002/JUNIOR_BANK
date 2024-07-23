prompt PL/SQL Developer Export User Objects for user HR@XEPDB1
prompt Created by blekk on 23 Июль 2024 г.
set define off
spool views.log

prompt
prompt Creating view CHET_INFO
prompt =======================
prompt
create or replace force view chet_info as
with a as (select sum(p.summa_provodki) as a,p.ID_CHET_DEBET as d from CHETA d  inner join provodki p on (d.id_chet=p.id_chet_debet) where p.type_deistvia = '1' group by p.ID_CHET_DEBET),
b as (select sum(p.summa_provodki) as a,p.ID_CHET_DEBET as d  from CHETA d  inner join provodki p on (d.id_chet=p.id_chet_debet) where p.type_deistvia = '2' group by p.ID_CHET_DEBET),
s as (select
c.id_chet as id_chet,
c.num_chet ,
c.id_client ,
c.tip_klienta ,
c.status_sheta ,
c.date_otkrytia ,
c.date_zakrytia   from cheta c inner join provodki p on (c.id_chet=p.id_chet_debet) )
select distinct s."ID_CHET" as ID_CHET ,s."NUM_CHET",s."ID_CLIENT",s."TIP_KLIENTA",s."STATUS_SHETA",s."DATE_OTKRYTIA",s."DATE_ZAKRYTIA",    a.a as DOHODI ,  b.a as RASHODI , a.a - Nvl(b.a,0) as OSTATOK from a left join b on (a.d=b.d)  inner join s on (s.id_chet=a.d) order by s.id_chet;

prompt
prompt Creating view CLI
prompt =================
prompt
create or replace force view cli as
(Select id_client,
first_name ||' '||
middle_name ||' '||
last_name as FIO,
date_birhday,
ser_passport||' '||
num_passport as pass,
type_clent  from CLIENTS_BANK);

prompt
prompt Creating view DOGS_INFO_OSTATOK
prompt ===============================
prompt
create or replace force view dogs_info_ostatok as
select
d.id_dep_dog,
d.num_dog,
d.id_client,
c.FIO,
d.id_chet,
d.data_podps,
d.data_end,
d.proc,
d.data_zakrutia,
d.period_vuplaty,
 dohod_za_ves_srok_dogovora(chet_info.OSTATOK,
d.Proc ,
d.DATA_PODPS ,
d.DATA_END ) as dohod_za_ves_srok_dogovora, chet_info.DOHODI, chet_info.rashodi, chet_info.ostatok from dep_dog d  inner join chet_info on (chet_info.ID_CHET =d.id_chet ) inner join cli c on (d.id_client =c.id_client ) order by id_dep_dog;


prompt Done
spool off
set define on
