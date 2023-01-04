ALTER TABLE Recommandation
ADD
CONSTRAINT fk_recommandation FOREIGN KEY (id_user) REFERENCES Users (id_user);

