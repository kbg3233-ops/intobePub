$(function () {
	$(".h-tab").hTab(); // 헤더 탭 활성 위치로 스크롤
	$(".seg-toggle").segToggle(); // 선택 토글
});

// 선택 토글
$.fn.segToggle = function () {
	return this.each(function () {
		var $btn = $(this).find("button");

		$btn.on("click", function () {
			$btn.removeClass("active").attr("aria-pressed", "false");
			$(this).addClass("active").attr("aria-pressed", "true");
		});
	});
};

// 시안(375) px → 현재 화면 px (CSS의 --px와 동일, 최대 폭 --m-max-w)
function appPx(px) {
	var maxW = parseFloat(getComputedStyle(document.documentElement).getPropertyValue("--m-max-w")) || 480;

	return +(px * Math.min(window.innerWidth, maxW) / 375).toFixed(2);
}

// 헤더 탭
$.fn.hTab = function () {
	return this.each(function () {
		var $list = $(this).find("ul"),
			$active = $list.find(".active");

		if ($active.length) $list.scrollLeft($active.position().left - parseFloat($list.css("padding-left")));
	});
};
