declare

v_id_lang  Language.id_lang%type;

begin

select id_user
into v_id_lang
from users
where name_user = '&username';

UPDATE Language SET
lang_title = '&nouveau_lang_title',
lang_level = '&nouveau_lang_level'
where id_lang = v_id_lang;

DBMS_OUTPUT.PUT_LINE('Vos données sont à jour');
end ;
/