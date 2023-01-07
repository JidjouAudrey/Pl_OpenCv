ALTER TABLE Experience
ADD(CONSTRAINT fk_Experience FOREIGN KEY (id_user) REFERENCES Users (id_user),
CONSTRAINT fk_Experience_id_cv FOREIGN KEY (id_cv) REFERENCES Cv (id_cv)
)
ON DELETE CASCADE;

