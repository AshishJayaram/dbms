begin
for rec in(select * from emp)loop
        dbms_output.put_line(rec.ssn||''||rec.name);
end loop;

update emp
set salary=salary+(salary*0.5)
where dno=5;
end;
/

