#!/usr/bin/python3
import psycopg2
import cgi

# Database connection
conn = psycopg2.connect("host=192.168.56.30 dbname=cs_dashboard user=webuser1 password=ecupirate")
cursor = conn.cursor()

# Retrieve search query from form input (if provided)
form = cgi.FieldStorage()
search_query = form.getvalue("search")  # Get search term from the form (if any)

# Print the HTTP headers
print("Content-type: text/html\n\n")

# HTML structure and styles
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
<h1>Faculty Search</h1>
""")


# Print the search form
print("""
<form method="get" action="test.py">
    <label for="search">Search Faculty:</label>
    <input type="text" id="search" name="search" value="{}" />
    <input type="submit" value="Search" />
</form>
""".format(search_query if search_query else ""))

# If there's a search query, perform the search
if search_query:
    print(f"<br>Searching for: {search_query}<br><br>")
    
    # Query the database for matching records
    query = "SELECT name FROM faculty WHERE name ILIKE %s;"  # Assuming searching by faculty name
    cursor.execute(query, ('%' + search_query + '%',))
    rows = cursor.fetchall()

    if rows:
        print("<table>")
        print("<tr><th>Faculty ID</th><th>Faculty Name</th><th>Other Columns...</th></tr>")  # Adjust columns as needed
        
        # Print the rows from the query
        for row in rows:
            print("<tr>")
            for cell in row:
                print(f"<td>{cell}</td>")
            print("</tr>")
        
        print("</table>")
    else:
        print("<p>No results found for your search.</p>")
else:
    print("<p>Please enter a search term to search the faculty.</p>")

# Closing the cursor and connection
cursor.close()
conn.close()
