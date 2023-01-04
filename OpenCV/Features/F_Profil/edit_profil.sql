UPDATE Profil
set firstname = '&firstname',
lastname = '&lastname',
profilImage = '&profilImage',
borndate = '&borndate',
bornAt = '&bornAt',
maritalStatus = '&maritalStatus',
numberChild = '&numberChild',
drivingLicense = '&drivingLicense'
id_user = &id_user
WHERE id_profil = &id_profil;