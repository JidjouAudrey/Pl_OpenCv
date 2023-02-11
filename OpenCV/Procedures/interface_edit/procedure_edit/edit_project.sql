SET SERVEROUTPUT ON;
declare 

v_project_id  project.id_project%type;

begin

select id_user
into v_project_id
from Users
where name_user='&name_user';


update project set
name_project = '&name', 
status_user = '&status_user',
startDate = '&startDate',
endDate = '&endDate',
partner = '&partner',
urlProject = '&urlProject',
descriptionProject = '&descriptionProject'
WHERE id_project = v_project_id ;
DBMS_OUTPUT.PUT_LINE('info project created');
exception
  when no_data_found then
  DBMS_OUTPUT.PUT_LINE('this user not exist');
end;
/
