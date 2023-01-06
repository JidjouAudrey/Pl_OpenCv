ALTER TABLE Phones
    ADD (
        CONSTRAINT phoneNumber CHECK (
        phone_number like '6________')
        );
    
    