delimiter $$
create trigger t_insert_reservation after insert on reservation for each row
begin
	update item set m_Reservation=1 where new.id=id and new.librarycode=librarycode;
    end$$
delimiter ;
delimiter $$
create trigger t_del_reservation after delete on reservation for each row
begin
	update item set m_Reservation=0 where id=old.id and librarycode=old.librarycode;
    end$$
delimiter ;
delimiter $$
create trigger t_insert_losebook after insert on losebook for each row
begin
	update item set m_losebook=1 where new.id=id and new.librarycode=librarycode;
    end$$
delimiter ;
delimiter $$
create trigger t_delete_losebook after delete on losebook for each row
begin
	update item set m_losebook=0 where id=old.id and librarycode=old.librarycode;
    end$$
delimiter ;
delimiter $$
create trigger t_insert_loan after insert on loan for each row
begin
	update item set m_Loan=1 where new.id=id and new.librarycode=librarycode;
    end$$
delimiter ;
delimiter $$
create trigger t_del_loan after delete on loan for each row
begin
	update item set m_Loan=0 where id=old.id and librarycode=old.librarycode;
    end$$
delimiter ;
delimiter $$
create trigger t_add_borrowedbook after update on item for each row
begin 
	update title set borrowednumber=(select count(*) from item where new.id=old.id and(m_Reservation=1 or m_Loan=1));
    end$$
delimiter ;