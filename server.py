import os
from flask import send_from_directory, Flask, render_template, request, jsonify
# https://flask.palletsprojects.com/en/3.0.x/quickstart/#variable-rules

app = Flask(__name__)
storage = {}

# https://flask.palletsprojects.com/en/3.0.x/quickstart/#routing

# Key-Value server
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/set_key', methods=['POST'])
def set_key():
    json = request.json
    v = json.get('value')
    k = json.get('key')
    storage[k] = v
    # https://flask.palletsprojects.com/en/3.0.x/quickstart/#about-responses
    response = jsonify({'message': f'Key:{k} has been set to {v}'})
    return response

@app.route('/request_key', methods=['POST'])
def request_key():
    k = request.json.get('key')
    v = storage.get(k, f'Value not found for {k}')
    response = jsonify({'key': k, 'value': v})
    return response

@app.route('/request_all_current_contents', methods=['POST'])
def request_all_current_contents():
    response = jsonify(storage)
    return response


@app.route('/delete_key', methods=['POST'])
def delete_key():
    k = request.json.get('key')
    if not k in storage:
        response = jsonify({'error': f'Key: {k} is not in storage'})
        return response, 404
    else:
        del storage[k]
        response = jsonify({'message': f'Key: {k} has been deleted'})
        return response

@app.route('/clear_all_current_contents', methods=['POST'])
def clear_all_current_contents():
    # https://www.programiz.com/python-programming/methods/dictionary/clear
    storage.clear()
    response = jsonify({'message': 'All contents have been cleared from storage'})
    return response

# File Upload Server
# https://flask.palletsprojects.com/en/3.0.x/patterns/fileuploads/

UPLOADED_FILES = 'uploaded_files'
app.config['UPLOAD_FOLDER'] = UPLOADED_FILES
UPLOAD_FOLDER = app.config['UPLOAD_FOLDER']

@app.route('/upload_file', methods=['POST'])
def upload_file():
    no_file_response = jsonify({'error': 'There is not a file that has been selected for upload'})
    if 'file' not in request.files:
        return no_file_response, 400

    file_upload = request.files['file']

    if file_upload.filename == '':
        return no_file_response, 400

    file_destination = os.path.join(UPLOAD_FOLDER, file_upload.filename)
    file_upload.save(file_destination)
    response = jsonify({'message': f'File {file_upload.filename} has been uploaded'})
    return response



@app.route('/request_uploaded_files', methods=['GET'])
def request_uploaded_files():
    filenames = os.listdir(UPLOAD_FOLDER)
    response = jsonify({'uploaded_files': filenames})
    return response

@app.route('/request_file_for_download/<file>', methods=['GET'])
def request_file_for_download(file):
    downloaded_file = send_from_directory(UPLOAD_FOLDER, file)
    return downloaded_file

# https://pythonhow.com/python-tutorial/flask/How-a-Flask-app-works/
# https://blog.miguelgrinberg.com/post/running-your-flask-application-over-https
if __name__ == '__main__':
    app.run(debug = False, host='0.0.0.0')# ,ssl_context=('/etc/letsencrypt/live/bescobardxedevtest.ddns.net/fullchain.pem','/etc/letsencrypt/live/bescobardxedevtest.ddns.net/privkey.pem')
