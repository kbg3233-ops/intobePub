<%@ page contentType ="text/html; charset=UTF-8" %>
<%@ include file="../inc/global_header.jsp" %>
<div class="login-wrap">
	<div class="pc">
		<div style="--dp: flex; --content-x: center; --items-y: center; --bg-c: var(--mdc); --h: 100%;">
			<img src="../images/img/img_logo_login.png">
		</div>
	</div>
	<div style="--bg-c: #f8f9ff; --dp: flex; --items-y: center; --content-x: center; --pd-x: 40px; --m-pd-x: var(--init-layout-padding)">
		<div style="--min-w: 369px; --m-min-w: 100%;">
			<h1 class="login-tit" style="font-family: Georgia;"><strong>Login</strong></h1>
			<div style="--mg-t: 60px; --m-mg-t: 2.78vw;">
				<h2 style="--ft-c: black;">아이디</h2>
				<div class="form-txt-type" style="--mg-t: 10px;">
					<input type="text" placeholder="사번을 입력하세요.">
				</div>

				<h2 style="--mg-t: 24px; --ft-c: black;">비밀번호</h2>
				<div class="form-txt-type" style="--mg-t: 10px; --m-mg-t: 1.67vw;">
					<input type="password" placeholder="비밀번호를 입력하세요!">
				</div>
			</div>
			<a href="#" class="btn-type btn-sz-01" style="--mg-t: 40px; --btn-w: 100%; --m-mg-t: 5.56vw;">로그인</a>
			<div style="--dp: flex; --content-x: space-between; --items-y: center; --mg-t: 20px; --m-mg-t: 2.78vw;">
				<div class="form-slt-chk-03">
					<input id="arvxg8ji5tr" type="checkbox" name="" value="">
					<label for="arvxg8ji5tr" class="part-slt-txt"><span class="part-icon"></span>사번저장</label>
				</div>
				<button type="button" class="btn-lnk">비밀번호 초기화</button>
			</div>
			<p style="--mg-t: 24px; --ft-s: 14px; --txt-a: center;">※ 최초 접속시 비밀번호는 사번을 입력해 주세요.</p>
		</div>
	</div>
</div>
<%@ include file="../inc/global_footer.jsp" %>