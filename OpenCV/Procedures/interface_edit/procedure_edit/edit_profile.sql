declare

v_id_profil  profil.id_profil%type;

begin

select id_profil
into v_id_profil
from profil
where firstname='&firstname';

update profil set 
 firstname = '&first_name',
 lastname  = '&last_name',
 profilImage = '&profilImage',
 borndate = '&borndate',
 bornAt = '&born_at',
 maritalStatus = '&marital_Status', 
 numberChild = &numberChild,
 drivingLicence = '&drivingLicence' 
 where id_profil = v_id_profil;

end ;
/