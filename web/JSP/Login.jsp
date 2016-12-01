<%-- 
    Document   : loginJSP
    Created on : Oct 17, 2016, 2:46:38 PM
    Author     : lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/login.css">
        <title>Login</title>
        <script>
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
        </script>
    </head>
    <body>
        <div class="header">
		<div class="header_inner">
			<div class="header_menu">
				<span class="header_toggle header_toggle_discover">
					<img class="img_discover" src="IMG/discover.png" height="28" width="28">
				</span>
				<span class="header_toggle header_toggle_menu">
					<span></span>
				</span>
				<a class="header_logo" href="index.html">
					<span class="header_logo_img">
						<img class = "header_logo_img" src="IMG/Pottermore.png">
					</span>
				</a>
				<span class="header_toggle header_toggle_cart">Cart</span>
			</div>
		</div>
	</div>
        <div class="main_article">
		<div class="carousel_item-content">
			<div class="carousel_item-content-inner">
				<h1 class="carousel_item-title">Login Pottermore</h1>
                                <div class="div-form">
                                    <!--<form id="loginForm" action="Login" method="post" accept-charset="utf-8">-->
                                        <table class="loginTable">
                                            <tr>
                                                <td style="text-align:right;"><span class="h2_login">Usuário:</span></td>
                                                <td><input type="text" id="inputName" name="login" placeholder="Insira o seu login" required="required"></td>
                                                </tr>
                                            <tr>
                                                <td style="text-align:right;"><span class="h2_login">Senha:</span></td>
                                                <td><input type="password" id="inputSenha" name="senha" placeholder="Insira a sua senha" required="required"></td>
                                            </tr>
                                            <tr>
                                                <td>                                                        
                                                </td>
                                                <td id="invalidAttempt">
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                        <div>
                                            <button id="loginButton" class="buttons" onclick="">Logar</button>
                                            <!--<input type="submit" value="Logar" class="buttons">-->
                                        </div>
                                        <div style="position: relative;">
                                            <h2 class="carousel_item-subtitle">Ainda não tem uma conta?</h2>
                                            <a href=Inscrevase class="buttons">Inscreva-se</a>
                                        </div>
                                    <!--</form>-->
                                </div>
			</div>	
		</div>
	</div>
        <div class="bottom">
		<footer class="footer">
			<h2 class="footer_social_header">
				<span>Find us on</span>
			</h2>
			<div class="footer_social_main social_share">
				<div class="social_button">
					<a href="http://facebook.com/pottermore">
						<span class="social_icon"><img src="IMG/facebook.png" height="16" width="8" style="margin-top:10px;"></span>
					</a>
				</div>
				<div class="social_button">
					<a href="http://facebook.com/pottermore">
						<span class="social_icon"><img src="IMG/twitter.png" height="16" width="16" style="margin-top:10px;"></span>
					</a>
				</div>
				<div class="social_button">
					<a href="http://facebook.com/pottermore">
						<span class="social_icon"><img src="IMG/insta.png" height="16" width="16" style="margin-top:10px;"></span>
					</a>
				</div>
				<div class="social_button">
					<a href="http://facebook.com/pottermore">
						<span class="social_icon"><img src="IMG/tumblr.png" height="16" width="16" style="margin-top:10px;"></span>
					</a>
				</div>
				<div class="social_button">
					<a href="http://facebook.com/pottermore">
						<span class="social_icon"><img src="IMG/gp.png" height="16" width="16" style="margin-top:10px;"></span>
					</a>
				</div>
			</div>
			<div class="footer_sites">
				<ul>
					<li>
						<a href="index.html">about</a>
					</li>
					<li>
						<a href="index.html">press</a>
					</li>
					<li>
						<a href="index.html">faqs</a>
					</li>
					<li>
						<a href="index.html">contact us</a>
					</li>
					<li>
						<a href="index.html">terms & conditions</a>
					</li>
					<li>
						<a href="index.html">privacy & cookies policy</a>
					</li>
					<li>
						<a href="index.html">about</a>
					</li>
				</ul>
			</div>
		</footer>
	</div>
        <script type="text/javascript" charset="utf-8">
            document.getElementById("loginButton").addEventListener("click", function () {
                attemptToLogIn(document.getElementById("inputName").value, document.getElementById("inputSenha").value);
            });
        </script>>
    </body>
</html>