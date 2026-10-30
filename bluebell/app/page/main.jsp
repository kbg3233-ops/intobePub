<%@ page contentType = "text/html; charset=UTF-8" %>
<% request.setAttribute("tabbarOn", "home"); %>
<%@ include file="../inc/header.jsp" %>
<div class="main">
	<section class="main-my full-bg">
		<!-- 프로필 -->
		<div class="card-box main-profile">
			<div class="profile-info">
				<div class="profile-thumb"><img src="../images/ico/ico_avatar.svg" alt="프로필 이미지"></div>
				<div>
					<p class="profile-nm">이주은님</p>
					<p class="profile-team">HR팀</p>
				</div>
			</div>
			<div class="profile-badge">
				<div>
					<h2 class="badge-tit">Learning Badge</h2>
					<a href="#" class="btn-more">활동배지보기</a>
				</div>
				<ul class="badge-stack">
					<li><img src="../images/dummy/badge03.png" alt="배지명"></li>
					<li><img src="../images/dummy/badge02.png" alt="배지명"></li>
					<li><img src="../images/dummy/badge01.png" alt="배지명"></li>
				</ul>
			</div>
		</div>

		<!-- My 학습현황 -->
		<div class="card-box main-learning">
			<div class="sec-head">
				<h2 class="sec-tit">My 학습현황</h2>
				<a href="#" class="btn-more">자세히보기</a>
			</div>
			<div class="chart-head">
				<p class="chart-tit">교육유형별 이수 현황(수료 과정 수)</p>
				<ul class="chart-legend">
					<li class="online">온라인</li>
					<li class="offline">집합</li>
				</ul>
			</div>
			<p class="chart-basis"><b>*</b> 기준 : Year to Date</p>
			<div class="chart-scroll">
				<div class="chart-box"><canvas id="learningStatusChart"></canvas></div>
			</div>
		</div>

		<!-- 학습 진행 현황 -->
		<div class="card-box main-progress">
			<ul>
				<li><span>신청 대기 과정</span><strong>1</strong></li>
				<li><span>학습 중 과정</span><strong>2</strong></li>
				<li><span>완료 과정</span><strong>0</strong></li>
			</ul>
			<ul>
				<li><span>설문</span><strong>0</strong></li>
				<li><span>FC진단결과</span><strong>1</strong></li>
			</ul>
		</div>

		<!-- 공지사항 / FAQ -->
		<ul class="main-board">
			<li>
				<h2>공지사항</h2>
				<a href="#" class="subject">[필독] 2026 10월 20일부터 새로운 교육과정이 오픈됩니다.</a>
				<a href="#" class="btn-more">더보기</a>
			</li>
			<li>
				<h2>FAQ</h2>
				<a href="#" class="subject">이런경우 어디를 통해 수강신청을 해야 하나요?</a>
				<a href="#" class="btn-more">더보기</a>
			</li>
		</ul>
	</section>

	<!-- 추천 집합 교육 -->
	<section class="main-best full-bg">
		<div class="sec-head">
			<h2 class="sec-tit-lg">추천 집합 교육 보기</h2>
			<a href="#" class="btn-more">더보기</a>
		</div>
		<ul class="h-scroll">
			<li>
				<a href="#" class="course-card">
					<div class="thumb"><img src="../images/dummy/thumb01.png" alt=""></div>
					<div>
						<p class="tit">부루벨코리아 리더십 역량강화</p>
						<p class="desc">전문가 양성과정에 지금 바로 참여해보세요.</p>
						<p class="date">2025.07.30 ~ 2023.06.10</p>
					</div>
				</a>
			</li>
			<li>
				<a href="#" class="course-card">
					<div class="thumb"><img src="../images/dummy/thumb02.png" alt=""></div>
					<div>
						<p class="tit">비즈 회화 바이블</p>
						<p class="desc">전문가 양성과정에 지금 바로 참여해보세요.</p>
						<p class="date">2025.07.30 ~ 2023.06.10</p>
					</div>
				</a>
			</li>
			<li>
				<a href="#" class="course-card">
					<div class="thumb"><img src="../images/dummy/thumb03.png" alt=""></div>
					<div>
						<p class="tit">럭셔리 고객 응대 매너</p>
						<p class="desc">브랜드 가치를 높이는 고객 응대를 배워보세요.</p>
						<p class="date">2025.08.04 ~ 2025.08.29</p>
					</div>
				</a>
			</li>
			<li>
				<a href="#" class="course-card">
					<div class="thumb"><img src="../images/dummy/thumb04.png" alt=""></div>
					<div>
						<p class="tit">매장 VMD 실전 가이드</p>
						<p class="desc">시즌별 디스플레이 노하우를 익혀보세요.</p>
						<p class="date">2025.09.02 ~ 2025.09.26</p>
					</div>
				</a>
			</li>
		</ul>
	</section>

	<!-- 추천 이러닝 -->
	<section class="main-best main-best-gray full-bg">
		<div class="sec-head">
			<h2 class="sec-tit-lg">추천 이러닝 보기</h2>
			<a href="#" class="btn-more">더보기</a>
		</div>
		<ul class="h-scroll">
			<li>
				<a href="#" class="course-card">
					<div class="thumb"><img src="../images/dummy/thumb01.png" alt=""></div>
					<div>
						<p class="tit">부루벨코리아 리더십 역량강화</p>
						<p class="desc">전문가 양성과정에 지금 바로 참여해보세요.</p>
						<p class="date">2025.07.30 ~ 2023.06.10</p>
					</div>
				</a>
			</li>
			<li>
				<a href="#" class="course-card">
					<div class="thumb"><img src="../images/dummy/thumb02.png" alt=""></div>
					<div>
						<p class="tit">비즈 회화 바이블</p>
						<p class="desc">전문가 양성과정에 지금 바로 참여해보세요.</p>
						<p class="date">2025.07.30 ~ 2023.06.10</p>
					</div>
				</a>
			</li>
			<li>
				<a href="#" class="course-card">
					<div class="thumb"><img src="../images/dummy/thumb03.png" alt=""></div>
					<div>
						<p class="tit">럭셔리 고객 응대 매너</p>
						<p class="desc">브랜드 가치를 높이는 고객 응대를 배워보세요.</p>
						<p class="date">2025.08.04 ~ 2025.08.29</p>
					</div>
				</a>
			</li>
			<li>
				<a href="#" class="course-card">
					<div class="thumb"><img src="../images/dummy/thumb04.png" alt=""></div>
					<div>
						<p class="tit">매장 VMD 실전 가이드</p>
						<p class="desc">시즌별 디스플레이 노하우를 익혀보세요.</p>
						<p class="date">2025.09.02 ~ 2025.09.26</p>
					</div>
				</a>
			</li>
		</ul>
	</section>

	<!-- 바로가기 배너 -->
	<section class="main-link full-bg">
		<div class="link-item">
			<div>
				<p class="tit">교육로드맵</p>
				<p class="desc">Bluebell Korea 연간 교육 현황을 확인해보세요!</p>
			</div>
			<a href="#" class="btn-s-dark">바로가기</a>
		</div>
		<div class="link-item">
			<div>
				<p class="tit">교육로드맵</p>
				<p class="desc">Bluebell Korea 연간 교육 현황을 확인해보세요!</p>
			</div>
			<a href="#" class="btn-s-dark">바로가기</a>
		</div>
	</section>

	<footer class="main-footer full-bg">
		<img src="../images/img/img_f_logo.png" alt="bluebell">
		<p>© BLUEBELL GROUP 2025. ALL RIGHTS RESERVED.</p>
	</footer>
