UPDATE Recommandation
SET
personName='&new_personName',
relationShipLevel ='&new_relationShipLevel',
postAtTheTime = '&new_postAtTheTime',
message= '&new_message',
id_user = &id_user
WHERE id_recom = &id_recom;
