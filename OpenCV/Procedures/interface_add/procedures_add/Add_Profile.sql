declare

v_id_user   profil.id_user%type;

begin

select p.id_user
into v_id_user
from Users u
join profil p
on (u.id_user = p.id_user)
where name_user='&Votre_Nom';

insert into profil
(
 id_profil,
 firstname,
 lastname,  
 profilImage, 
 borndate,
 bornAt, 
 maritalStatus, 
 numberChild, 
 drivingLicence, 
 id_user  
)
values 
(
    seq_prof.nextval,
    '&first_name',
    '&last_name',
    '&profilImage',
    '&borndate',
    '&born_at',
    '&marital_Status',
     &numberChild,
    '&drivingLicence',
    v_id_user
);

end ;
/