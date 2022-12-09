create table if not exists reservation(
	id int(11) not null references title(id),
    reservedate date not null,
    borrowerid int(11) not null,
    titleld int(11) not null,
    primary key(id),
    foreign key(borrowerid) references borrower(id)
    on update cascade
    on delete restrict
    );
create table if not exists losebook(
	id int(11) not null references title(id),
    losedate date not null,
    borrowerid int(11) not null,
    primary key(id),
    foreign key(borrowerid) references borrower(id)
    on update cascade
    on delete restrict);
create table if not exists duedate(
	id int(11) not null references borrower(id),
    duedate date not null,
    primary key(id)
    );
create table if not exists loan(
	id int(11) not null primary key references title(id),
    loandate date not null,
    borrowerid int(11) not null,
    m_duedate int(11) not null,
    foreign key(borrowerid) references borrower(id)
    on update cascade
    on delete restrict);