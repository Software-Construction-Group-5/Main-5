#!/usr/bin/python3
import psycopg2
from jinja2 import Template

conn = psycopg2.connect("host=dbsrv dbname=dashboard user=webuser1 password=ECUpirate1")

cursor = conn.cursor()
print('Content-type: text/html\n\n')
cursor.execute("SELECT version();")



cursor.execute("SELECT * FROM dep_faculty")
faculty_rows = cursor.fetchall()

template = Template("""
<html>
<head>
<style>
table, th td {
border: 1px solid black;

}
th, td {
padding: 10px;
}
th {
background-color: #FF5733;
}
td {
background-color: #0E9771;
}
</style>
<title>Faculty</title>
</head>
<body>
<h1>Department Faculty</h1>
<table>
<colgroup>
<col>
<col>
<col style="width:300px"
</colgroup>
<tr><th>ID</th><th>Honorific</th><th>First</th><th>MI</th><th>Last</th><th>Email</th><th>Phone</th><th>Office</th><th>Research</th><th>Rank</th><th>Remarks</th></tr>
{% for row in faculty_rows %}
<tr><td>{{ row[0] }}</td><td>{{ row[1] }}</td><td>{{ row[2] }}</td><td>{{ row[3] }}</td><td>{{ row[4] }}</td><td>{{ row[5] }}</td><td>{{ row[6] }}</td><td>{{ row[7] }}</td><td>{{ row[8] }}</td><td>{{ row[9] }}</td><td>{{ row[10] }}</td></tr>
{% endfor %}
</table>
""")

html = template.render(faculty_rows = faculty_rows)
print('Content-type: text/html\n\n')
print(html)



cursor.close()
conn.close

