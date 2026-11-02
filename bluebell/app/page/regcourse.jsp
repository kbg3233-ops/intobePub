<%@ page contentType = "text/html; charset=UTF-8" %>
<%
	request.setAttribute("pageTitle", "교육과정");
	request.setAttribute("pageTabs", new String[] {"정규과정", "마이픽과정", "Micro-learning", "BBK 맞춤형"});
	request.setAttribute("pageTabOn", 0);
	request.setAttribute("tabbarOn", "course");
%>
<%@ include file="../inc/sub_header.jsp" %>
<div class="layout-inner regcourse">
	<h2 class="page-tit">정규과정 조회/신청</h2>

	<div class="regcourse-list">
		<p class="card-box regcourse-notice">
			정규 과정은 1) BBK 맞춤형 과정과 2) 직무역량 일반 과정이<br>
			함께 제공되며, 자유롭게 선택·수강할 수 있습니다.<br>
			(정규과정 외 모든 사외교육은 반드시 교육과정 &gt; 마이픽 과정을 통해 신청해 주시기 바랍니다.)
		</p>

		<!-- BBK 맞춤형 -->
		<section class="card-box">
			<div class="regcourse-action">
				<a href="#" class="btn-l-primary"><img src="../images/ico/ico_youtube.svg" alt="">BBK 교육 과정 보러 가기</a>
			</div>
			<div class="regcourse-body">
				<div>
					<h3>BBK맞춤형 교육과정이란?</h3>
					<p>부루벨코리아의 조직, 직무, 리더십 맥락에 맞게 설계된 내부 교육 과정입니다. 우리 회사에 꼭 필요한 핵심 학습을 체계적으로 제공하며, In-Class 와 E-Learning 형태로 진행됩니다.</p>
				</div>
				<div>
					<h4>이런 분께 추천해요!</h4>
					<ul>
						<li>필수 법정의무교육(In-class, e-learning)을 수강하고자<br>하는 경우</li>
						<li>필수/권장 집합교육을 수강하고자 하는 경우</li>
						<li>BBK 자체 설계 e-Learning 교육을 수강하고자 하는 경우</li>
					</ul>
				</div>
			</div>
		</section>

		<!-- 직무역량 일반 (Skillsoft) -->
		<section class="card-box">
			<div class="regcourse-action">
				<a href="#" class="btn-l-primary"><img src="../images/ico/ico_youtube.svg" alt="">직무역량 일반 과정</a>
				<p class="note"><span>Skillsoft의 실시간 업데이트되는 최신 콘텐츠 활용을 위해 <em>직접사이트로 이동</em>합니다</span></p>
			</div>
			<div class="regcourse-body">
				<div>
					<h3>직무역량 일반 과정이란?</h3>
					<p>글로벌 1위 AI 기반 맞춤형 학습 플랫폼인 Skillsoft에서 제공하는 방대한 콘텐츠 라이브러리를 통해 비즈니스 인사이트, 리더십, 디지털, IT 등 다양한 주제를 필요할 때, 바로 학습할 수 있는 자기주도 학습입니다. 짧은 콘텐츠부터 심화 과정까지, 관심 있는 주제를 자유롭게 탐색할 수 있습니다.</p>
				</div>
				<div>
					<h4>이런 분께 추천해요!</h4>
					<ul>
						<li>관심 있는 주제를 스스로 탐색하며 심화 학습하고 싶은 경우</li>
						<li>실무에 바로 적용할 수 있는 스킬이 필요한 경우</li>
					</ul>
				</div>
			</div>
		</section>
	</div>
</div>
<%@ include file="../inc/footer.jsp" %>
