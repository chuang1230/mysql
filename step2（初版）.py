#coding: utf-8
import MySQLdb
import sys
#reload(sys)
#sys.setdefaultencoding("utf-8")
conn = MySQLdb.connect(
    host='localhost',
    post='3306',
    user='root',
    password='106018',
    charset='utf-8',
    db='1',
)
cur = conn.cursor()
if conn:
    print('ok')

f= open('/home/chuang/Documents/4.MYSQL/MySQL上课文件/作业/university/exam.txt', 'r')
g= open('/home/chuang/Documents/4.MYSQL/MySQL上课文件/作业/university/student.txt', 'r')
h= open('/home/chuang/Documents/4.MYSQL/MySQL上课文件/作业/university/department.txt', 'r')
insertcolumn = "id "
s = "'%s'"
for i in range(1,20,1):
    s = s + ",'%s'"
#insertcolumn1 = "Insert into MyData "+"values("+s+")"
while True:
    line= f.readline().strip('\n')
    if line:
        list= line.split(',')
        insertcolumn_full= insertcolumn%tuple(list)
        cur.execute(insertcolumn_full)
        conn.commit()
    else:
        break
while True:
    line= g.readline().strip('\n')
    if line:
        list= line.split(',')
        insertcolumn_full1= insertcolumn%tuple(list)
        cur.execute(insertcolumn_full1)
        conn.commit()
    else:
        break
while True:
    line= h.readline().strip('\n')
    if line:
        list= line.split(',')
        insertcolumn_full2= insertcolumn%tuple(list)
        cur.execute(insertcolumn_full2)
        conn.commit()
    else:
        break

cur.close()
conn.close()
f.close()
g.close()
h.close()
