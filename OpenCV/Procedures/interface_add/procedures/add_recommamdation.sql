DECLARE 

v_id_user   Users.id_user%type;  

begin 
 
select r.id_user
into v_id_user
from Users u
join  Recommandation r 
on r.id_user = u.id_user
where name_user='&Username';

    insert into Recommandation 
    (
        id_recom,
        personName,
        relationShipLevel,
        postAtTheTime,
        message,
        id_user
    )
    values
    (
     seq_recom.nextval,
	'&personName',
	'&relationShipLevel',
    '&postAtTheTime',
    '&message',
     v_id_user
     );
end ;
/
