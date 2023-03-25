SELECT aa.pk1, u.user_id, aa.user_pk1, cm.course_id, aa.internal_handle, aa.event_type, cc.title AS content_item, aa.data, aa.timestamp, aa.status, aa.session_id, aa.messages FROM activity_accumulator aa, course_main cm, users u, course_contents cc 
WHERE cm.pk1 = aa.course_pk1 
AND u.pk1 = aa.user_pk1 
AND cc.pk1 = aa.content_pk1 
//AND course_id = '<course_id>' 
AND user_id = 'stdsdk15' 
AND timestamp >= to_date('2013.10.27', 'YYYY.MM.DD') 
AND timestamp < to_date('2013.12.04', 'YYYY.MM.DD') 
ORDER BY timestamp
