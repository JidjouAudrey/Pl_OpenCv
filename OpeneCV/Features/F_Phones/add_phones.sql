select * from Users;
PROMPT*********************INSERTION PHONES**************

INSERT INTO Phones(id_phone, 
		phoneNumber,
		isMobile,
		isWhatsapp,
		isTelegram,
		countryCode,
		id_profil)
VALUES(seq_phones.Nextval,
	&phoneNumber,
	'&isMobile',
	'&isWhatsapp',
	'&isTelegram',
	&countryCode,
	&id_profil);

select * from Phones;