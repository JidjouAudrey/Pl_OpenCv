UPDATE Professional_exp
SET 
status_expro='&new_status_expro',
organisation='&new_organisation',
function_exp= '&new_function_exp',
startDate ='&new_startDate',
endDate='&new_endDate',
id_exp= &new_id_exp
WHERE id_expro = &id_expro;