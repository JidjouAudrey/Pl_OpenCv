PROMPT******************** SET NLS LANGUAGE***********************************************************
ALTER SESSION SET NLS_LANGUAGE=English;

PROMPT******************** SET NLS TERRITORY**********************************************************
ALTER SESSION SET NLS_TERRITORY=America;

PROMPT******************** SET line size**************************************************************
SET LINESIZE 3000

PROMPT******************** SET NLS DATE FORMAT********************************************************
ALTER session set NLS_DATE_FORMAT='DD/MM/YYYY';


PROMPT ***********************************************************************************************
PROMPT ***********************************Creation et configuration des utilisateurs******************
@Config/runConfig

PROMPT ***********************************************************************************************
PROMPT ***********************************Creation des tables*****************************************
@Objects/runTable

@Data/RunData

@Objects/Sequence

SPOOL OFF

SELECT table_name FROM user_tables; 