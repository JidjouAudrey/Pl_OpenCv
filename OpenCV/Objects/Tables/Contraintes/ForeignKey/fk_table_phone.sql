ALTER TABLE Phones
ADD
CONSTRAINT fk_Country FOREIGN KEY (id_profil) REFERENCES Profil (id_profil)
ON DELETE CASCADE;