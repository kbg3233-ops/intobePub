<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ include file="../inc/global_header.jsp" %>
<main class="login">
	<h1 class="logo-edu"><img src="../images/img/img_logo.svg" alt="Bluebell Edu"></h1>

	<div class="login-form">
		<div class="login-head">
			<h2 class="login-tit">Login</h2>
			<button type="button" class="btn-lang"><img src="../images/ico/ico_lang.svg" alt="언어 선택"></button>
		</div>

		<div class="login-field">
			<label for="loginId">아이디</label>
			<input type="text" id="loginId" class="form-txt" placeholder="사번을 입력하세요.">
		</div>
		<div class="login-field">
			<label for="loginPw">비밀번호</label>
			<input type="password" id="loginPw" class="form-txt" placeholder="비밀번호를 입력하세요.">
		</div>

		<a href="#" class="btn-l-primary">로그인</a>

		<div class="login-util">
			<label class="form-chk"><input type="checkbox">자동 로그인</label>
			<button type="button" class="btn-more">비밀번호 초기화</button>
		</div>

		<p class="login-note">※ 최초 접속시 비밀번호는 사번을 입력해 주세요.</p>
	</div>
</main>
<%@ include file="../inc/global_footer.jsp" %>
