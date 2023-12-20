// https://www.digitalocean.com/community/tutorials/how-to-use-the-javascript-fetch-api-to-get-data
async function setKey() {
    const key = document.getElementById('key').value;
    const value = document.getElementById('value').value;
    const res = await fetch('/set_key',{
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({key, value})
    });
    const responseJson = await res.json()
    console.log(responseJson)
}

async function requestKey() {
    const key = document.getElementById('key').value;
    const res = await fetch('/request_key',{
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({key})
    });
    const responseJson = await res.json()
    console.log(responseJson)
}

async function requestAllCurrentContents() {
    const res = await fetch('/request_all_current_contents', {
        method: 'POST',
    })
    const responseJson = await res.json()
    console.log(responseJson)
}

async function deleteKey() {
    const key = document.getElementById('key').value;
    const res = await fetch('/delete_key',{
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({key})
    });
    const responseJson = await res.json()
    console.log(responseJson)
}

async function clearAllCurrentContents() {
    const res = await fetch('/clear_all_current_contents', {
        method: 'POST',
    })
    const responseJson = await res.json()
    console.log(responseJson)
}

async function uploadFile() {
    // https://medium.com/@mohammedaziz_14594/sending-files-to-the-server-using-formdata-in-javascript-c2a4ed8fc85f
    const formFile = document.getElementById('file');
    const fileContents = formFile.files[0];
    const form = new FormData();
    form.append('file',fileContents);
    const res = await fetch('/upload_file',{
        method: 'POST',
        body: form,
    })
    const resultJson = await res.json();
    console.log(resultJson);
}

async function requestUploadedFiles() {
    const res = await fetch('/request_uploaded_files', {
        method: 'GET',
    });
    const resultJson = await res.json();
    console.log(resultJson);
//     Display files as dropdown https://www.w3schools.com/tags/tag_option.asp
    const fileDownloadSelectTag = document.getElementById('fileDownload');
    fileDownloadSelectTag.innerHTML = '';

    resultJson['uploaded_files'].forEach(f => {
        const optionTag = document.createElement('option');
        optionTag.value = f;
        optionTag.textContent = f;
        fileDownloadSelectTag.appendChild(optionTag)
    });
}

async function requestFileForDownload() {
    const file = document.getElementById('fileDownload').value;
    window.location.href = `/request_file_for_download/${file}`;
}