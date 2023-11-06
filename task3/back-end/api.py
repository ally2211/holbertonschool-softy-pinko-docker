# Import the Flask class from the flask module
from flask import Flask

# Create an instance of the Flask class. __name__ is just the name of the module.
app = Flask(__name__)

# Use the route() decorator trigger the function that follows.
@app.route('/api/hello')
def hello_world():
    # This function is called when someone accesses '/api/hello' URL.
    return 'Hello, World!'

# Check if the executed script is the main program and not imported as a module 
if __name__ == '__main__':
    # Run the Flask application  host='0.0.0.0' makes the server accessible externally.
    app.run(host='0.0.0.0', port=5252)

