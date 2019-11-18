DECLARE
vssn emp.ssn%type;
vdept emp.deptno%type;
begin
	vssn := &ssn;
	select deptno into vdept from emp
	where ssn = vssn;
	

	dbms_output.put_line('Record'||vdept);

end;
/
