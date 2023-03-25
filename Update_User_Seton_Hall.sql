select * from COURSE_MAIN where COURSE_ID='2011_SPRING_CPSY2102BB'
update COURSE_MAIN set ROW_STATUS=0 where COURSE_ID='2011_SUMMER_BMBA9202NA'

select * from Users where USER_ID='maygrace'
update USERS set ROW_STATUS=0 where USER_ID='anaik1'

select * from course_users where CRSMAIN_PK1 = 261165 and USERS_PK1 = 197739

update course_users set ROW_STATUS = 0 where CRSMAIN_PK1 = 291883 and USERS_PK1 = 204394
update course_users set DATA_SRC_PK1= 2 where CRSMAIN_PK1 = 291883 and Users_PK1 = 4066


update users set DATA_SRC_PK1= 2 where USER_ID='axelbara'
update course_main set DATA_SRC_PK1=2 where COURSE_ID='2009_SPRING_PROP7701MM'
select * from Course_Users where DATA_SRC_PK1= 2


select * from course_toc where CRSMAIN_PK1='264160'