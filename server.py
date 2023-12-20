from flask import Flask

# https://flask.palletsprojects.com/en/3.0.x/quickstart/#variable-rules

app = Flask(__name__)

storage = {}

# https://flask.palletsprojects.com/en/3.0.x/quickstart/#routing

# Key-Value server
@app.route('/')
def index():
    return 'Index'

@app.route('/set_key', methods=['POST'])
def set_key():
    json = request.json
    v = json.get('value')
    k = json.get('key')
    storage[k] = v
    # https://flask.palletsprojects.com/en/3.0.x/quickstart/#about-responses
    message = jsonify({'message': f'Key:{k} has been set to {v}'})

@app.route('/request_key', methods=['POST'])
def request_key():
    pass

@app.route('/request_all_current_contents', methods=['POST'])
def request_all_current_contents():
    pass

@app.route('/delete_key', methods=['POST'])
def delete_key():
    pass

@app.route('/clear_all_current_contents', methods=['POST'])
def clear_all_current_contents():
    pass

# File Upload Server
@app.route('/upload_file', methods=['POST'])
def upload_file():
    pass

@app.route('/request_uploaded_files', methods=['GET'])
def request_uploaded_files():
    pass

@app.route('request_file_for_download', methods=['GET'])
def request_file_for_download():
    pass