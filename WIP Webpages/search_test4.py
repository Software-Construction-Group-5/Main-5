import cgi
import cgitb
import psycopg2

# Enable CGI error reporting
cgitb.enable()

# Database connection details
DB_HOST = "192.168.56.30"
DB_NAME = "cs_dashboard"
DB_USER = "webuser1"
DB_PASSWORD = "ecu_pirate"

def search_faculty(search_query):
    """Search the faculty database for the given query."""
    
    try:
        # Ensure search_query is a string
        search_query = str(search_query)

        # Connect to PostgreSQL database
        connection = psycopg2.connect(
            host=DB_HOST,
            database=DB_NAME,
            user=DB_USER,
            password=DB_PASSWORD
        )
        cursor = connection.cursor()

        # Define the SQL query with parameterized search to avoid SQL injection
        query = "SELECT * FROM faculty WHERE faculty_name ILIKE %s LIMIT 10"
        cursor.execute(query, ('%' + search_query + '%',))  # Parameterized query

        # Fetch results
        results = cursor.fetchall()

        # Close database connection
        cursor.close()
        connection.close()

        return results
    
    except Exception as e:
        print(f"Error connecting to the database: {e}")
        return []

def display_results(results, search_query):
    """Display the search query (name being searched) and the full rows of results."""
    if results:
        print(f"<h2>Search results for: {search_query}</h2>")
        print("<tr><th>id</th><th>name</th><th>title</th><th>email</th><th>department</th><th>phone</th></tr>")  # Adjust column names accordingly
        
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
    print()  # Important to have a blank line after headers

    # Print the search form
    print("""
    <form method="get" action="search_test4.py">
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
