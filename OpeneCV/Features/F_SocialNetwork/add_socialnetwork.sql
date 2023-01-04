select * from Users;

PROMPT*********************INSERTION SOCIAL NETWORK**************
INSERT INTO SocialNetwork (id_social,
			title_social,
			image_social,
			id_profil)
	VALUES (
	seq_soc_net.nextval,
	'&title_social',
	'&image_social',
	&id_profil);

select * from SocialNetwork;