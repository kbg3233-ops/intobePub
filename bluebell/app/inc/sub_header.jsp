<%@ page contentType = "text/html; charset=UTF-8" %>
<%--
	서브 헤더
	페이지 상단에서 아래 값을 지정한 뒤 include
	- pageTitle : 페이지 제목
	- pageTabs : 탭 메뉴 (없으면 생략)
	- pageTabOn : 활성 탭 순서 (0부터)
	- hideUtil : true면 알림·언어 아이콘 숨김 (알림·신청 화면)
	- headerType : "close"면 뒤로가기 없이 제목 + 닫기(X) (알림)
--%>
<%
	String pageTitle = (String) request.getAttribute("pageTitle");
	String[] pageTabs = (String[]) request.getAttribute("pageTabs");
	Integer pageTabOn = (Integer) request.getAttribute("pageTabOn");
	boolean hideUtil = Boolean.TRUE.equals(request.getAttribute("hideUtil"));
	boolean isClose = "close".equals(request.getAttribute("headerType"));
	if (pageTabOn == null) pageTabOn = 0;
%>
<%@ include file="../inc/global_header.jsp" %>
<header class="h-wrap full-bg<%= isClose ? " h-close" : "" %>">
	<div class="h-gnb">
		<h2 class="h-tit">
			<% if (!isClose) { %>
			<button type="button" class="btn-back" onclick="history.back();"><img src="../images/ico/ico_back.svg" alt="뒤로가기"></button>
			<% } %>
			<%= pageTitle == null ? "" : pageTitle %>
		</h2>
		<% if (isClose) { %>
		<button type="button" class="btn-close" onclick="history.back();"><img src="../images/ico/ico_close.svg" alt="닫기"></button>
		<% } else if (!hideUtil) { %>
		<div class="h-util">
			<a href="../page/notice.jsp" class="btn-alarm"><img src="../images/ico/ico_bell.svg" alt="알림"></a>
			<button type="button" class="btn-lang"><img src="../images/ico/ico_lang.svg" alt="언어 선택"></button>
		</div>
		<% } %>
	</div>
	<% if (pageTabs != null) { %>
	<nav class="h-tab">
		<ul>
			<% for (int i = 0; i < pageTabs.length; i++) { %>
			<li<%= i == pageTabOn ? " class=\"active\"" : "" %>><a href="#"><%= pageTabs[i] %></a></li>
			<% } %>
		</ul>
	</nav>
	<% } %>
</header>
<main id="container">
