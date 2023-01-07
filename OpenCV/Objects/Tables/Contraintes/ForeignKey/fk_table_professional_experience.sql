ALTER TABLE Professional_exp
ADD
CONSTRAINT fk_professional_exp_id_exp FOREIGN KEY (id_exp) REFERENCES Experience (id_exp)
ON DELETE CASCADE;


