ALTER TABLE Users
ADD CONSTRAINT unique_email UNIQUE (email);
