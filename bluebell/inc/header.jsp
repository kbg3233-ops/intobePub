<%@ page contentType ="text/html; charset=UTF-8" %>
<%@ include file="../inc/global_header.jsp" %>
<header class="h-wrap">
	<div class="pc">
		<div class="layout-inner">
			<div class="h-top">
				<h1 class="h-logo"><a href="#"><img src="../images/img/img_logo_w.png"></a></h1>
				<div class="h-util">
					<div data-ttatg="simplealert">
						<button type="button" data-tta="simplealert" style="--pos: relative;">
							<i class="ic-bell"></i>
							<span class="txt-alarm">99+</span>
						</button>
						<div class="h-pop h-alarm">
							<h3 class="h-pop-tit">알림</h3>
							<div class="h-alarm-lang">
								<div class="part-top">
									<p class="part-tit"><i class="ic-bell"></i>알림 수신 언어</p>
									<div class="seg-toggle" role="group" aria-label="알림 수신 언어">
										<button type="button" class="active" aria-pressed="true">국문</button>
										<button type="button" aria-pressed="false">영문</button>
									</div>
								</div>
								<p class="part-desc">선택한언어로 새알림(푸시 · 알림함)이 발송됩니다.</p>
							</div>
							<div class="h-top">
								<p>전체 <em>16</em></p>
								<button>전체삭제</button>
							</div>
							<div data-scroll="y" style="--max-h: 280px; --mg-t: 20px; --pd-r: 5px;">
								<ul class="h-alarm-list">
									<li class="read">
										<div style="--dp: flex; --content-a: space-between; --items-a: flex-start; --gap-a: 12px;">
											‘마케팅잘하기’ 수강신청이 완료되었습니다.
											<button><i class="ic-del"></i></button>
										</div>
										<p class="txt-date">2025-09-22 10:09:36</p>
									</li>
									<li class="read">
										<div style="--dp: flex; --content-a: space-between; --items-a: flex-start; --gap-a: 12px;">
											월마트가 ‘블록체인에 주목하는 이유는?’ 학습이 완료되었습니다.
											<button><i class="ic-del"></i></button>
										</div>
										<p class="txt-date">2025-09-22 10:09:36</p>
									</li>
									<li>
										<div style="--dp: flex; --content-a: space-between; --items-a: flex-start; --gap-a: 12px;">
											월마트가 ‘블록체인에 주목하는 이유는?’ 학습이 완료되었습니다.
											<button><i class="ic-del"></i></button>
										</div>
										<p class="txt-date">2025-09-22 10:09:36</p>
									</li>
									<li>
										<div style="--dp: flex; --content-a: space-between; --items-a: flex-start; --gap-a: 12px;">
											‘마케팅잘하기’ 수강신청이 완료되었습니다.
											<button><i class="ic-del"></i></button>
										</div>
										<p class="txt-date">2025-09-22 10:09:36</p>
									</li>
								</ul>
							</div>
							<button type="button" class="h-pop-close" data-tta="simplealert"><i class="ic-close"></i></button>
						</div>
					</div>
					<div data-ttatg="adminmenu">
						<button type="button" data-tta="adminmenu"><i class="ic-usr"></i></button>
						<div class="h-pop h-usr">
							<a href="#" class="btn-lnk">비밀번호 변경</a>
							<div class="user-info">
								<div class="thumb-type-02 user-thumb">
									<img src="https://placehold.co/90x90" alt="사용자 프로필 이미지">
								</div>
								<div>
									<h4 class="user-nm ft-nnmj">김캐논</h4>
								</div>
								<div class="sel-type">
									<select>
										<option>Option / 옵션</option>
									</select>
								</div>
								<a href="">로그아웃</a>
							</div>
							<button type="button" class="h-pop-close" data-tta="adminmenu" style="--z-idx: 100;"><i class="ic-close"></i></button>
						</div>
					</div>
					<div class="h-glo-wrap">
						<button data-tta="glomenu" data-self><i class="ic-globe"></i></button>
						<ul class="h-menu">
							<li class="active"><a href="../page/main.jsp">KOR</a></li>
							<li><a href="../page/layout_e.jsp">JPN</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div style="--dp: flex; --mg-t: 28px; --gap-x: 54px;">

				<nav class="h-gnb-wrap">
					<ul class="h-gnb">
						<li><a href="#">교육로드맵 / 제도 / 교육평가</a></li>
						<li class="active"><a href="#">교육과정</a></li>
						<li><a href="#">나의학습</a></li>
						<li><a href="#">BBK역량진단</a></li>
						<li><a href="#">교육지원</a></li>
						<li><a href="#">결재 / 이력관리<span class="txt-alarm-02">19</span></a></li>
					</ul>
					<div class="h-sub-menu-wrap">
						<div class="layout-inner">
							<div class="h-sub-menu">
								<ul style="--w: 207px;">
									<li class="active"><a href="#">교육로드맵</a></li>
									<li><a href="#">제도</a></li>
									<li><a href="#">교육평가</a></li>
								</ul>
								<ul style="--w: 64.4px;">
									<li><a href="#">조회/신청</a></li>
									<li><a href="#">콘텐츠 학습</a></li>
									<li><a href="#">수강이력</a></li>
								</ul>
								<ul style="--w: 64.4px;">
									<li><a href="#">나의 교육체계</a></li>
									<li><a href="#">교육과정 수강이력</a></li>
									<li><a href="#">마이픽 과정</a></li>
								</ul>
								<ul style="--w: 99.3px;">
									<li><a href="#">본인 진단</a></li>
									<li><a href="#">진단결과</a></li>
								</ul>
								<ul style="--w: 64.4px;">
									<li><a href="#">공지사항</a></li>
									<li><a href="#">FAQ</a></li>
									<li><a href="#">자료실</a></li>
								</ul>
								<ul style="--w: 111.5px;">
									<li><a href="#">결재내역</a></li>
									<li><a href="#">마이팀 조회</a></li>
								</ul>
							</div>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="mobile h-inner">
		<div class="h-left">
			<!--<a href="#" class="h-btn h-btn-back"><i class="ic-m-l-arrow"></i></a>-->
			<h1 class="h-logo"><a href="#"><img src="../images/img/img_logo_m.png"></a></h1>
		</div>

		<div class="h-right">
			<button type="button" class="h-btn h-btn-alarm" data-tta="mobile-alarm">
				<i class="ic-m-bell active"></i> <!-- 알림이 있을 때 active 클래스 -->
			</button>
			<div style="--pos: relative;">
				<button type="button" class="h-btn h-btn-globe" data-tta="mobile-glomenu"><i class="ic-m-globe"></i></button>
				<ul class="h-menu" data-ttatg="mobile-glomenu" style="position: absolute; --left: -4vw; --top: 15vw;">
					<li class="active"><a href="../page/main.jsp">KOR</a></li>
					<li><a href="../page/layout_e.jsp">JPN</a></li>
				</ul>
			</div>
			<button type="button" class="h-btn" data-tta="mobile-panel"><i class="ic-m-hamburger"></i></button>
		</div>
		<!-- 모바일 패널 -->
		<%@ include file="../page/popup/m-panel.jsp" %>
	</div>
</header>

<!-- 사용자 정보 -->
<%@ include file="../page/popup/userPic.jsp" %>

<!-- 모바일 알람 -->
<%@ include file="../page/popup/m-alarm.jsp" %>

<div id="container">
