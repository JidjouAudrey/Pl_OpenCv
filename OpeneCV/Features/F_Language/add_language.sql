select * from Users;

PROMPT*********************INSERTION LANGUAGE**************
INSERT INTO Language(id_lang,
	lang_title,
	lang_level,
	id_profil)
VALUES(seq_lang.Nextval,
	'&lang_title',
	'&lang_level',
	 &id_profil);

select * from language;