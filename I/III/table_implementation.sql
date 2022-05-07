--accounts

create table accounts (
accountnum integer,
status text,
address text,
balance numeric, 
primary key (accountnum));

insert into accounts (accountnum, status, address, balance) values (989867213, 'Открыт', 'Тропинина ул., 3, 32', 1116.37);
insert into accounts (accountnum, status, address, balance) values (989722709, 'Открыт', 'Совнаркомовская ул., 34, 158', 1244.30);
insert into accounts (accountnum, status, address, balance) values (989307856, 'Открыт', 'Желябова ул., 3, 64', 4143.58);
insert into accounts (accountnum, status, address, balance) values (989923959, 'Закрыт', 'Максима Горького ул., 152, 80', 2590.44);
insert into accounts (accountnum, status, address, balance) values (989518404, 'Открыт', 'Желябова ул., 21, 64', 1183.54);

--trans

create table trans (
transid integer,
accountnum integer,
period date,
item text, 
amount numeric,
primary key (transid));

insert into trans (transid, accountnum, period, item, amount) values (1663739, 989307856, '2021-02-01', 'Отопление', 1004.81);
insert into trans (transid, accountnum, period, item, amount) values (1459488, 989307856, '2021-02-01', 'Содержание', 511.77);
insert into trans (transid, accountnum, period, item, amount) values (1261632, 989518404, '2021-01-01', 'Лифт', 110.32);
insert into trans (transid, accountnum, period, item, amount) values (568496, 989518404, '2021-02-01', 'Содержание', 1063.40);
insert into trans (transid, accountnum, period, item, amount) values (1365708, 989518404, '2021-02-01', 'Отопление', 1245.87);
insert into trans (transid, accountnum, period, item, amount) values (616061, 989518404, '2021-02-01', 'Электроэнергия', 83.21);
insert into trans (transid, accountnum, period, item, amount) values (1437432, 989722709, '2021-02-01', 'ГВС', 724.92);
insert into trans (transid, accountnum, period, item, amount) values (631712, 989722709, '2021-02-01', 'ХВС', 201.81);
insert into trans (transid, accountnum, period, item, amount) values (1162786, 989867213, '2021-02-01', 'Содержание', 1031.23);
insert into trans (transid, accountnum, period, item, amount) values (1358962, 989867213, '2021-02-01', 'Отопление', 1224.78);
insert into trans (transid, accountnum, period, item, amount) values (1296628, 989923959, '2021-02-01', 'Содержание', 580.32);
insert into trans (transid, accountnum, period, item, amount) values (1265983, 989923959, '2021-02-01', 'Отопление', 1007.04);