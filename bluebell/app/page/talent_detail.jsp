<%@ page contentType = "text/html; charset=UTF-8" %>
<%
	request.setAttribute("pageTitle", "인재역량관리 상세");
	request.setAttribute("closeBtn", true); // X = 뒤로가기 (조직도로)
	request.setAttribute("hideTabbar", true);
%>
<%@ include file="../inc/sub_header.jsp" %>
<div class="talent">
	<div class="tab-btn" role="group" aria-label="정보 구분">
		<button type="button" class="active" aria-pressed="true">기본정보</button>
		<button type="button" aria-pressed="false">역량정보</button>
		<button type="button" aria-pressed="false">스펙/경력정보</button>
	</div>

	<!-- 기본정보 -->
	<div class="talent-info">
		<div class="talent-profile">
			<img src="../images/ico/ico_avatar.svg" alt="">
			<div>
				<p class="name">홍길동  Hong Gildong</p>
				<div class="meta">
					<p>EHS Manager (Safety)</p>
					<p>사번 0000000 · 재직</p>
				</div>
			</div>
		</div>
		<dl class="info-list">
			<div><dt>사원번호</dt><dd>000000</dd></div>
			<div><dt>성명(영문)</dt><dd>Hong Gildong</dd></div>
			<div><dt>소속부서</dt><dd>PCD_JDC</dd></div>
			<div><dt>상위부서</dt><dd>Parfums Christian Dior</dd></div>
			<div><dt>English Title</dt><dd>EHS Manager(Safety)</dd></div>
			<div><dt>People Manager</dt><dd>Y</dd></div>
			<div><dt>입사일</dt><dd>2025-01-01</dd></div>
		</dl>
		<dl class="talent-stat">
			<div><dt>교육시간</dt><dd>168시간</dd></div>
			<div><dt>교육이력</dt><dd>72건</dd></div>
		</dl>
	</div>

	<!-- 수강중인 과정 -->
	<div class="talent-course">
		<div class="sec-head">
			<h2 class="sec-tit-m">수강중인 과정</h2>
		</div>
		<p class="empty-state">해당 정보가 없습니다.</p>
	</div>
</div>
<%@ include file="../inc/footer.jsp" %>
