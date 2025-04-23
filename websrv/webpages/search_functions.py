#!/usr/bin/env python3

import cgi
import cgitb
import psycopg2

# Enable CGI error reporting
cgitb.enable()

def search_faculty_name(search_query):
#    search_query = str(search_query).split()
    print("Content-Type: text/html")
    print()

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
#    search_query = str(search_query).split()

    """Search the faculty database for the given query."""
    try:
        print("About to connect to database")  # Debugging output
        # Connect to PostgreSQL database
        connection = psycopg2.connect("host=172.17.0.2 dbname=cs_dashboard user=webuser1 password=ecupirate")
        cursor = connection.cursor()
        print("Database connection established")  # Debugging output
        
        # Define the SQL query with parameterized search to avoid SQL injection
        query = "SELECT * FROM faculty WHERE name ILIKE %s"
        cursor.execute(query, ('%' + search_query + '%',))  # Parameterized query
        
        # Fetch results
        results = cursor.fetchall()

        # Close database connection
        cursor.close()
        connection.close()

        return results

    except psycopg2.DatabaseError as e:
        print(f"Database error: {e}")
        return []

    except Exception as e:
        print(f"Error: {e}")
        return []

def search_faculty_email(search_query):
#    search_query = str(search_query).split()
    print("Content-Type: text/html")
    print()

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
#    search_query = str(search_query).split()

    """Search the faculty database for the given query."""
    try:
        print("About to connect to database")  # Debugging output
        # Connect to PostgreSQL database
        connection = psycopg2.connect("host=172.17.0.2 dbname=cs_dashboard user=webuser1 password=ecupirate")
        cursor = connection.cursor()
        print("Database connection established")  # Debugging output
        
        # Define the SQL query with parameterized search to avoid SQL injection
        query = "SELECT * FROM faculty WHERE email ILIKE %s"
        cursor.execute(query, ('%' + search_query + '%',))  # Parameterized query
        
        # Fetch results
        results = cursor.fetchall()

        # Close database connection
        cursor.close()
        connection.close()

        return results

    except psycopg2.DatabaseError as e:
        print(f"Database error: {e}")
        return []

    except Exception as e:
        print(f"Error: {e}")
        return []


def search_faculty_phone(search_query):
#    search_query = str(search_query).split()
    print("Content-Type: text/html")
    print()

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
#    search_query = str(search_query).split()

    """Search the faculty database for the given query."""
    try:
        print("About to connect to database")  # Debugging output
        # Connect to PostgreSQL database
        connection = psycopg2.connect("host=172.17.0.2 dbname=cs_dashboard user=webuser1 password=ecupirate")
        cursor = connection.cursor()
        print("Database connection established")  # Debugging output
        
        # Define the SQL query with parameterized search to avoid SQL injection
        query = "SELECT * FROM faculty WHERE phone ILIKE %s"
        cursor.execute(query, ('%' + search_query + '%',))  # Parameterized query
        
        # Fetch results
        results = cursor.fetchall()

        # Close database connection
        cursor.close()
        connection.close()

        return results

    except psycopg2.DatabaseError as e:
        print(f"Database error: {e}")
        return []

    except Exception as e:
        print(f"Error: {e}")
        return []

def search_faculty_prefix(search_query):
#    search_query = str(search_query).split()
    print("Content-Type: text/html")
    print()

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

#    search_query = str(search_query).split()

    """Search the faculty database for the given query."""
    try:
        print("About to connect to database")  # Debugging output
        # Connect to PostgreSQL database
        connection = psycopg2.connect("host=172.17.0.2 dbname=cs_dashboard user=webuser1 password=ecupirate")
        cursor = connection.cursor()
        print("Database connection established")  # Debugging output
        
        # Define the SQL query with parameterized search to avoid SQL injection
        query = "SELECT * FROM cs_courses_2 WHERE prefix ILIKE %s"
        cursor.execute(query, ('%' + search_query + '%',))  # Parameterized query
        
        # Fetch results
        results = cursor.fetchall()

        # Close database connection
        cursor.close()
        connection.close()

        return results

    except psycopg2.DatabaseError as e:
        print(f"Database error: {e}")
        return []

    except Exception as e:
        print(f"Error: {e}")
        return []

def search_faculty_number(search_query):
#    search_query = str(search_query).split()
    print("Content-Type: text/html")
    print()

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

