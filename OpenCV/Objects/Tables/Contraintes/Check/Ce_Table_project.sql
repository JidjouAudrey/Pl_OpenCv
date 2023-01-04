ALTER TABLE Project 
ADD CONSTRAINT chk_project_date
CHECK (startDate < endDate);