ALTER TABLE SocialNetwork
ADD
CONSTRAINT fk_SocialNetwork FOREIGN KEY (id_profil) REFERENCES Profil (id_profil)
ON DELETE CASCADE;