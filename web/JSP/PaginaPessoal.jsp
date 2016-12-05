<%-- 
    Document   : paginaPessoalJSP
    Created on : Oct 17, 2016, 2:46:38 PM
    Author     : lucas
--%>

<%@page import="dao.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.js"></script>
        <script type="text/javascript" src="JS/paginaPessoalLiveSearch_mini.js"></script>
        <script type="text/javascript" src="JS/paginaPessoalLazyLoading_mini.js"></script>
        <script type="text/javascript" src="JS/newContentNotification_mini.js"></script>
        <script type="text/javascript" src="JS/sendFileWithProgressBar_mini.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/paginapessoal.css">
        <title>Página Pessoal</title>
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
                <div id="contents" class="carousel_item-content-inner">
                    <a name="PAGETOP"></a>
                    <div class="centerBoxWrapper" id="searchBox">
                        <h1 class="carousel_item-title">Página Pessoal</h1>
                        Busca: <input id="inputBusca" type="search" name="busca" placeholder="Buscar dados" list="livesearch" autocomplete="off">
                        <datalist id="livesearch">                                    
                        </datalist>
                        <button id="searchButton" class="buttons_small" style="padding-top: 8px;">Buscar</button>
                        <br><span class="centerBox"><a href="#SENDFILE" class="buttons_small">Enviar Arquivo</a>   <a href="#SENDTEXT" class="buttons_small">Enviar Texto</a></span><br><br>
                        <br><br>
                        <span id="newContentNotification"></span>
                        <div class="dataTable">
                            <table id="contentTable" class="dataTable">
                                
                            </table>
                        </div>
                        <br><hr><br>
                        
                        <div class="centerBox div-drag" draggable="true" id="divEnviarArquivo">
                            <a name="SENDFILE"></a>
                            <span class="carousel_item-title" >Enviar Arquivos    <span style="font-size:14px;"><a href="#PAGETOP" style="text-decoration: none;color: whitesmoke;">[topo]</a></span></span>

                            <div class="centerBox">
                                <span id="display"></span>   
                                <form id="sendFilesForm" action="PaginaPessoal" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="postType" value="uploadFile">
                                    <table class="dataTable">
                                        <tr>
                                            <td>
                                                Descrição:
                                            </td>
                                            <td>
                                                <input type="text" name="description" placeholder="Insira uma descrição do conteúdo à enviar" required="required">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Arquivo:
                                            </td>
                                            <td>
                                                <input type="file" name="file" placeholder="Escolha o seu arquivo" required="required" value="Nenhum arquivo selecionado">
                                            </td>
                                        </tr>
                                    </table><br>
                                    <span class="centerBox">
                                        <!--<input type="submit" value="Enviar" class="buttons_small">-->
                                        <div id="sendingProgress"></div><br>
                                        <button type="button" class="buttons_small" id="sendFileButton">Enviar</button>
                                        <input type="reset" value="Limpar" class="buttons_small">
                                    </span>
                                </form>                            
                            </div>
                            
                        </div>
                        
                        <br><hr><br>
                        
                        <div class="centerBox div-drag" draggable="true" id="divEnviarTexto">
                            <a name="SENDTEXT"></a>
                            <span class="carousel_item-title">Enviar Texto    <span style="font-size:14px;"><a href="#PAGETOP" style="text-decoration: none;color: whitesmoke;">[topo]</a></span></span>
                            <div class="centerBox">
                               <form action="PaginaPessoal" method="post" accept-charset="utf-8" id="textEntries">
                                             <input type="hidden" name="postType" value="uploadText">
                                             Título: <input type="text" required="required" name="titulo" placeholder="Insira um título para o texto">
                                   <textarea name="texto" placeholder="Escreva o seu texto aqui e clique em enviar" required="required" form="textEntries"></textarea>
                                   <span class="centerBox">
                                       <input type="submit" value="Enviar" name="enviar" class="buttons_small">
                                       <input type="reset" value="Limpar" class="buttons_small">
                                   </span>
                               </form>
                            </div>
                            
                        </div>
                        <form action="PaginaPessoal" method="post" accept-charset="utf-8">
                        <input type="hidden" name="postType" value="sair" class="text-field"><br>
                        <input type="submit" value="Sair" id="sairButton" class="buttons_small">
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
        <script>            
            $('#inputBusca').bind('input', function() {
                liveSearch($(this).val());
            });
            $(window).scroll(function (){
                if($(window).scrollTop() > $("#contentTable").height()){
                    loadMoreContent();
                }
            });
            document.getElementById("searchButton").addEventListener("click",function (){
               loadFirstContent(); 
            });
            setInterval(function (){
                hasNewContent();
            },4000);
            document.getElementById("sendFileButton").addEventListener("click",function (){
               sendFileWithProgressBar();
            });  
            
            var dragSrcEl = null;

            function handleDragStart(e) {
                
                dragSrcEl = this;
                e.dataTransfer.effectAllowed = 'move';
                e.dataTransfer.setData('text/html', this.innerHTML);
            }
            
            
            function handleDragOver(e) {
              if (e.preventDefault) {
                e.preventDefault(); // Necessary. Allows us to drop.
              }

              e.dataTransfer.dropEffect = 'move';  // See the section on the DataTransfer object.

              return false;
            }

            function handleDragEnter(e) {
              // this / e.target is the current hover target.
              this.classList.add('over');
            }

            function handleDragLeave(e) {
              this.classList.remove('over');  // this / e.target is previous target element.
            }
            
            function handleDrop(e) {
               // this/e.target is current target element.

                if (e.stopPropagation) {
                  e.stopPropagation(); // Stops some browsers from redirecting.
                }

                // Don't do anything if dropping the same column we're dragging.
                if (dragSrcEl != this) {
                  // Set the source column's HTML to the HTML of the columnwe dropped on.
                  dragSrcEl.innerHTML = this.innerHTML;
                  this.innerHTML = e.dataTransfer.getData('text/html');
                }

                return false;
            }
            function handleDragEnd(e) {
                // this/e.target is the source node.
                
                document.getElementById("divEnviarArquivo").classList.remove("over");
                document.getElementById("divEnviarTexto").classList.remove("ovre");
            }

            document.getElementById("divEnviarArquivo").addEventListener("dragstart",handleDragStart,false);
            document.getElementById("divEnviarArquivo").addEventListener("dragenter",handleDragEnter,false);
            document.getElementById("divEnviarArquivo").addEventListener("dragover",handleDragOver,false);
            document.getElementById("divEnviarArquivo").addEventListener("dragleave",handleDragLeave,false);
            document.getElementById("divEnviarArquivo").addEventListener("drop",handleDrop,false);
            document.getElementById("divEnviarArquivo").addEventListener("dragend",handleDragEnd,false);
            
            document.getElementById("divEnviarTexto").addEventListener("dragstart",handleDragStart,false);
            document.getElementById("divEnviarTexto").addEventListener("dragenter",handleDragEnter,false);
            document.getElementById("divEnviarTexto").addEventListener("dragover",handleDragOver,false);
            document.getElementById("divEnviarTexto").addEventListener("dragleave",handleDragLeave,false);
            document.getElementById("divEnviarTexto").addEventListener("drop",handleDrop,false);
            document.getElementById("divEnviarTexto").addEventListener("dragend",handleDragEnd,false);

            
            
        </script>
    </body>
</html>