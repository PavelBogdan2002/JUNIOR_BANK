prompt PL/SQL Developer Export User Objects for user HR@XEPDB1
prompt Created by blekk on 23 Июль 2024 г.
set define off
spool Tables.log

prompt
prompt Creating table CLIENTS_BANK
prompt ===========================
prompt
create table CLIENTS_BANK
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
alter table CLIENTS_BANK
  add constraint ID_CLIENT_PK primary key (ID_CLIENT);

prompt
prompt Creating table CHETA
prompt ====================
prompt
create table CHETA
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
alter table CHETA
  add constraint ID_CHET_PK primary key (ID_CHET);
alter table CHETA
  add constraint ID_CLIENT_FK foreign key (ID_CLIENT)
  references CLIENTS_BANK (ID_CLIENT);

prompt
prompt Creating table PROVODKI
prompt =======================
prompt
create table PROVODKI
(
  id_provodki    NUMBER(20) not null,
  id_chet_credet NUMBER(20),
  id_chet_debet  NUMBER(20),
  date_provodki  DATE,
  type_deistvia  NUMBER(2),
  summa_provodki NUMBER(20)
)
;
alter table PROVODKI
  add constraint ID_PROVODKI_PK primary key (ID_PROVODKI);
alter table PROVODKI
  add constraint ID_CHET_CREDET_FK foreign key (ID_CHET_CREDET)
  references CHETA (ID_CHET);
alter table PROVODKI
  add constraint ID_CHET_DEBET_FK foreign key (ID_CHET_DEBET)
  references CHETA (ID_CHET);

prompt
prompt Creating table DEISTVIA_DEP
prompt ===========================
prompt
create table DEISTVIA_DEP
(
  id_deistvia    NUMBER(20) not null,
  id_provodki    NUMBER(20),
  type_deistvia  NUMBER(2),
  data_deistvia  DATE,
  chet_debeta    NUMBER(20),
  chet_credita   NUMBER(20),
  summa_deistvia NUMBER(20)
)
;
alter table DEISTVIA_DEP
  add constraint ID_DEISTVIA_PK primary key (ID_DEISTVIA);
alter table DEISTVIA_DEP
  add constraint ID_PROVODKI_FK foreign key (ID_PROVODKI)
  references PROVODKI (ID_PROVODKI);

prompt
prompt Creating table DEP_DOG
prompt ======================
prompt
create table DEP_DOG
(
  id_dep_dog     NUMBER(20) not null,
  num_dog        NUMBER(20) not null,
  id_client      VARCHAR2(100) not null,
  id_chet        NUMBER(20) not null,
  data_podps     DATE,
  data_end       DATE,
  proc           NUMBER(10),
  data_zakrutia  DATE,
  period_vuplaty NUMBER(1)
)
;
alter table DEP_DOG
  add constraint ID_DEP_DOG_PK primary key (ID_DEP_DOG);
alter table DEP_DOG
  add constraint ID_CHET_FKF foreign key (ID_CHET)
  references CHETA (ID_CHET);

prompt
prompt Creating table VUPLATA
prompt ======================
prompt
create table VUPLATA
(
  id_vuplatu     NUMBER(20) not null,
  id_dog         NUMBER(20) not null,
  date_vuplatu   NUMBER(20) not null,
  status_vuplatu NUMBER(1) not null
)
;
alter table VUPLATA
  add constraint ID_VUPLATU_PK primary key (ID_VUPLATU);


prompt Done
spool off
set define on
