declare 

v_id_recom   Recommandation.id_recom%type;   

begin 

select id_recom
into v_id_recom
from Recommandation
where personName= '&personName';

DELETE Recommandation 
where id_recom = v_id_recom;

DBMS_OUTPUT.PUT_LINE('supprimer avec succes');

end ;
/