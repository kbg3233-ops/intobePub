$(function () {
	$(".h-tab").hTab(); // 헤더 탭 활성 위치로 스크롤
	$(".seg-toggle").segToggle(); // 선택 토글
	$(document).tta(); // 활성화 토글 (팝업 열기/닫기)
});

// 활성화 토글 : data-tta="이름" 클릭 시 data-ttatg="이름"에 .active 토글 (PC front.js와 같은 방식)
$.fn.tta = function () {
	$(this).on("click", "[data-tta]", function (e) {
		e.stopPropagation();
		$("[data-ttatg='" + $(this).data("tta") + "']").toggleClass("active");
	});
};

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
