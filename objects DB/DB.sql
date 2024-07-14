prompt PL/SQL Developer Export User Objects for user HR@XEPDB1
prompt Created by blekk on 14 Июль 2024 г.
set define off
spool DB.log

prompt
prompt Creating table CLIENTS_BANK
prompt ===========================
prompt
create table HR.CLIENTS_BANK
(
  id_client     NUMBER(20) not null,
  first_name    VARCHAR2(50) not null,
  middle_name   VARCHAR2(50) not null,
  last_name     VARCHAR2(50) not null,
  date_birhday  DATE not null,
  ser_passport  NUMBER(4) not null,
  num_passport  NUMBER(6) not null,
  type_clent    NUMBER(1),
  data_passport DATE
)
;
alter table HR.CLIENTS_BANK
  add constraint ID_CLIENT_PK primary key (ID_CLIENT);

prompt
prompt Creating table CHETA
prompt ====================
prompt
create table HR.CHETA
(
  id_chet       NUMBER(20) not null,
  num_chet      NUMBER(20) not null,
  id_client     NUMBER(20) not null,
  tip_klienta   NUMBER(1),
  status_sheta  NUMBER(1) not null,
  date_otkrytia DATE not null,
  date_zakrytia DATE
)
;
alter table HR.CHETA
  add constraint ID_CHET_PK primary key (ID_CHET);
alter table HR.CHETA
  add constraint ID_CLIENT_FK foreign key (ID_CLIENT)
  references HR.CLIENTS_BANK (ID_CLIENT);

prompt
prompt Creating table DEP_DOG
prompt ======================
prompt
create table HR.DEP_DOG
(
  id_dep_dog     NUMBER(20) not null,
  num_dog        NUMBER(20) not null,
  id_client      VARCHAR2(100) not null,
  id_chet        NUMBER(20) not null,
  ostatok        NUMBER(20),
  data_podps     DATE,
  data_end       DATE,
  proc           NUMBER(10),
  data_zakrutia  DATE,
  period_vuplaty NUMBER(1)
)
;
alter table HR.DEP_DOG
  add constraint ID_DEP_DOG_PK primary key (ID_DEP_DOG);
alter table HR.DEP_DOG
  add constraint ID_CHET_FKF foreign key (ID_CHET)
  references HR.CHETA (ID_CHET);


prompt Done
spool off
set define on
