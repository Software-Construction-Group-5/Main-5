#!/usr/bin/python3
import psycopg2

conn = psycopg2.connect("host=192.168.56.30 dbname=cs_dashboard user=webuser1 password=ecupirate")

cursor = conn.cursor()

print("Content-type: text/html\n\n")
print("""
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
""")

print("PGSQL version:<br>")
cursor.execute("SELECT version();")
print("Result:", cursor.fetchall())

print("<br><h2>First 27 rows from table faculty:</h2>")
cursor.execute("SELECT * FROM cs_courses_2 LIMIT 27;")
rows = cursor.fetchall()

if rows:
    # Start the HTML table
    print("<table>")
    print("<tr><th>ID</th><th>Course Name</th><th>Department</th><th>Credits</th></tr>")  # Replace these with actual column names
    for row in rows:
        print("<tr>")
        for cell in row:
            print(f"<td>{cell}</td>")
        print("</tr>")
    print("</table>")
else:
    print("No data found.")
    
cursor.close()
conn.close()
