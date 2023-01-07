SET SERVEROUTPUT ON;
declare 

v_id_recom   Recommandation.id_recom%type;   

begin 

select r.id_user
into v_id_recom
from Users u
join  Recommandation r 
on r.id_user = u.id_user
where name_user='&Username';

UPDATE Recommandation SET 
personName = '&nouveau_personName',
relationShipLevel = '&nouveau_relationshiplevel',
postAtTheTime = '&nouveau_postatthetime',
message = '&nouveau_message'
where id_recom = v_id_recom;
DBMS_OUTPUT.PUT_LINE('VOS donnees sont a jour');
exception
  when no_data_found then
  DBMS_OUTPUT.PUT_LINE('this user not exist');
end ;
/