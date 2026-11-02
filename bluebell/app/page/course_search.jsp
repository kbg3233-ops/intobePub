<%@ page contentType = "text/html; charset=UTF-8" %>
<%
	request.setAttribute("pageTitle", "교육과정");
	request.setAttribute("pageTabs", new String[] {"정규과정", "마이픽과정", "Micro-learning", "BBK 맞춤형"});
	request.setAttribute("pageTabOn", 0);
	request.setAttribute("tabbarOn", "course");
%>
<%@ include file="../inc/sub_header.jsp" %>
<div class="course-search">
	<h2 class="page-tit">교육과정 조회</h2>

	<!-- 추천 과정 -->
	<ul class="course-best">
		<li>
			<a href="#" class="course-card">
				<div class="thumb"><img src="../images/dummy/thumb01.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">온라인</span>
					<p class="cate">Language &gt; Business English</p>
					<p class="tit">비즈 영어 고수 되기</p>
					<p class="meta"><span>5차수</span><span>2일 12시간</span></p>
					<p class="date">2025.07.30 ~ 2023.06.10</p>
				</div>
			</a>
		</li>
		<li>
			<a href="#" class="course-card">
				<div class="thumb"><img src="../images/dummy/thumb02.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">온라인</span>
					<p class="cate">Language &gt; Business English</p>
					<p class="tit">비즈 회화 바이블</p>
					<p class="meta"><span>5차수</span><span>2일 12시간</span></p>
					<p class="date">2025.07.30 ~ 2023.06.10</p>
				</div>
			</a>
		</li>
	</ul>
	<div class="sec-line full-bg"></div>

	<!-- 검색 -->
	<div class="search-box">
		<div>
			<button type="button" class="btn-detail" data-tta="search-detail">상세검색</button>
			<div class="search-detail" data-ttatg="search-detail">
				<select class="sel-type"><option>교육유형선택</option></select>
				<select class="sel-type"><option>언어선택</option></select>
				<select class="sel-type"><option>Department</option></select>
				<select class="sel-type"><option>Business Type</option></select>
			</div>
		</div>
		<div class="search-row">
			<input type="text" placeholder="과정명으로 검색해보세요." title="과정명">
			<button type="button" class="btn-search">검색</button>
		</div>
	</div>

	<!-- 개수 / 정렬 / 수강신청 가능 -->
	<div class="course-filter">
		<div class="count-sort">
			<p class="list-count">전체 <em>167</em></p>
			<div class="sort-tab">
				<button type="button" class="active">최신순</button>
				<button type="button">인기순</button>
			</div>
		</div>
		<label class="switch"><input type="checkbox" checked>수강신청 가능한 과정만</label>
	</div>

	<!-- 목록 -->
	<ul class="course-list">
		<li>
			<a href="#" class="course-card course-row">
				<div class="thumb"><img src="../images/dummy/thumb05.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">온라인</span>
					<p class="cate">Compliance &gt; 법정의무</p>
					<p class="tit">개인정보보호 필수 교육</p>
					<p class="date">2025.08.01 ~ 2025.12.31</p>
				</div>
			</a>
		</li>
		<li>
			<a href="#" class="course-card course-row">
				<div class="thumb"><img src="../images/dummy/thumb06.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">오프라인</span>
					<p class="cate">Leadership &gt; Executive</p>
					<p class="tit">임원 리더십 아카데미</p>
					<p class="date">2025.08.20 ~ 2025.08.22</p>
				</div>
			</a>
		</li>
		<li>
			<a href="#" class="course-card course-row">
				<div class="thumb"><img src="../images/dummy/thumb07.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">온라인</span>
					<p class="cate">Retail &gt; Store Operation</p>
					<p class="tit">매장 운영 효율화 전략</p>
					<p class="date">2025.09.02 ~ 2025.10.31</p>
				</div>
			</a>
		</li>
		<li>
			<a href="#" class="course-card course-row">
				<div class="thumb"><img src="../images/dummy/thumb08.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">오프라인</span>
					<p class="cate">Brand &gt; Heritage</p>
					<p class="tit">Blue Bell 100년 헤리티지 투어</p>
					<p class="date">2025.09.10 ~ 2025.09.10</p>
				</div>
			</a>
		</li>
		<li>
			<a href="#" class="course-card course-row">
				<div class="thumb"><img src="../images/dummy/thumb04.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">온라인</span>
					<p class="cate">Digital &gt; Data</p>
					<p class="tit">엑셀로 시작하는 데이터 분석</p>
					<p class="date">2025.09.15 ~ 2025.11.14</p>
				</div>
			</a>
		</li>
		<li>
			<a href="#" class="course-card course-row">
				<div class="thumb"><img src="../images/dummy/thumb03.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">온라인</span>
					<p class="cate">General Business &gt; Soft-skill</p>
					<p class="tit">설득력 있는 프레젠테이션</p>
					<p class="date">2025.09.22 ~ 2025.10.24</p>
				</div>
			</a>
		</li>
		<li>
			<a href="#" class="course-card course-row">
				<div class="thumb"><img src="../images/dummy/thumb09.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">오프라인</span>
					<p class="cate">Retail &gt; Visual Merchandising</p>
					<p class="tit">시즌 디스플레이 워크숍</p>
					<p class="date">2025.10.01 ~ 2025.10.02</p>
				</div>
			</a>
		</li>
		<li>
			<a href="#" class="course-card course-row">
				<div class="thumb"><img src="../images/dummy/thumb10.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">온라인</span>
					<p class="cate">Language &gt; Chinese</p>
					<p class="tit">Retail Chinese for Store Staff</p>
					<p class="date">2025.10.13 ~ 2025.12.12</p>
				</div>
			</a>
		</li>
		<li>
			<a href="#" class="course-card course-row">
				<div class="thumb"><img src="../images/dummy/thumb11.png" alt=""></div>
				<div class="course-info">
					<span class="tag-type">온라인</span>
					<p class="cate">Leadership &gt; Onboarding</p>
					<p class="tit">신규 입사자 온보딩 과정</p>
					<p class="date">2025.11.03 ~ 2025.11.28</p>
				</div>
			</a>
		</li>
	</ul>

	<!-- 페이지 번호 -->
	<div class="paging">
		<div class="paging-btn">
			<a href="#"><img src="../images/ico/ico_page_first.svg" alt="처음"></a>
			<a href="#"><img src="../images/ico/ico_page_prev.svg" alt="이전"></a>
		</div>
		<div class="paging-num">
			<a href="#" class="active">1</a>
			<a href="#">2</a>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
		</div>
		<div class="paging-btn">
			<a href="#"><img src="../images/ico/ico_page_next.svg" alt="다음"></a>
			<a href="#"><img src="../images/ico/ico_page_last.svg" alt="마지막"></a>
		</div>
	</div>
</div>
<%@ include file="../inc/footer.jsp" %>
