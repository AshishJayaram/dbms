declare
	cursor emp_cur is select ssn,name,deptno from emp;
	emp_rec emp_cur%rowtype;
begin
	open emp_cur;
	loop
		fetch emp_cur into emp_rec;
		exit when emp_cur%notfound;
		dbms_output.put_line(emp_rec.ssn||' '||emp_rec.name);
	end loop;
	close emp_cur;
end;
/
