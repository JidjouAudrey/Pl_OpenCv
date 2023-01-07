declare

v_project_id  project.id_project%type;

begin

select id_user
into v_project_id
from Users
where name_user='&name_user';

delete project 
 WHERE id_project = v_project_id ;

end ;
/