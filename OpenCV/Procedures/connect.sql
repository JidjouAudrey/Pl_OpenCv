SELECT id_user
FROM users
WHERE name_user = '&&Username' 
AND user_password = '&&user_password';
set define on
column script new_value v_script
select case
        when (select count(name_user) From users WHERE name_user = '&Username' AND user_password = '&user_password' ) >= 1 then '@procedures/menu'
        else '@procedures/exit'
        end as script
from dual;
set term on
@&v_script.