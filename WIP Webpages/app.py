#!/usr/bin/python3

import cgi
import cgitb
import sqlite3

cgitb.enable()

print("Content-type: text/html\n")

conn = sqlite3.connect('/home/student/team5-phase2/faculty.db')
cursor = conn.cursor()

cursor.execute("SELECT id, name, title, email, department, phone FROM faculty;")
faculty_data = cursor.fetchall()

print("<html><head><title>Faculty Information</title></head><body>")
print("<h2>Faculty Information</h2>")
print("<table border='1'><tr><ID</th><th>Name</th><th>Title</th><th>Email</th><th>Department</th><th>Phone</th></tr>")

for faculty in faculty_data:
    print(f"<tr><td>{faculty[0]}</td><td>{faculty[1]}</td><td>{faculty[2]}</td>")
    print(f"<td><a href='mailto:{faculty[3]}'>{faculty[3]}</a></td><td>{faculty[4]}</td><td>{faculty[5]}</td></tr>")

print("</table></body></html>")

cursor.close()
conn.close()
