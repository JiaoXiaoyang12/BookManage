create table if not exists item(
	id int(11) not null references title(id),
    librarycode varchar(255) not null,
    m_Loan tinyint(1) not null,
    m_losebook tinyint(1) not null,
    m_Reservation tinyint(1) not null,
    titled int (11) not null,
    primary key(id,librarycode));
create table if not exists reservation(
	id int(11) not null references item(id),
    librarycode varchar(255) not null references item(librarycode),
    reservedate date not null,
    borrowerid int(11) not null,
    titleld int(11) not null,
    primary key(id,librarycode),
    foreign key(borrowerid) references borrower(id)
    on update cascade
    on delete restrict
    );
create table if not exists losebook(
	id int(11) not null references item(id),
    librarycode varchar(255) not null references item(librarycode),
    losedate date not null,
    borrowerid int(11) not null,
    primary key(id,librarycode),
    foreign key(borrowerid) references borrower(id)
    on update cascade
    on delete restrict);
create table if not exists duedate(
	id int(11) not null references item(id),
    librarycode varchar(255) not null references item(librarycode),
    duedate date not null,
    primary key(id,librarycode)
    );
create table if not exists loan(
	id int(11) not null references item(id),
    librarycode varchar(255) not null references item(librarycode),
    loandate date not null,
    borrowerid int(11) not null,
    m_duedate tinyint(1) not null,
    primary key(id,librarycode),
    foreign key(borrowerid) references borrower(id)
    on update cascade
    on delete restrict);
