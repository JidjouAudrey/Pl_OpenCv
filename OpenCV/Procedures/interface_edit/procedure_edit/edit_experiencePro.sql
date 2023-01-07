SET SERVEROUTPUT ON;
declare

   v_id_exp  Professional_exp.id_exp%type;               
    
begin
select p.id_exp
into   v_id_exp
from Experience E
join  Professional_exp p
on (E.id_exp = p.id_exp)
join users u
on(u.id_user=E.id_user)
WHERE  name_user= '&username';

UPDATE Professional_exp
SET 
status_expro='&new_status_expro',
startDate ='&new_startDate',
endDate='&new_endDate',
organisation='&new_organisation',
function_exp= '&new_function_exp'
WHERE id_expro =v_id_exp;
DBMS_OUTPUT.PUT_LINE('VOS donnees sont a jour');
exception
  when no_data_found then
  DBMS_OUTPUT.PUT_LINE('this user not exist');
end ;
/