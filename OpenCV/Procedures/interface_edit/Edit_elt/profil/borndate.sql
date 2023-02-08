declare

v_id_profil  profil.id_profil%type;

begin

select id_user
into v_id_profil
from users
where name_user='&username';

update profil set 
 borndate = '&borndate' 
 where id_profil = v_id_profil;

end ;
/
@Procedures/interface_edit/edit_elt/profil/profil_elt