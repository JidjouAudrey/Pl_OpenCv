declare

BEGIN

    DELETE
    from phones
    where phoneNumber = '&phoneNumber';
    

DBMS_OUTPUT.PUT_LINE(' Suppression effectuer avec succes ');

end ;
/
