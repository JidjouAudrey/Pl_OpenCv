declare

v_id_profil  profil.id_profil%type;

begin

select id_profil
into v_id_profil
from profil
where firstname='&firstname';

delete profil 
 where id_profil = v_id_profil;

end ;
/