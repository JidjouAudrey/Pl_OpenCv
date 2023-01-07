declare
v_idFormation Formation.id_formation%type;
v_idExp       Experience.id_exp%type;
v_idExpro     Professional_Exp.id_expro%type;

begin
    select id_formation
    into v_idFormation
    from Formation f
    join users u
    on f.id_user=u.id_user
    where u.name_user='&&name_user';
IF sql%found THEN
select id_exp
    into v_idExp
    from Experience e
    join users u
    on e.id_user=u.id_user
    where u.name_user='&name_user';

select id_expro
    into v_idExpro
    from Professional_Exp ex
    join Experience e
    on e.id_exp=ex.id_exp
    join users u
    on e.id_user=u.id_user
    where u.name_user='&name_user';

INSERT INTO Project (id_project,
name_project,
status_user,
startDate,
endDate,
partner,
urlProject,
descriptionProject,
id_formation,
id_exp,
id_expro)
VALUES(
		seq_proj.nextval, 
		 '&name_project',
		 '&status_user',
		 '&startDate',
		 '&endDate',
		 '&partner',
		 '&urlProject',
		 '&descriptionProject', 
		 v_idFormation,
		 v_idExp,
		 v_idExpro);
end if;
exception
 when no_data_found then
  DBMS_OUTPUT.PUT_LINE('aucune valeur trouvée');
end;
/