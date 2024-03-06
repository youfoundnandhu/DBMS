set serveroutput on

begin

dbms_output.Put_line('hai');

end;

/

hai

PL/SQL procedure successfully completed.

_______________________________________________________________________________

declare

var1 varchar(10);

num1 int(30);

begin

var1:='hello';

num1:=100;

dbms_output.Put_line('var1:'||var1);

dbms_output.Put_line('Num1:'||num1);

end;

/

var1:hello

Num1:100

__________________________________________________________________

set serveroutput on

CREATE OR REPLACE PROCEDURE greetings

AS

BEGIN

dbms_output.put_line('Hello World!');

END;

/

Procedure created.

SQL> execute greetings

Hello World!

__________________________________________________________________

create table Employees(eid int,fname varchar(30),salary int);

insert into Employees values(100,'ram',30000);

1 row created.

insert into Employees values(101,'sam',4000);

1 row created.

____________________________________________

declare

name varchar(10);

sal int(20);

begin

select fname,salary into name,sal from Employees where eid=100;

dbms_output.Put_line('Name:'||name);

dbms_output.Put_line('Salary:'||sal);

end;

/

______________________________________________________________________

declare

name Employees.fname%TYPE;

sal Employees.salary%TYPE;

lname name%TYPE;

begin

select fname,salary into name,sal from Employees where eid=100;

dbms_output.Put_line('Name:'||name);

dbms_output.Put_line('Salary:'||sal);

end;

/

Name:ram

Salary:30000

_______________________________________________________________________

FACTORIAL OF A NUMBER

set serveroutput on;

declare

num number := 6;

fact number := 1;

temp number;

begin

temp :=num;

while( temp>0 )

loop

fact := fact*temp;

temp := temp-1;

end loop;

dbms_output.put_line('factorial of '|| num || ' is ' || fact);

end;

/

factorial of 6 is 720

PL/SQL procedure successfully completed.

________________________________________________________________

FACTORIAL OF ANY NUMBER

declare

n number;

fac number:=1;

i number;

begin

n:=&n;

for i in 1..n

loop

fac:=fac*i;

end loop;

dbms_output.put_line('factorial='||fac);

end;

/

Enter value for n: 5

old 7: n:=&n;

new 7: n:=5;

factorial=120

PL/SQL procedure successfully completed.

_____________________________________________________________________

ADDITION OF 2 NUMBERS

declare

x number(5);

y number(5);

z number(7);

begin

x:=10;

y:=20;

z:=x+y;

dbms_output.put_line('Sum is '||z);

end;

/

Sum is 30

PL/SQL procedure successfully completed.
