ALTER TABLE Users
ADD ( 
		CONSTRAINT user_password  CHECK( LENGTH(user_password) >= 9 )
        CONSTRAINT email CHECK(
            email like '%@%.%'
		
		)
);