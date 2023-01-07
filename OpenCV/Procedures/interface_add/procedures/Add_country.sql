SET SERVEROUTPUT ON;
declare
    v_profile_id country.id_profil%type;
    
begin

    SELECT p.id_profil
    INTO v_profile_id 
    FROM country c
    JOIN profil p
    ON p.id_profil=c.id_profil
    JOIN Users u
    ON p.id_user=u.id_user
    WHERE name_user= '&Username';

    INSERT INTO country 
    (
        id_country,
        country_name,
        city,
        id_profil
    )
    values
    (
        seq_count.nextval,
        '&country_name',
        '&city',
        v_profile_id  
    );
DBMS_OUTPUT.PUT_LINE('country created');
    end;
/ 
@Procedures/interface_add/creer_cv