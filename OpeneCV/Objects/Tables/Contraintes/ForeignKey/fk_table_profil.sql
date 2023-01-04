ALTER TABLE Profil 
ADD 
CONSTRAINT fk_profil FOREIGN KEY (id_user) REFERENCES Users (id_user);




