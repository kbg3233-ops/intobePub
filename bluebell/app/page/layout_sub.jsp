<%@ page contentType = "text/html; charset=UTF-8" %>
<%
	request.setAttribute("pageTitle", "교육과정");
	request.setAttribute("pageTabs", new String[] {"정규과정", "마이픽과정", "Micro-learning", "BBK 맞춤형"});
	request.setAttribute("pageTabOn", 0);
	request.setAttribute("tabbarOn", "course");
%>
<%@ include file="../inc/sub_header.jsp" %>
<div class="layout-inner">
	<!-- 서브 컨텐츠 -->
</div>
<%@ include file="../inc/footer.jsp" %>
