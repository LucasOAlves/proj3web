var dataReqNum = -1;
function loadMoreContent(){
	if(dataReqNum>-1){
		dataReqNum++;
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function (){
			if(this.readyState === 4 && this.status === 200){
				document.getElementById("contentTable").innerHTML += this.responseText;
			}
		};
		xhttp.open("GET","PaginaPessoal?loadmore="+dataReqNum,true);
		xhttp.send(null);
	}
}
function loadFirstContent(){
	dataReqNum = 0;
	document.getElementById("contentTable").innerHTML = "";
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function (){
		if(this.readyState === 4 && this.status === 200){
			document.getElementById("contentTable").innerHTML += this.responseText;
		}
	};
	xhttp.open("GET","PaginaPessoal?loadcontent="+dataReqNum+"&search="+document.getElementById("inputBusca").value,true);
	xhttp.send(null);
}
