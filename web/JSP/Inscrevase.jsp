<%-- 
    Document   : inscrevaseJSP
    Created on : Oct 17, 2016, 2:46:38 PM
    Author     : lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/inscrevase.css">
        <script type="text/javascript" src="JS/verificaCampoNomeInscrevase_mini.js"></script>
        <script type="text/javascript" src="JS/verificaCampoEmailInscrevase_mini.js"></script>
        <script type="text/javascript" src="JS/verificaCampoLoginInscrevase_mini.js"></script>
        <script type="text/javascript" src="JS/verificaCampoSenhaInscrevase_mini.js"></script>
        <script type="text/javascript" src="JS/verificaCampoEstadoInscrevase_mini.js"></script>
        <script type="text/javascript" src="JS/verificaCampoCidadeInscrevase_mini.js"></script>
        <script type="text/javascript" src="JS/verificaCampoBairroInscrevase_mini.js"></script>
        <script type="text/javascript" src="JS/verificaCampoRuaInscrevase_mini.js"></script>
        <script type="text/javascript" src="JS/verificaCampoNumeroInscrevase_mini.js"></script>
        <script type="text/javascript" src="JS/attempToRegister_mini.js"></script>
        <title>Login</title>
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
                                <div class="div-form">
                                    <h1 class="carousel_item-title">Cadastro de Usuário</h1>
                                    <form action="Inscrevase" method="post" accept-charset="utf-8" id="formInscrevase">
                                       <table class="centerBox">
                                            <tr>
                                                <td>Nome:</td>
                                                <td><input type="text" name="nome" placeholder="Insira o seu nome completo" required="required" id="inputName"></td>
                                                <td id="invalidName"></td>
                                             </tr>
                                            <tr>
                                                <td>E-mail:</td>
                                                <td><input type="email" name="email" placeholder="Insira o seu endereço de e-mail" required="required" id="inputEmail"></td>
                                                <td id="invalidEmail"></td>
                                            </tr>
                                            <tr>
                                                <td>Login:</td>
                                                <td><input type="text" name="login" placeholder="Insira o seu login que será utilizado para acessar o sistema" required="required" id="inputLogin"></td>
                                                <td id="invalidLogin"></td>
                                            </tr>
                                            <tr>
                                                <td>Senha:</td>
                                                <td><input type="password" name="senha" placeholder="Insira a sua senha para acessar o sistema" required="required" id="inputSenha"></td>
                                                <td id="invalidSenha"></td>
                                            </tr>
                                            <tr>
                                                <td>Estado:</td>
                                                <td><select name="estado" required="required" id="inputEstado">
                                                    <option value="AC">Acre</option>
                                                    <option value="AL">Alagoas</option>
                                                    <option value="AM">Amazonas</option>
                                                    <option value="AP">Amapá</option>
                                                    <option value="BA">Bahia</option>
                                                    <option value="CE">Ceará</option>
                                                    <option value="DF">Distrito Federal</option>
                                                    <option value="ES">Espírito Santo</option>
                                                    <option value="GO">Goiás</option>
                                                    <option value="MA">Maranão</option>
                                                    <option value="MG">Minas Gerais</option>
                                                    <option value="MS">Mato Grosso do Sul</option>
                                                    <option value="MT">Mato Grosso</option>
                                                    <option value="PA">Pará</option>
                                                    <option value="PB">Paraíba</option>
                                                    <option value="PE">Pernambuco</option>
                                                    <option value="PI">Piauí</option>
                                                    <option value="PR">Paraná</option>
                                                    <option value="RJ">Rio de Janeiro</option>
                                                    <option value="RN">Rio Grande do Norte</option>
                                                    <option value="RS">Rio Grande do Sul</option>
                                                    <option value="RO">Rondônia</option>
                                                    <option value="RR">Roraima</option>
                                                    <option value="SC">Santa Catarina</option>
                                                    <option value="SE">Sergipe</option>
                                                    <option value="SP">São Paulo</option>
                                                    <option value="TO">Tocantins</option>
                                                </select></td>
                                                <td id="invalidEstado"></td>
                                            </tr>
                                            <tr>
                                                <td>Cidade:</td>
                                                <td><input type="text" name="cidade" placeholder="Insira o nome da cidade onde você nasceu" required="required" id="inputCidade"></td>
                                                <td id="invalidCidade"></td>
                                            </tr>
                                            <tr>
                                                <td>Bairro:</td>
                                                <td><input type="text" name="bairro" placeholder="Insira o nome do bairro onde você mora" required="required" id="inputBairro"></td>
                                                <td id="invalidBairro"></td>
                                            </tr>
                                            <tr>
                                                <td>Rua:</td>
                                                <td><input type="text" name="rua" placeholder="Insira o nome da rua onde você mora" required="required" id="inputRua"></td>
                                                <td id="invalidRua"></td>
                                            </tr>
                                            <tr>
                                                <td>Numero:</td>
                                                <td><input type="text" name="numero" placeholder="Insira o número da sua residência" required="required" id="inputNumero"></td>
                                                <td id="invalidNumero"></td>
                                            </tr>
                                             <tr>
                                                <td>
                                                </td>
                                                <td>
                                                    <label style="display :block" id="labelInvalid"></label>
                                                </td>
                                            </tr>
                                        </table>
                                        <span class="centerBox">
                                            <input type="button" value="Cadastrar" class="buttons" id="buttonSubmit">
                                            <input type="reset" value="Limpar" class="buttons">
                                            <a href="Login"><button type="button" class="buttons">Cancelar</button></a>
                                        </span>
                                    </form>
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
        <script type="text/javascript">
            document.getElementById("buttonSubmit").addEventListener("click", function (){
                attempToRegister();
            });
            
            
            document.getElementById("inputName").onblur = function (){
                verificaCampoNomeInscrevase();
            };

            document.getElementById("inputEmail").onblur = function (){
              verificaCampoEmailInscrevase();
            };
            
            document.getElementById("inputLogin").onblur = function (){
                verificaCampoLoginInscrevase();
            };
            
            document.getElementById("inputSenha").onblur = function (){
                verificaCampoSenhaInscrevase();
            };
            
            document.getElementById("inputEstado").onblur = function (){
                verificaCampoEstadoInscrevase();
            };
            
            document.getElementById("inputCidade").onblur = function (){
                verificaCampoCidadeInscrevase();
            };
            
            
            document.getElementById("inputBairro").onblur = function(){
                verificaCampoBairroInscrevase();
            };
            
            document.getElementById("inputRua").onblur = function (){
                verificaCampoRuaInscrevase();
            };
            
            document.getElementById("inputNumero").onblur = function (){
                verificaCampoNumeroInscrevase();
            };
            
            /*function validateFields(elementName, elementID){
                var elementValue = document.getElementById(elementID).value;
                var xmlhttp;
                if (window.XMLHttpRequest){ 
                    xmlhttp = new XMLHttpRequest();} 
                else{ 
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                } 
                xmlhttp.open("GET","validaInscrevase?"+elementName+"="+elementValue,true); 
                xmlhttp.onreadystatechange = function (){
                    if(this.readyState === 4 && this.status === 200){
                        var obj = JSON.parse(this.responseText);
                        var buttonSubmit = document.getElementById("buttonSubmit");
                        
                        if (obj.result === "false"){
                            document.getElementById("labelInvalid").innerHTML = "";
                            document.getElementById("labelInvalid").innerHTML = obj.erro;
                            document.getElementById(elementID).valid = false;
                        } else {           
                            document.getElementById(elementID).valid = true;
                        }
                        
                        buttonSubmit.disabled = !isValid();
                        
                    }
                };
                xmlhttp.send(null); 
            };*/
            
            function isFormValid() {
             var frmMain = document.getElementById("formInscrevase");
                var blnValid = true;

                for (var i=0; i < frmMain.elements.length; i++) {
                    if (typeof frmMain.elements[i].valid == "boolean") {
                        blnValid = blnValid && frmMain.elements[i].valid;
                    }
                }
                return blnValid;
            };
        </script>
    </body>
</html>