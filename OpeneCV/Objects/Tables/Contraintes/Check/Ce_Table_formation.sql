ALTER TABLE Formation 
ADD CONSTRAINT chk_form_date
CHECK (startDate < endDate);