select*from Formation;
declare

v_formation_id Formation.id_formation%type;

begin

select id_formation
into v_formation_id
from Formation
where school='&school';

DELETE Formation
where v_formation_id=id_formation;

DBMS_OUTPUT.PUT_LINE('supprimer avec succes');

end;
/