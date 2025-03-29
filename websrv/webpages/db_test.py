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


print("""
<form method="get" action="faculty_homepage.py">
    <input type="submit" value="Faculty" />
</form>
    """)

print("""
<form method="get" action="db_test.py">
    <input type="submit" value="Courses" />
</form>
    """)

print("""
<form method="get" action="fte_homepage.py">
    <input type="submit" value="FTE" />
</form>
    """)

    # Print the search form
print("""
<form method="get" action="courses_prefix_search.py">
    <label for="search">Search Course Prefix:</label>
    <input type="text" id="search" name="search" value="" />
    <input type="submit" value="Search" />
</form>
    """)

print("""
<form method="get" action="courses_number_search.py">
    <label for="search">Search Course #:</label>
    <input type="text" id="search" name="search" value="" />
    <input type="submit" value="Search2" />
</form>
    """)

print("""
<form method="get" action="courses_title_search.py">
    <label for="search">Search Course Title:</label>
    <input type="text" id="search" name="search" value="" />
    <input type="submit" value="Search3" />
</form>
    """)



print("PGSQL version:<br>")
cursor.execute("SELECT version();")
print("Result:", cursor.fetchall())

print("<br><h2>Showing All Courses:</h2>")
cursor.execute("SELECT * FROM cs_courses_2;")
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
