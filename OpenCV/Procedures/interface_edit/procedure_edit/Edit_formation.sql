select* from Formation;

declare 

v_formation_id  Formation.id_formation%type;

begin

select id_formation
into v_formation_id
from Formation
where school = '&school';


update Formation set
school = '&school',
fieldOfstudy ='&fieldOfstudy',
diploma = '&diploma',
startDate ='&startDate',
endDate = '&endDate',
obtainedResult ='&obtainedResult'
where id_formation = v_formation_id;

end;
/
