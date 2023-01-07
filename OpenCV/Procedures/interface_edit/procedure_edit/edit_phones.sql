SET SERVEROUTPUT ON;
declare

v_id_phone Phones.id_phone%type;

begin
  
 select f.id_phone
    into v_id_phone
    from Phones f
    join Profil p
    on p.id_profil = f.id_phone
    JOIN Users u
    ON p.id_user=u.id_user
    WHERE name_user= '&Username';

  update Phones set 
   phoneNumber='&phoneNumber',
   isMobile='&isMobile',
   isWhatsapp='&isWhatsapp',
   isTelegram='&isTelegram',
   countryCode='&countryCode'
   where id_phone = v_id_phone;
DBMS_OUTPUT.PUT_LINE(' Vos données sont à  jour');
exception
  when no_data_found then
  DBMS_OUTPUT.PUT_LINE('this user not exist');
end ;
/