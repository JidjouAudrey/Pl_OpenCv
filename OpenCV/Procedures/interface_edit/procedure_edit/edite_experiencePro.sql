declare

   v_id_exp  Professional_exp.id_exp%type;               
    
begin
select id_expro
into   v_id_exp
from   Professional_exp
WHERE status_expro= '&status_de_lexperience';


WHERE id_expro =v_id_exp;
DBMS_OUTPUT.PUT_LINE('VOS donnees sont a jour');

end ;
/