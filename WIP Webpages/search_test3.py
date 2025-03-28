#!/usr/bin/env python3
# search_test.py

import cgi  # To handle form data
import cgitb  # To display detailed error information in the browser
import psycopg2  # Or whatever database you're using

# Enable CGI error reporting
cgitb.enable()

def search_faculty(search_query):
    """Search the faculty database for the given query."""
    
    # Connect to your database (this is just an example, use your own DB configuration)
    connection = psycopg2.connect('host=192.168.56.30 dbname=cs_dashboard user=webuser1 password=ecupirate')  # Replace with your actual database
    cursor = connection.cursor()
    search_query = str(search_query)

    # Define the SQL query with parameterized search to avoid SQL injection
    query = "SELECT * FROM faculty WHERE name ILIKE %s LIMIT 10;"
    cursor.execute(query, ('%' + search_query + '%',))  # Use parameterized queries to prevent SQL injection

    # Fetch results
    results = cursor.fetchall()

    # Close database connection
    connection.close()

    return results

def display_results(results, search_query):
    """Display the search results in HTML format."""
    if results:
        print(f"<h2>Search Results for: {search_query}</h2>")
#	print("<table boarder='1'>")
#	print("<tr><th>id</th><th>name</th><th>title</th><th>email</th><th>department</th><th>phone</th></tr>")

#        print("<ul>")
        for row in results:
            print("<tr>")
#	    for col in row:
#	        print(f"<td>{col}</td>")
#	    print("</tr>")
            print(f"<li>{row[0]}</li>")  # Assuming each result is a tuple with the faculty name in the first element
        print("</ul>")
	print("</table>")
    else:
        print("<h2>No results found.</h2>")

def main():
    """Main function to handle the CGI request and display the page."""
    # Parse form data
    form = cgi.FieldStorage()
    
    # Get the search query (if available)
    search_query = form.getvalue('search', '')  # Default to empty string if not provided
    
    # Print the HTML headers
    print("Content-Type: text/html")
    print()  # Important to have a blank line after headers

    # Print the search form
    print("""
    <form method="get" action="search_test3.py">
        <label for="search">Search Faculty:</label>
        <input type="text" id="search" name="search" value="{}" />
        <input type="submit" value="Search" />
    </form>
    """.format(search_query if search_query else ""))

    # If a search query exists, perform the search
    if search_query:
        results = search_faculty(search_query)
        display_results(results, search_query)

if __name__ == '__main__':
    main()
