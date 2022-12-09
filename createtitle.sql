create table if not exists title(
	id int(11) not null primary key,
    author varchar(255) not null,
    borrowednumber int(11) not null,
    isbn varchar(255) not null,
    name varchar(255) not null,
    price float not null,
    totalnumber int(11)not null,
    type varchar(255) not null,
    unique(isbn)
    );
create table if not exists magazine(
	id int(11) not null,
    press varchar(255)not null,
    volume varchar(255)not null,
    primary key(id),
    foreign key(id) references title(id)
    on delete cascade
    on update cascade
    );
create table if not exists book(
	id int(11) not null,
    press varchar(255)not null,
    publishdate date not null,
    version varchar(255),
    primary key(id),
    foreign key(id) references title(id)
    on delete cascade
    on update cascade
    );