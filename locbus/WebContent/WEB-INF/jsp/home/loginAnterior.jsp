
<%@ include file="../../../header.jsp" %> 

<form action="<c:url value="/home/login"/>" name="loginForm" method="post">
	<fieldset>
		<legend>Sign In</legend>
		<label for="login"><fmt:message key="login" /></label>
		<input type="text" name="login" id="login" />	
		<label for="password"><fmt:message key="password" /></label>
		<input type="password" name="password" id="password"/>
		<button type="submit" id="submit"><fmt:message key="send"/></button>
	</fieldset>
	<br>
	<a href="${path }home/inserirUsuario">Inserir Usuário</a>
</form> 


<%@ include file="../../../footer.jsp" %> 