ALTER TABLE Formation
ADD(CONSTRAINT fk_Formation FOREIGN KEY (id_user) REFERENCES Users (id_user),
CONSTRAINT fk_Formation_id_cv FOREIGN KEY (id_cv) REFERENCES Cv (id_cv),
CONSTRAINT fk_Formation_id_exp FOREIGN KEY (id_exp) REFERENCES Experience (id_exp)
);

