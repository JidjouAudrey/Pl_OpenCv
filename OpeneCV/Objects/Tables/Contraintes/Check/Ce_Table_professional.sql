ALTER TABLE Professional_exp 
ADD CONSTRAINT chk_prof_date
CHECK (startDate < endDate);