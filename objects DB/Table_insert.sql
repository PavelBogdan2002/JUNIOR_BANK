prompt PL/SQL Developer Export Tables for user HR@XEPDB1
prompt Created by blekk on 23 Июль 2024 г.
set feedback off
set define off

prompt Disabling triggers for CLIENTS_BANK...
alter table CLIENTS_BANK disable all triggers;
prompt Disabling triggers for CHETA...
alter table CHETA disable all triggers;
prompt Disabling triggers for PROVODKI...
alter table PROVODKI disable all triggers;
prompt Disabling triggers for DEISTVIA_DEP...
alter table DEISTVIA_DEP disable all triggers;
prompt Disabling triggers for DEP_DOG...
alter table DEP_DOG disable all triggers;
prompt Loading CLIENTS_BANK...
insert into CLIENTS_BANK (id_client, first_name, middle_name, last_name, date_birhday, ser_passport, num_passport, type_clent, data_passport)
values (1, 'Oleg', 'Vladimirovich', 'Tinkoff', to_date('22-07-1971', 'dd-mm-yyyy'), 3214, 564532, null, null);
insert into CLIENTS_BANK (id_client, first_name, middle_name, last_name, date_birhday, ser_passport, num_passport, type_clent, data_passport)
values (2, 'Vlad', 'Vladimirovich', 'Vladov', to_date('07-07-1999', 'dd-mm-yyyy'), 3224, 584931, null, null);
insert into CLIENTS_BANK (id_client, first_name, middle_name, last_name, date_birhday, ser_passport, num_passport, type_clent, data_passport)
values (3, 'Olga', 'Dmitrievna', 'Volkova', to_date('10-10-1968', 'dd-mm-yyyy'), 1414, 891241, null, null);
insert into CLIENTS_BANK (id_client, first_name, middle_name, last_name, date_birhday, ser_passport, num_passport, type_clent, data_passport)
values (1111, 'JUNIOR', 'BANK', 'KASSA', to_date('10-10-1968', 'dd-mm-yyyy'), 0, 0, 3, null);
commit;
prompt 4 records loaded
prompt Loading CHETA...
insert into CHETA (id_chet, num_chet, id_client, tip_klienta, status_sheta, date_otkrytia, date_zakrytia)
values (1, 42100000001, 1, null, 1, to_date('12-12-2000', 'dd-mm-yyyy'), null);
insert into CHETA (id_chet, num_chet, id_client, tip_klienta, status_sheta, date_otkrytia, date_zakrytia)
values (2, 42100000002, 2, null, 1, to_date('10-09-2022', 'dd-mm-yyyy'), null);
insert into CHETA (id_chet, num_chet, id_client, tip_klienta, status_sheta, date_otkrytia, date_zakrytia)
values (3, 41700000001, 3, null, 2, to_date('10-10-1999', 'dd-mm-yyyy'), to_date('10-10-2015', 'dd-mm-yyyy'));
insert into CHETA (id_chet, num_chet, id_client, tip_klienta, status_sheta, date_otkrytia, date_zakrytia)
values (1111, 111111, 1111, 3, 1, to_date('12-12-1950', 'dd-mm-yyyy'), null);
commit;
prompt 4 records loaded
prompt Loading PROVODKI...
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (5, null, null, null, null, null);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (1, 1111, 2, null, null, null);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (140, 1111, 2, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 10000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (142, 1111, 2, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 10000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (144, 1111, 3, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 10000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (160, 1111, 3, to_date('08-05-1999', 'dd-mm-yyyy'), 2, 10000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (162, 1111, 3, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 100000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (164, 1111, 3, to_date('08-05-1999', 'dd-mm-yyyy'), 2, 100000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (166, 1111, 3, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 500000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (180, 1111, 3, to_date('08-05-1999', 'dd-mm-yyyy'), 2, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (200, 1111, 2, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (220, 1111, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (222, 1111, 2, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (224, 1111, 2, to_date('08-05-1999', 'dd-mm-yyyy'), 2, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (240, 1111, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (260, 1111, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (262, 1111, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (280, 1111, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (282, 1111, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (300, 1111, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (320, 1111, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (322, 1111, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (324, 1111, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (326, 1111, 1, to_date('22-07-0024', 'dd-mm-yyyy'), 1, 250000);
insert into PROVODKI (id_provodki, id_chet_credet, id_chet_debet, date_provodki, type_deistvia, summa_provodki)
values (328, 1111, 1, to_date('22-07-0024', 'dd-mm-yyyy'), 1, 250000);
commit;
prompt 25 records loaded
prompt Loading DEISTVIA_DEP...
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (100, 5, null, null, null, null, null);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (141, 140, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 2, 1, 10000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (143, 142, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 2, 1, 10000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (145, 144, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 3, 1, 10000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (161, 160, 2, to_date('08-05-1999', 'dd-mm-yyyy'), 3, 1, 10000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (163, 162, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 3, 1, 100000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (165, 164, 2, to_date('08-05-1999', 'dd-mm-yyyy'), 3, 1, 100000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (167, 166, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 3, 1, 500000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (181, 180, 2, to_date('08-05-1999', 'dd-mm-yyyy'), 3, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (201, 200, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 2, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (221, 220, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (223, 222, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 2, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (225, 224, 2, to_date('08-05-1999', 'dd-mm-yyyy'), 2, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (241, 240, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (261, 260, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (263, 262, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (281, 280, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (283, 282, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (301, 300, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (321, 320, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (323, 322, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (325, 324, 1, to_date('08-05-1999', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (327, 326, 1, to_date('22-07-0024', 'dd-mm-yyyy'), 1, 1, 250000);
insert into DEISTVIA_DEP (id_deistvia, id_provodki, type_deistvia, data_deistvia, chet_debeta, chet_credita, summa_deistvia)
values (329, 328, 1, to_date('22-07-0024', 'dd-mm-yyyy'), 1, 1, 250000);
commit;
prompt 24 records loaded
prompt Loading DEP_DOG...
insert into DEP_DOG (id_dep_dog, num_dog, id_client, id_chet, data_podps, data_end, proc, data_zakrutia, period_vuplaty)
values (3, 33, '3', 3, to_date('20-06-2024', 'dd-mm-yyyy'), to_date('20-06-2025', 'dd-mm-yyyy'), 11, null, null);
insert into DEP_DOG (id_dep_dog, num_dog, id_client, id_chet, data_podps, data_end, proc, data_zakrutia, period_vuplaty)
values (1, 11, '1', 1, to_date('12-12-2001', 'dd-mm-yyyy'), to_date('12-12-2005', 'dd-mm-yyyy'), 13, null, null);
insert into DEP_DOG (id_dep_dog, num_dog, id_client, id_chet, data_podps, data_end, proc, data_zakrutia, period_vuplaty)
values (2, 22, '2', 2, to_date('12-12-2000', 'dd-mm-yyyy'), to_date('12-12-2023', 'dd-mm-yyyy'), 12, null, null);
commit;
prompt 3 records loaded
prompt Enabling triggers for CLIENTS_BANK...
alter table CLIENTS_BANK enable all triggers;
prompt Enabling triggers for CHETA...
alter table CHETA enable all triggers;
prompt Enabling triggers for PROVODKI...
alter table PROVODKI enable all triggers;
prompt Enabling triggers for DEISTVIA_DEP...
alter table DEISTVIA_DEP enable all triggers;
prompt Enabling triggers for DEP_DOG...
alter table DEP_DOG enable all triggers;

set feedback on
set define on
prompt Done
