from flask import Flask, render_template
import psycopg2

app = Flask(__name__)

# PostgreSQL connection details
DB_CONFIG = {
    "host": "192.168.56.30",
    "dbname": "cs_dashboard",
    "user": "student",
    "password": "ecupirate"
}

def get_faculty_data():
    """Fetch faculty data from PostgreSQL."""
    conn = psycopg2.connect(**DB_CONFIG)
    cursor = conn.cursor()
    cursor.execute("SELECT id, name, title, email, department, phone FROM faculty;")
    faculty_list = cursor.fetchall()
    cursor.close()
    conn.close()
    return faculty_list

@app.route('/')
def index():
    faculty_data = get_faculty_data()
    return render_template('faculty.html', faculty=faculty_data)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
