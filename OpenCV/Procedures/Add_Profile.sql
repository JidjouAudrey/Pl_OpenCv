CREATE OR REPLACE PROCEDURE sp_Profil(v_profil_id IN INT,
                                              v_first_name IN VARCHAR,
                                              v_last_name IN VARCHAR,
                                              v_profil_name IN VARCHAR,
                                              v_profil_image IN VARCHAR,
                                              V_born_date IN VARCHAR,
                                              v_born_at IN VARCHAR,
                                              v_marital_status IN VARCHAR,
                                              v_numberchild IN VARCHAR,
                                              v_driving_licence IN VARCHAR,
                                              v_user IN INT
                                             )
    IS
       l_message  VARCHAR(100);
   BEGIN
      INSERT INTO Profil (                    v_profil_id IN INT,
                                              v_first_name IN VARCHAR,
                                              v_last_name IN VARCHAR,
                                              v_profil_name IN VARCHAR,
                                              v_profil_image IN VARCHAR,
                                              V_born_date IN VARCHAR,
                                              v_born_at IN VARCHAR,
                                              v_marital_status IN VARCHAR,
                                              v_numberchild IN VARCHAR,
                                              v_driving_licence IN VARCHAR,
                                              v_user IN INT
                        )
             SELECT                           v_profil_id IN INT,
                                              v_first_name IN VARCHAR,
                                              v_last_name IN VARCHAR,
                                              v_profil_name IN VARCHAR,
                                              v_profil_image IN VARCHAR,
                                              V_born_date IN VARCHAR,
                                              v_born_at IN VARCHAR,
                                              v_marital_status IN VARCHAR,
                                              v_numberchild IN VARCHAR,
                                              v_driving_licence IN VARCHAR,
                                              v_user IN INT
      FROM DUAL
      WHERE NOT EXISTS
              (SELECT NULL
               FROM Profil
               WHERE profil_id = v_profil_id);
      
     l_message :=
              CASE
                 WHEN SQL%ROWCOUNT > 0 THEN 'Profil created'
                 ELSE 'Profil already exists' 
             END;
 
   DBMS_INPUT.put_line(l_message);
   END;
   /