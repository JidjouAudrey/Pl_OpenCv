declare

   v_id_exp  Professional_exp.id_exp%type;               
    

begin
select p.id_exp
into   v_id_exp
from Experience E
join  Professional_exp p
on (E.id_exp = p.id_exp)
join users u
on(u.id_user=E.id_user)
WHERE  name_user= '&username';

insert into  Professional_exp
(
            id_expro,
			status_expro,
			organisation,
			function_exp,
			startDate,
			endDate,
			id_exp)
		VALUES(
		seq_prof_exp.nextval,
		'&status_expro',
		'&organisation',
		'&function_exp',
		'&startDate',
		'&endDate',
		v_id_exp);
end ;
/
  select * from Professional_exp;