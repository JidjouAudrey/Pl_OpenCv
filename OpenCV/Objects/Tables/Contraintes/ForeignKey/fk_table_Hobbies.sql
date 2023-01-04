ALTER TABLE Hobbies
ADD
CONSTRAINT fk_Hobbies FOREIGN KEY (id_user) REFERENCES Users (id_user);