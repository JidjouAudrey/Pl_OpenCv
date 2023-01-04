ALTER SESSION SET NLS_LANGUAGE=English;
ALTER SESSION SET NLS_TERRITORY=America;
ALTER SESSION SET NLS_DATE_FORMAT='DD/MM/YYYY';

PROMPT******************** creation de la table Profil************************************
@Objects/Tables/Table_profil

PROMPT******************** creation de la table Project************************************
@Objects/Tables/Table_project

PROMPT******************** creation de la table Cv************************************
@Objects/Tables/Table_cv

PROMPT******************** creation de la table Competence************************************
@Objects/Tables/Table_competence

PROMPT******************** creation de la table Experience************************************
@Objects/Tables/Table_experience

PROMPT******************** creation de la table Professional_exp************************************
@Objects/Tables/Table_professional_exp

PROMPT******************** creation de la table Formation************************************
@Objects/Tables/Table_formations

PROMPT******************** creation de la table Recommandation************************************
@Objects/Tables/Table_recommandation

PROMPT******************** creation de la table Users************************************
@Objects/Tables/Table_Users

PROMPT******************** creation de la table SocialNetwork************************************
@Objects/Tables/Table_SocialNetwork

PROMPT******************** creation de la table Hobbies************************************
@Objects/Tables/Table_Hobbies

PROMPT******************** creation de la table Country************************************
@Objects/Tables/Table_country

PROMPT******************** creation de la table Language************************************
@Objects/Tables/Table_language

PROMPT******************** creation de la table Phones************************************
@Objects/Tables/Table_phone

@Objects/Tables/Contraintes/runConstraint