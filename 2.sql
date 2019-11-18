DECLARE
vssn emp.ssn%type;

begin
	vssn := &ssn;

	delete from emp
	where ssn = vssn;
	if sql%found then
	dbms_output.put_line('Record deleted'||sql%rowcount);
	else
	dbms_output.put_line('Record not deleted');
	end if;
end;
/
