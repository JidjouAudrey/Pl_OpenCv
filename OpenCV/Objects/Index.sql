Rem    Index.sql     
Rem    All right reserved.
Rem    NAME
Rem      Index.sql - Create indexes for OCV schema
Rem
Rem    DESCRIPTION
Rem
Rem
Rem    NOTES
Rem
Rem
Rem    CREATED by  Leila
Rem    MODIFIED   (MM/DD/YY)
Rem   

SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 80
SET TRIMSPOOL ON
SET TAB OFF
SET PAGESIZE 100
SET ECHO OFF 

CREATE INDEX prof_country_ix
       ON Country (id_profil);

CREATE INDEX prof_lang_ix
      ON Language (id_profil);

CREATE INDEX prof_pho_ix
      ON Phones (id_profil);

CREATE INDEX user_prof_ix
      ON Profil (id_user);

CREATE INDEX user_hob_ix
     ON Hobbies(id_user);

CREATE INDEX  prof_soc_ix
     ON SocialNetwork (id_profil);

CREATE INDEX  user_form_ix
     ON Formation(id_user);

CREATE INDEX exp_form_ix
    ON Formation (id_exp);

CREATE  INDEX cv_form_ix  
     ON Formation (id_cv);

CREATE INDEX user_exp_ix
    ON Experience (id_user);     

CREATE INDEX cv_exp_ix
    ON Experience (id_cv);

CREATE INDEX exp_pro_exp_ix   
    ON Professional_exp (id_exp);

CREATE INDEX form_proj_ix
   ON Project (id_formation);

CREATE INDEX exp_proj_ix
    ON Project (id_exp);

CREATE INDEX  pro_exp_proj_ix   
    ON  Project (id_expro);

CREATE INDEX form_proj_ix
    ON   Project (id_formation);

CREATE INDEX user_recom_ix
   ON Recommandation (id_user);

CREATE INDEX recom_comp_ix
   ON Competence (id_recom);

CREATE INDEX form_comp_ix
  ON Competence (id_formation);

CREATE INDEX hob_comp_ix
   ON Competence (id_hobbies);

CREATE INDEX cv_comp_ix
  ON Competence (id_cv);

CREATE INDEX user_cv_ix
  ON Cv (id_user);


COMMIT;