</div>

<script>
	// My 학습현황 차트
	let learningStatusChart = null;

	function createLearningStatusChart() {
		const ctx = document.getElementById('learningStatusChart').getContext('2d');

		if (learningStatusChart) {
			learningStatusChart.destroy();
		}

		learningStatusChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ['전체', '공통', '법정의무', '리더십', '직무', '어학'],
				datasets: [
					{
						label: '온라인',
						data: [22, 5, 2, 1, 8, 6],
						backgroundColor: '#96c0cf',
						barThickness: appPx(22.9),
						categoryPercentage: 0.64
					},
					{
						label: '집합',
						data: [14, 2, 4, 2, 4, 2],
						backgroundColor: '#e2698b',
						barThickness: appPx(22.9),
						categoryPercentage: 0.64
					}
				]
			},
			options: {
				animation: false,
				responsive: true,
				maintainAspectRatio: false,
				layout: { padding: { top: appPx(14) } },
				plugins: {
					legend: { display: false },
					datalabels: {
						anchor: 'end',
						align: 'end',
						offset: 0,
						font: { family: 'Pretendard', size: appPx(10) },
						color: '#666'
					},
					tooltip: { enabled: false }
				},
				scales: {
					x: {
						grid: { display: false },
						border: { display: false },
						ticks: { color: '#333', padding: appPx(4), font: { family: 'Pretendard', size: appPx(10) } }
					},
					y: {
						beginAtZero: true,
						max: 30,
						border: { display: false },
						ticks: { color: '#333', stepSize: 10, padding: appPx(6), font: { family: 'Pretendard', size: appPx(12) } },
						grid: { color: '#e2e2e2', lineWidth: 0.5 }
					}
				}
			},
			plugins: [ChartDataLabels]
		});
	}

	createLearningStatusChart();

	const resizeObserver = new ResizeObserver(() => { createLearningStatusChart(); });

	resizeObserver.observe(document.querySelector('.main-learning .chart-box'));
</script>
<%@ include file="../inc/footer.jsp" %>
