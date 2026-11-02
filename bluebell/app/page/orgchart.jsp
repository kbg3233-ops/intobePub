<%@ page contentType = "text/html; charset=UTF-8" %>
<%
	request.setAttribute("pageTitle", "조직도");
	request.setAttribute("pageTabs", new String[] {"결재내역", "마이팀 조회", "대시보드", "조직도"});
	request.setAttribute("pageTabOn", 3);
	request.setAttribute("tabbarOn", "team");
%>
<%@ include file="../inc/sub_header.jsp" %>
<!-- 외부 조직도 링크 -->
<div class="org-link full-bg">
	<a href="#">오피스 조직도</a>
	<a href="#">스토어 조직도</a>
</div>

<!-- 인재역량관리 -->
<div class="org-talent">
	<div class="list-head">
		<div class="sec-head">
			<h2 class="sec-tit-m">인재역량관리</h2>
		</div>
		<div class="search-box">
			<div class="search-row">
				<input type="text" placeholder="성명 사번 부서검색" title="성명, 사번, 부서">
				<button type="button" class="btn-search">검색</button>
			</div>
		</div>
	</div>

	<ul class="member-list">
		<li>
			<a href="talent_detail.jsp" class="member-card">
				<div>
					<p class="name">홍길동</p>
					<p class="dept"><span>Core of Expertise</span><span>Store Manager</span></p>
				</div>
			</a>
		</li>
		<li>
			<a href="talent_detail.jsp" class="member-card">
				<div>
					<p class="name">김지훈</p>
					<p class="dept"><span>People Support</span><span>Store Manager</span></p>
				</div>
			</a>
		</li>
		<li>
			<a href="talent_detail.jsp" class="member-card">
				<div>
					<p class="name">이동휘</p>
					<p class="dept"><span>Business Partners</span><span>Store Manager</span></p>
				</div>
			</a>
		</li>
		<li>
			<a href="talent_detail.jsp" class="member-card">
				<div>
					<p class="name">이주은</p>
					<p class="dept"><span>Employee Relations</span><span>Store Manager</span></p>
				</div>
			</a>
		</li>
		<li>
			<a href="talent_detail.jsp" class="member-card">
				<div>
					<p class="name">김무열</p>
					<p class="dept"><span>Employee Relations</span><span>Store Manager</span></p>
				</div>
			</a>
		</li>
	</ul>
</div>
<%@ include file="../inc/footer.jsp" %>
