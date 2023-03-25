select * from COURSE_MAIN where COURSE_ID='EDUC62131Spring2009'
update COURSE_MAIN set ROW_STATUS=0 where COURSE_ID='EDUC62131Spring2009'

select * from Users where USER_ID='rbrown20'
update USERS set ROW_STATUS=0 where USER_ID='anaik1'

select * from course_users where CRSMAIN_PK1 = 7202 and USERS_PK1 = 5314

update course_users set ROW_STATUS = 0 where CRSMAIN_PK1 = 7397 and USERS_PK1 = 43
