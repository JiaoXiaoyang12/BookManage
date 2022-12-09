delimiter $$
create trigger t_ins_loan after insert on duedate for each row
	begin
    update loan set m_duedate=(select count(*)from duedate where new.id=old.id);
    end $$
delimiter ;