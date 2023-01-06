declare 

v_id_recom   Recommandation.id_recom%type;   

begin 

select id_recom
into v_id_recom
from Recommandation
where personName= '&personName';

UPDATE Recommandation SET 
personName = '&nouveau_personName',
relationShipLevel = '&nouveau_relationshiplevel',
postAtTheTime = '&nouveau_postatthetime',
message = '&nouveau_message'
where id_recom = v_id_recom;

DBMS_OUTPUT.PUT_LINE('VOS donnees sont a jour');

end ;
/