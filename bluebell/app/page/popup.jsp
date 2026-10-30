<%@ page contentType = "text/html; charset=UTF-8" %>
<% request.setAttribute("pageTitle", "팝업"); %>
<%@ include file="../inc/sub_header.jsp" %>
<div class="pop-list">
	<section>
		<h2>1. 시작·공통</h2>
		<div>
			<button type="button" class="btn-m-primary" data-tta="alarm">알림</button> <!-- 헤더에 include (popup/alarm.jsp) -->
		</div>
	</section>
</div>
<%@ include file="../inc/footer.jsp" %>
