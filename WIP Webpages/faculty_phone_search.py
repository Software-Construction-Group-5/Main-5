#!/usr/bin/env python3

import cgi
import cgitb
import psycopg2

# Enable CGI error reporting
cgitb.enable()

# Database connection details
DB_HOST = "192.168.56.30"
DB_NAME = "cs_dashboard"
DB_USER = "webuser1"
DB_PASSWORD = "ecupirate"

def search_faculty(search_query):
#    search_query = str(search_query).split()
    print("Content-Type: text/html")
    print()
#    search_query = str(search_query).split()

    """Search the faculty database for the given query."""
    try:
        print("About to connect to database")  # Debugging output
        # Connect to PostgreSQL database
        connection = psycopg2.connect("host=192.168.56.30 dbname=cs_dashboard user=webuser1 password=ecupirate")
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

def main():
    """Main function to handle the CGI request and display the page."""
    # Parse form data
    form = cgi.FieldStorage()

    # Get the search query (if available)
    search_query = form.getvalue('search', '')  # Default to empty string if not provided

    # Print the HTML headers
    print("Content-Type: text/html")
    print()  # Blank line to separate headers from content

    # Print the search form
    print("""
    <form method="get" action="search_test5.py">
        <label for="search">Search Faculty Name:</label>
        <input type="text" id="search" name="search" value="{}" />
        <input type="submit" value="Search" />
    </form>
    """.format(search_query if search_query else ""))

    print("""
    <form method="get" action="search_test5.py">
        <label for="search">Search Faculty Phone #:</label>
        <input type="text" id="search" name="search" value="{}" />
        <input type="submit" value="Search2" />
    </form>
    """.format(search_query if search_query else ""))

    print("""
    <form method="get" action="faculty_email_search.py">
        <label for="search">Search Faculty Email:</label>
        <input type="text" id="search" name="search" value="{}" />
        <input type="submit" value="Search3" />
    </form>
    """.format(search_query if search_query else ""))

#    print("""
#    <form method="get" action="faculty_phone_search.py">
 #       <label for="search2">Search Faculty:</label>
  #      <input type="text" id="search2" name="search2" value={}" />
   #     <input type="submit" value="Search2" />
  #  </form>
   # """).format(search_query if search_query else ""))
    # If a search query exists, perform the search
    if search_query:
        try:
            print("About to perform search")  # Debugging output
            results = search_faculty(search_query)
            print("Search performed")  # Debugging output
            display_results(results, search_query)
        except Exception as e:
            print(f"Error during search: {str(e)}")

if __name__ == '__main__':
    main()
