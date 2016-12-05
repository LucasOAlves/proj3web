function sendFileWithProgressBar(){
    var xhr = new XMLHttpRequest();
    xhr.open("POST","PaginaPessoal",true);
    xhr.upload.addEventListener("progress", function(evt){
        if (evt.lengthComputable) {
            var percentComplete = evt.loaded / evt.total;
            document.getElementById("sendingProgress").innerHTML = "<progress value=\""+percentComplete+"\"></progress>";
        }
    }, false);
    xhr.onreadystatechange = function (){
        if(this.readyState === 4){
            document.getElementById("sendingProgress").innerHTML = "Concluído!";
        }
    };
    var formData = new FormData(document.getElementById("sendFilesForm"));
    xhr.send(formData);
}