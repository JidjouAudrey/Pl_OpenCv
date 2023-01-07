ALTER TABLE Project 
ADD (
CONSTRAINT fk_project_id_for FOREIGN KEY (id_formation) REFERENCES Formation (id_formation),
CONSTRAINT fk_project_id_exp FOREIGN KEY (id_exp) REFERENCES Experience (id_exp),
CONSTRAINT fk_project_id_expro FOREIGN KEY (id_expro) REFERENCES Professional_Exp (id_expro)
)
ON DELETE CASCADE;


