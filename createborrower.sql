create database if not exists DBBK char set gbk collate gbk_chinese_ci;
create table if not exists borrower(
	id int(11) not null primary key,
    cardno varchar(255) not null,
    department varchar(255) not null,
    name varchar(255) not null,
    type varchar(255) not null);
create table if not exists graduate(
	id int(11) references borrower(id),
    director varchar(255) not null,
    major varchar(255) not null);
create table if not exists undergraduate(
	id int(11) references borrower(id),
    major varchar(255) not null);

#create table if not exists reservation(
#	id int(11) references borrower(id),
#   reserverdate date not null,
#    borrowerld int(11) not null