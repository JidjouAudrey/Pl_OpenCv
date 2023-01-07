ALTER TABLE Language
ADD
CONSTRAINT fk_language FOREIGN KEY (id_profil) REFERENCES Profil (id_profil)
ON DELETE CASCADE;