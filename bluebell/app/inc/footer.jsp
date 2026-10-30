<%@ page contentType = "text/html; charset=UTF-8" %>
<%--
	하단 메뉴
	- tabbarOn : 활성 메뉴 (home / course / study / team / all)
--%>
<%
	String tabbarOn = (String) request.getAttribute("tabbarOn");
	if (tabbarOn == null) tabbarOn = "";
%>
</main> <!-- // container -->
<nav>
	<ul class="tabbar">
		<li class="tb-home<%= tabbarOn.equals("home") ? " active" : "" %>"><a href="../page/main.jsp">홈</a></li>
		<li class="tb-course<%= tabbarOn.equals("course") ? " active" : "" %>"><a href="#">교육과정</a></li>
		<li class="tb-study<%= tabbarOn.equals("study") ? " active" : "" %>"><a href="#">나의학습</a></li>
		<li class="tb-team<%= tabbarOn.equals("team") ? " active" : "" %>"><a href="#">My team</a></li>
		<li class="tb-all<%= tabbarOn.equals("all") ? " active" : "" %>"><a href="#">전체</a></li>
	</ul>
</nav>
<%@ include file="../inc/global_footer.jsp" %>
