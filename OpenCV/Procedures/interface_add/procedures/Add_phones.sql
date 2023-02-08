Declare

v_ID_PROFIL Phones.id_profil%type;

BEGIN
SELECT pr.id_profil 
INTO v_ID_PROFIL 
FROM Phones p
join profil pr
on(p.id_profil=pr.id_profil)
join users u
on(pr.id_user=u.id_user)
WHERE name_user = '&username';

    INSERT INTO PHONES
    (
       id_phone ,
    phoneNumber ,
    isMobile ,
    isWhatsapp ,    
     isTelegram ,
    countryCode ,
    id_profil 
    )
    VALUES
    (
    SEQ_PHONES.nextval,
    '&phoneNumber',
    '&isMobile',
    '&isWhatsapp',
    '&isTelegram',
    '&countryCode',
    v_ID_PROFIL
    );
         
END;
/