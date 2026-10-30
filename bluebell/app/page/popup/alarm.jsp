<%@ page contentType = "text/html; charset=UTF-8" %>
<!-- 알림 (헤더 종 아이콘 data-tta="alarm") -->
<div class="pop-type-full" data-ttatg="alarm">
	<div class="part-wrap">
		<div class="part-head">
			<h1 class="part-title">알림</h1>
			<button type="button" class="part-close" data-tta="alarm">닫기</button>
		</div>
		<div class="part-cont">
			<div class="noti">
				<!-- 알림 수신 언어 -->
				<div class="noti-lang">
					<div>
						<h3 class="tit">알림 수신 언어</h3>
						<p class="desc">선택한 언어로 새 알림(푸시알림함)이 발송됩니다.</p>
					</div>
					<div class="seg-toggle" role="group" aria-label="알림 수신 언어">
						<button type="button" class="active" aria-pressed="true">국문</button>
						<button type="button" aria-pressed="false">영문</button>
					</div>
				</div>
			
				<!-- 알림 목록 -->
				<div class="noti-head">
					<p class="list-count">전체 <em>7</em></p>
					<button type="button" class="btn-del-all">전체삭제</button>
				</div>
				<ul class="noti-list">
					<li>
						<div class="txt">
							<p class="subject">'마케팅 잘하기' 수강신청이 완료되었습니다.</p>
							<p class="date">2025-09-22 10:09</p>
						</div>
						<button type="button" class="btn-s-gray">삭제</button>
					</li>
					<li>
						<div class="txt">
							<p class="subject">월마트가 '블록체인에 주목하는 이유는?' 학습이 완료되었습니다.</p>
							<p class="date">2025-09-22 10:09</p>
						</div>
						<button type="button" class="btn-s-gray">삭제</button>
					</li>
					<li class="read">
						<div class="txt">
							<p class="subject">'리더십 역량강화' 과정 결재가 승인되었습니다.</p>
							<p class="date">2025-09-21 16:42</p>
						</div>
						<button type="button" class="btn-s-gray">삭제</button>
					</li>
					<li class="read">
						<div class="txt">
							<p class="subject">설문 '하반기 교육 만족도 조사'가 등록되었습니다.</p>
							<p class="date">2025-09-20 09:30</p>
						</div>
						<button type="button" class="btn-s-gray">삭제</button>
					</li>
					<li class="read">
						<div class="txt">
							<p class="subject">'비즈 회화 바이블' 교육 일정이 변경되었습니다.</p>
							<p class="date">2025-09-18 14:15</p>
						</div>
						<button type="button" class="btn-s-gray">삭제</button>
					</li>
					<li class="read">
						<div class="txt">
							<p class="subject">FC진단 결과가 등록되었습니다.</p>
							<p class="date">2025-09-15 11:00</p>
						</div>
						<button type="button" class="btn-s-gray">삭제</button>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
