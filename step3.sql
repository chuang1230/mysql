#3.1把peoples表中school不是GDUFS的人全部找出来？（包括school为NULL的人）写出MySQL语句
select name from peoples as t1 where not exists(select name from peoples where peoples.school = GDUFS);

#3.2查找计算机系每次考试学生的平均成绩(最终显示学生姓名, 考试名称, 平均分)
select student_id,exam_name,avg(grade) from exam group by stduent_id;

#3.3查找女学霸（考试平均分达到80分或80分以上的女生的姓名, 分数）
select student_id,avg(grade) from peoples where avg(grade) = 80 and avg(grade)>80 and sex='f';

#3.4找出人数最少的院系以及其年度预算 
select dept_name,building budget from peoples where the_smallest_people_of_dept =min(count(dept_name));

#3.5计算机系改名了，改成计算机科学系（comp. sci.)
select dept_name from peoples where dept_name = 'comp';
update peoples set dept_name = 'comp.sci';

#3.6修改每个系的年度预算，给该系的每个学生发2000元奖金。（修改每个系的年度预算为 原预算+该系人数*2000）
select dept_name,stdudent_name,budget from peoples ;
update peoples set budget =budget + 2000*count(dept_name);
#还有问题没解决

#3.7向department表中插入一条数据, dept_name属性的值为avg_budget, building为空, 年度预算为所有院系的年度预算平均值.	
insert into department values(0,0,0);
update department set dept_name =avg_budget and building = null and budget =avg(count(budget));

#3.8删除计算机系中考试成绩平均分低于70的学生
select student_name,avg(grade) from peoples where dept_name ='comp';
delete from peoples where avg(grade)<70;

#3.9找出所有正在谈恋爱,但是学习成绩不佳(考试平均分低于75)的学生,强制将其情感状态改为单身
select student_name,grade,emotion_state from peoples where grade <75;
update peoples set emotion_state ='single';

#3.10选做)对每个学生, 往exam表格中插入名为Avg_Exam的考试, 考试分数为之前学生参加过考试的平均分.
insert into exam values(0,'Avg_Exam',0);
update exam set grade = avg(grade);



