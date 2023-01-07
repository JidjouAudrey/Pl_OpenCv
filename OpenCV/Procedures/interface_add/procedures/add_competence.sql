declare

  v_id_recom          Recommandation.id_recom%type;
  v_id_hobbies        Hobbies.id_hobbies%type;  
  v_id_formation      Formation.id_formation%type;
  v_id_cv             Cv.id_cv%type;
    

begin

   select id_formation
    into v_id_formation 
    from Formation f
    join Users u
    on f.id_user=u.id_user
    where u.name_user = '&&name_user';

    select id_recom
    into v_id_recom 
    from Recommandation r
    join Users u
    on  r.id_user=u.id_user
    where u.name_user = '&&name_user';

    select id_hobbies
    into v_id_hobbies 
    from Hobbies h
    join Users u
    on h.id_user=u.id_user
    where u.name_user = '&name_user';

    select id_cv
    into v_id_cv 
    from Cv cv 
    join Users u
    on cv.id_user=u.id_user
    where u.name_user = '&name_user';

 
    insert into Competence 
    (
        id_Compet,
        name_compet,
        level_compet,
        id_recom,
        id_hobbies,
        id_formation,
        id_cv
    )
    values
    (
  seq_soc_net.nextval,
	'&name_compet',
	'&level_compet',
     v_id_recom,
      v_id_hobbies,
    v_id_formation,   
    v_id_cv
    );
end ;
/
SET LINESIZE 3000
select * from Competence;
@Procedures/creer_cv
