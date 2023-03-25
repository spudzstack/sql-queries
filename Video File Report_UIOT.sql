select cm.course_id, cm.course_name, f.link_name, cc.cnthndlr_handle, TRUNC((f.file_size/1024/1024),2) || 'MB' AS "FILE_SIZE" ,cm.BATCH_UID,u.USER_ID as USERID,u.FIRSTNAME,u.LASTNAME
from course_main cm,course_contents cc,course_contents_files ccf, files f,COURSE_USERS cu,users u
where
cm.pk1 = cc.crsmain_pk1
and
ccf.course_contents_pk1 = cc.pk1
and
f.pk1 = ccf.files_pk1
and
regexp_like(link_name,'(*).mov$|(*).mp4$|(*).mp3$|(*).avi$|(*).mkv$|(*).flv$|(*).flac$|(*).wav$|(*).ogg$')
and
cc.AVAILABLE_IND='Y'
and
cu.USERS_PK1=u.PK1
and
cu.CRSMAIN_PK1=cm.PK1
and
cu.ROLE='P'
order by u.USER_ID