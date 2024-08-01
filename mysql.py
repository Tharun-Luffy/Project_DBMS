import mysql.connector
conn=mysql.connector.connect(host="localhost",user="root",passwd="dbms",database="sakila")
cur=conn.cursor()

x=cur.execute("show databases;")
print(x)