declare

   v_id_exp  Professional_exp.id_exp%type;               
    
begin
select id_expro
into   v_id_exp
from   Professional_exp
WHERE status_expro= '&status_de_lexperience';
DELETE Professional_exp
where v_id_exp=id_expro;

DBMS_OUTPUT.PUT_LINE('supprimer avec succes');

end;
/