function liveSearch(currentSearch){
	if(currentSearch.length == 0){
		document.getElementById("livesearch").innerHTML = "";
		document.getElementById("livesearch").style.border = "0px";
		}
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function (){
		if(this.readyState === 4 && this.status === 200){
			document.getElementById("livesearch").innerHTML = this.responseText;
		}
	};
	xhttp.open("GET","PaginaPessoal?search="+currentSearch,true);
	xhttp.send(null);
}
