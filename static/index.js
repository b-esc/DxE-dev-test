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

// https://stackoverflow.com/questions/71992707/downloading-image-in-javascript-creates-corrupted-file
// https://stackoverflow.com/questions/20287600/ajax-response-gives-a-corrupted-compressed-tgz-file/20545165#20545165
function downloadFileToBrowserXMLHttp(fileName){
    const xmlRq = new XMLHttpRequest();
    xmlRq.open('GET', `/request_file_for_download/${fileName}`, true);
    xmlRq.responseType = 'arraybuffer';
    xmlRq.onload = function () {
        console.log(xmlRq, 'xmlRq');
        if (xmlRq.status !== 200){
            console.error(`Download request failure ${xmlRq.statusText}`);
        }
        if (xmlRq.status === 200){
            console.log(xmlRq.getResponseHeader('Content-Type'), 'content type!!');
            const blob = new Blob(
                [xmlRq.response],
                {type: xmlRq.getResponseHeader('Content-Type')});
            const url = URL.createObjectURL(blob);
            const atag = document.createElement('a');
            atag.href = url;
            atag.download = fileName;
            document.body.appendChild(atag);
            atag.click();
            document.body.removeChild(atag);
            URL.revokeObjectURL(url);
        }
    }
    xmlRq.send()
}
async function requestFileForDownload() {
    const fileName = document.getElementById('fileDownload').value;
    downloadFileToBrowserXMLHttp(fileName);
}