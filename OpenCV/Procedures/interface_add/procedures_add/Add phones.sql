Declare

v_ID_PROFIL Phones.id_profil%type;

BEGIN
SELECT id_profil INTO v_ID_PROFIL FROM Phones
    WHERE isMobile = '&Mobile';

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