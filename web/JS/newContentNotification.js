var lastContentId = -1;
function hasNewContent(){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function (){
        if(this.readyState === 4 && this.status === 200){
            var obj = JSON.parse(this.responseText);
            if(obj.id > lastContentId && lastContentId !== -1){
                document.getElementById("newContentNotification").innerHTML = "Novos conteúdos foram adicionado!";
            }
            lastContentId = obj.id;
        }
    };
    xhr.open("GET","PaginaPessoal?newcontent="+lastContentId,true);
    xhr.send(null);
}
