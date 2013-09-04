
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:setLocale value="${locale}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="author" content="Daniel Magalhães"/>
	<meta name="reply-to" content="daniel.analista.83@gmail.com"/>
	<meta name="description" content="<fmt:message key="meta.description"/>"/>
	<meta name="keywords" content="sites, web, desenvolvimento, development, java, opensource"/>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
	<link href="<c:url value="/locbus.css"/>" rel="stylesheet" type="text/css" media="screen" />
		
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css" />
	<title>LocBus - Fretes</title>
</head>
<body>
	<c:if test="${not empty param.language}">
		<fmt:setLocale value="${param.language}" scope="session"/>
	</c:if>
    <c:set var="path"><c:url value="/"/></c:set>
    <c:if test="${not empty userInfo.user}">
	    <div id="userInfo">
	    	<p>${userInfo.user.name } - <a href="${path }home/logout">Logout</a></p>
	    </div>
    </c:if>
    <div id="menuWrap">
    	<form class="busca" action="${path }dvds/search" method="get">
	    	<ul id="menuElementsEn">
	        	<li><a href="${path }"><span>home</span></a></li>
			    <c:if test="${not empty userInfo.user}">
			    	<li><a href="<c:url value="/users"/>"><fmt:message key="list_users"/></a></li>
			    	<li><input type="text" name="dvd.title" value="<fmt:message key="search.dvd"/>" 
			    			onfocus="this.value='';" 
		        			onblur="if (this.value == '') this.value='<fmt:message key="search.dvd"/>';"/>
		        		<button type="submit"><fmt:message key="search"/></button></li>
			    </c:if>
	        </ul><!-- menuElements-->
	    </form>
    </div><!-- menuWrap-->
	<c:if test="${not empty errors}">
		<div id="errors">
			<ul>
				<c:forEach items="${errors }" var="error">
					<li>${error.category } - ${error.message }</li>
				</c:forEach>
			</ul>
		</div>
	</c:if>
	<c:if test="${not empty notice}">
		<div id="notice">
			<p>${notice }</p>
		</div>
	</c:if>
	<div id="contentWrap">
		<form action="<c:url value="/home/login"/>" name="loginForm" method="post">
			<fieldset>
				<legend>Acessar Sistema</legend>
				<label for="login"><fmt:message key="login" /></label>
				<input type="text" name="login" id="login" />	
				<label for="password"><fmt:message key="password" /></label>
				<input type="password" name="password" id="password"/>
				<button type="submit" id="submit"><fmt:message key="send"/></button>
	    	</fieldset>
	<br>
	<a href="${path }home/inserirUsuario">Inserir Usuário</a>
		</form> 

	</div>
    <div id="footerWrap">
     <div class="footbar">
                <ul>
                	<li>Desenvolvido por:</li>
                    <li><a href="${path }">Daniel Magalhães</a></li>
                </ul>
            </div><!-- footnote-->
    </div><!-- footer wrap-->
    
</body>
</html>
