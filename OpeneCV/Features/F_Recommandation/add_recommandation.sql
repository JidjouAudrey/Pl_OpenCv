select * from users;
PROMPT*********************INSERTION RECOMMANDATION**************

INSERT INTO Recommandation(id_recom
	,personName,
	relationShipLevel,
	postAtTheTime,
	message,
	id_user)
VALUES (seq_recom.nextval,
	'&personName',
	'&relationShipLevel',
	'&postAtTheTime',
	'&message',
	&id_user);

select * from recommandation;