#    search_query = str(search_query).split()

    """Search the faculty database for the given query."""
    try:
        print("About to connect to database")  # Debugging output
        # Connect to PostgreSQL database
        connection = psycopg2.connect("host=172.17.0.2 dbname=cs_dashboard user=webuser1 password=ecupirate")
        cursor = connection.cursor()
        print("Database connection established")  # Debugging output
        
        # Define the SQL query with parameterized search to avoid SQL injection
        query = "SELECT * FROM cs_courses_2 WHERE number ILIKE %s"
        cursor.execute(query, ('%' + search_query + '%',))  # Parameterized query
        
        # Fetch results
        results = cursor.fetchall()

        # Close database connection
        cursor.close()
        connection.close()

        return results

    except psycopg2.DatabaseError as e:
        print(f"Database error: {e}")
        return []

    except Exception as e:
        print(f"Error: {e}")
        return []

def search_faculty_title(search_query):
#    search_query = str(search_query).split()
    print("Content-Type: text/html")
    print()

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

#    search_query = str(search_query).split()

    """Search the faculty database for the given query."""
    try:
        print("About to connect to database")  # Debugging output
        # Connect to PostgreSQL database
        connection = psycopg2.connect("host=172.17.0.2 dbname=cs_dashboard user=webuser1 password=ecupirate")
        cursor = connection.cursor()
        print("Database connection established")  # Debugging output
        
        # Define the SQL query with parameterized search to avoid SQL injection
        query = "SELECT * FROM cs_courses_2 WHERE title ILIKE %s"
        cursor.execute(query, ('%' + search_query + '%',))  # Parameterized query
        
        # Fetch results
        results = cursor.fetchall()

        # Close database connection
        cursor.close()
        connection.close()

        return results

    except psycopg2.DatabaseError as e:
        print(f"Database error: {e}")
        return []

    except Exception as e:
        print(f"Error: {e}")
        return []

def search_fte_faculty(search_query):
#    search_query = str(search_query).split()
    print("Content-Type: text/html")
    print()

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
#    search_query = str(search_query).split()

    """Search the faculty database for the given query."""
    try:
        print("About to connect to database")  # Debugging output
        # Connect to PostgreSQL database
        connection = psycopg2.connect("host=172.17.0.2 dbname=cs_dashboard user=webuser1 password=ecupirate")
        cursor = connection.cursor()
        print("Database connection established")  # Debugging output
        
        # Define the SQL query with parameterized search to avoid SQL injection
        query = "SELECT * FROM cs_fte WHERE faculty ILIKE %s"
        cursor.execute(query, ('%' + search_query + '%',))  # Parameterized query
        
        # Fetch results
        results = cursor.fetchall()

        # Close database connection
        cursor.close()
        connection.close()

        return results

    except psycopg2.DatabaseError as e:
        print(f"Database error: {e}")
        return []

    except Exception as e:
        print(f"Error: {e}")
        return []


def display_results_fte(results, search_query):
    print("Content-Type: text/html")
    print()

    """Display the search query (name being searched) and the full rows of results."""
    if results:
        print(f"<h2>Search results for: {search_query}</h2>")
        print("<table border='1'>")
        # Display the column headers in lowercase
        print("<tr><th>Faculty</th><th>Year</th><th>Semester</th><th>FTE</th></tr>")
        
        # Loop through and display each row
        for row in results:
            print("<tr>")
            for col in row:  # Loop through each column in the row
                print(f"<td>{col}</td>")  # Display each column's value
            print("</tr>")
        
        print("</table>")
    else:
        print(f"<h2>No results found for '{search_query}'.</h2>")
def display_results(results, search_query):
    print("Content-Type: text/html")
    print()

    """Display the search query (name being searched) and the full rows of results."""
    if results:
        print(f"<h2>Search results for: {search_query}</h2>")
        print("<table border='1'>")
        # Display the column headers in lowercase
        print("<tr><th>id</th><th>name</th><th>title</th><th>email</th><th>department</th><th>phone</th></tr>")
        
        # Loop through and display each row
        for row in results:
            print("<tr>")
            for col in row:  # Loop through each column in the row
                print(f"<td>{col}</td>")  # Display each column's value
            print("</tr>")
        
        print("</table>")
    else:
        print(f"<h2>No results found for '{search_query}'.</h2>")
