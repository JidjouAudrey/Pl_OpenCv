SET SERVEROUTPUT ON;
declare 

v_formation_id  Formation.id_formation%type;

begin

select id_user
into v_formation_id
from Users
where name_user='&name_user';


update Formation set
school = '&school',
fieldOfstudy ='&fieldOfstudy',
diploma = '&diploma',
startDate ='&startDate',
endDate = '&endDate',
obtainedResult ='&obtainedResult'
where id_formation = v_formation_id;
exception
  when no_data_found then
  DBMS_OUTPUT.PUT_LINE('this user not exist');
end;
/
