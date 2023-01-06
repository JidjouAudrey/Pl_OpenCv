declare


    v_id_exp  Professional_Exp.id_exp%type;


BEGIN
select e.id_exp 
into v_id_exp
from Professional_Exp p
Join Experience e
on p.id_exp = e.id_exp
join users u
on u.id_user=e.id_user
where name_user = '&username';

insert into Professional_Exp(
 id_expro,status_expro, startDate, endDate, organisation, function_exp, id_exp
)

values(
seq_prof_exp.nextval,
  '&status_expro',
  '&startDate',
  '&endDate',
  '&organisation',
  '&function_exp',

  v_id_exp
);
END;
/