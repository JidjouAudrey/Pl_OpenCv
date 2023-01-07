declare

BEGIN

    DELETE
    from phones
    where phoneNumber = '&phoneNumber';
    

DBMS_OUTPUT.PUT_LINE(' Supprexion effectuer avec succes ');

end ;
/
