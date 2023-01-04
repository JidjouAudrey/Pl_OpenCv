ALTER TABLE Country
ADD
CONSTRAINT fk_country_id_pro FOREIGN KEY (id_profil) REFERENCES Profil (id_profil);