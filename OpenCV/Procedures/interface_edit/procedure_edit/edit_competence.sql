declare 

v_id_compet   Competence.id_compet%type;   

begin 

select id_compet
into v_id_compet
from Competence
where name_compet= '&name_compet';

UPDATE Competence SET 
name_compet = '&name_compet',
level_compet = '&level_compet',
where id_compet = v_id_compet;

DBMS_OUTPUT.PUT_LINE('VOS donnees sont a jour');

end ;
/
