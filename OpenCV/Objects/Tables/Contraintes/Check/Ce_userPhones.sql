ALTER TABLE Phones
    ADD (
        CONSTRAINT phoneNumber CHECK (
        phoneNumber like '6________')
        );
    
    