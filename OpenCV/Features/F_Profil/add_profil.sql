select * from Users;

PROMPT*********************INSERTION PROFILES**************
INSERT INTO Profil (id_profil,
	 firstname,
	 lastname,  
	 profilImage,
	 borndate, 
	 bornAt, 
	 maritalStatus,
	 numberChild,  
	 drivingLicence, 
	 id_user)
VALUES (seq_prof.nextval, 
	'&firstname', 
	'&lastname',  
	'&profilImage', 
	'&borndate','&bornAt',
        '&maritalStatus', 
	'&numberChild',
	'&drivingLicence',
	 &id_user);

select * from profil;