#!/usr/bin/python3
import psycopg2

conn = psycopg2.connect("host=172.17.0.2 dbname=cs_dashboard user=webuser1 password=ecupirate")

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
<form method="get" action="search_test5.py">
    <label for="search">Search Faculty Name:</label>
    <input type="text" id="search" name="search" value="" />
    <input type="submit" value="Search" />
</form>
    """)

print("""
<form method="get" action="faculty_phone_search.py">
    <label for="search">Search Faculty Phone #:</label>
    <input type="text" id="search" name="search" value="" />
    <input type="submit" value="Search2" />
</form>
    """)

print("""
<form method="get" action="faculty_email_search.py">
    <label for="search">Search Faculty Email:</label>
    <input type="text" id="search" name="search" value="" />
    <input type="submit" value="Search3" />
</form>
    """)

print("""
<form method="get" action="faculty_name_alphabet_sort.py">
    <label for="A-Z">Sort Name</label>
    <input type="submit" value="A-Z" />
</form>
    """)

print("""
<form method="get" action="faculty_name_reverse_alphabet_sort.py">
    <input type="submit" value="Z-A" />
</form>
    """)


print("PGSQL version:<br>")
cursor.execute("SELECT version();")
print("Result:", cursor.fetchall())

print("<br><h2>Showing all Faculty:</h2>")

# Modified SQL query to order the faculty by name in reverse (descending) order
cursor.execute("SELECT * FROM faculty ORDER BY name DESC;")
rows = cursor.fetchall()

if rows:
    # Start the HTML table
    print("<table>")
    print("<tr><th>id</th><th>name</th><th>title</th><th>email</th><th>department</th><th>phone</th></tr>")
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
