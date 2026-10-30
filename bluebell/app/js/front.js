$(function () {
	$(".h-tab").hTab(); // 헤더 탭 활성 위치로 스크롤
});

// 헤더 탭
$.fn.hTab = function () {
	return this.each(function () {
		var $list = $(this).find("ul"),
			$active = $list.find(".active");

		if ($active.length) $list.scrollLeft($active.position().left - parseFloat($list.css("padding-left")));
	});
};
