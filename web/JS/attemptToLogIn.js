function attemptToLogIn(name, password){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function (){
		if(this.readyState === 4 && this.status === 200){
			if(this.responseText.localeCompare("false")===0){
				document.getElementById("invalidAttempt").innerHTML = "Acesso negado!! Verifique o nome de usuário e senha";
			} else {
				window.location.href = "PaginaPessoal";
			}
		}
	};
	xhttp.open("POST","Login",true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded;charset=UTF-8");
	xhttp.send("name="+name+"&password="+password);
}
