UPDATE Formation
SET
school = '&new_school',
fieldOfStudy = '&new_fieldOfStudy',
diploma ='&new_diploma',
startDate ='&new_startDate',
endDate='&new_endDate',
obtainedResult ='&new_obtainedResult',
descriptionForm ='&new_descriptionForm',
id_exp = &new_id_exp,
id_user = &new_id_user,
id_cv = &new_id_cv
WHERE id_formation = &id_formation;
