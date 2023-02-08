declare

v_id_lang  Language.id_lang%type;

begin

select id_user
into v_id_lang
from users
where name_user = '&username';

delete Language
where id_lang = v_id_lang;

DBMS_OUTPUT.PUT_LINE(' Suppression effectuée avec succes ');

end ;
/