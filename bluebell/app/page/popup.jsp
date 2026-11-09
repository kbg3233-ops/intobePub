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
	<section>
		<h2>4. 설치 가이드</h2>
		<div>
			<button type="button" class="btn-m-primary" data-tta="guideAndroid">Android 설치 안내</button> <!-- 앱 설치 안내(install.jsp)에 include (popup/guide_android.jsp) -->
			<button type="button" class="btn-m-primary" data-tta="guideIos">iOS 설치 안내</button> <!-- popup/guide_ios.jsp -->
		</div>
	</section>
</div>
<%@ include file="popup/guide_android.jsp" %>
<%@ include file="popup/guide_ios.jsp" %>
<%@ include file="../inc/footer.jsp" %>
