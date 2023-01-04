ALTER TABLE Competence 
ADD CONSTRAINT fk_competence FOREIGN KEY (id_hobbies) REFERENCES Hobbies (id_hobbies);