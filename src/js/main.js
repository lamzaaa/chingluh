/*==================== INIT SWIPER ====================*/
const initSwiper = () => {
	let myswiper = new Swiper(".home-banner .swiper-container", {
		spaceBetween: 0,
		loop: true,
		effect: "fade",
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
		speed: 2000,
		autoplay: {
			deplay: 3000,
			disableOnInteraction: false,
		},
	});
	let pageBanner = new Swiper(".page-banner .swiper-container", {
		spaceBetween: 0,
		loop: true,
		pagination: {
			el: ".page-banner .swiper-pagination",
			clickable: true,
		},
		speed: 2000,
		// autoplay: {
		// 	deplay: 3000,
		// 	disableOnInteraction: false,
		// },
	});
	let home_4 = new Swiper(".home-4 .swiper-partner .swiper-container", {
		loop: false,
		speed: 2000,
		loop: true,
		slidesPerView: 2,
		spaceBetween: 10,
		autoplay: {
			deplay: 3000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".home-4 .swiper-pagination",
			type: "progressbar",
		},
		breakpoints: {
			580: {
				slidesPerView: 2.8,
				spaceBetween: 25,
			},
			1280: {
				slidesPerView: 3.8,
				spaceBetween: 30,
			},
		},
	});
	let newsRelated = new Swiper(".swiper-news-related .swiper-container", {
		loop: false,
		speed: 2000,
		loop: true,
		slidesPerView: 2,
		spaceBetween: 10,
		autoplay: {
			deplay: 3000,
			disableOnInteraction: false,
		},
		// pagination: {
		// 	el: '.home-4 .swiper-pagination',
		// },
		breakpoints: {
			580: {
				slidesPerView: 2,
				spaceBetween: 15,
			},
			1280: {
				slidesPerView: 3,
				spaceBetween: 30,
			},
		},
	});
	$(".tab-panel").each(function (index, element) {
		var $this = $(this);
		$this.find(".gallery-tops").addClass("instance-gallery-top-" + index);
		$this
			.find(".gallery-thumbs")
			.addClass("instance-gallery-thumbs-" + index);
		$this
			.find(".swiper-button-prev")
			.addClass("swiper-button-prev-" + index);
		$this
			.find(".swiper-button-next")
			.addClass("swiper-button-next-" + index);
		$this.find(".swiper-pagination").addClass("swiper-pagination-" + index);
		var galleryThumbs = new Swiper(".instance-gallery-thumbs-" + index, {
			spaceBetween: 30,
			slidesPerView: 1,
			loop: false,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			observer: true,
			observeParents: true,
		});
		var galleryTop = new Swiper(".instance-gallery-top-" + index, {
			observer: true,
			observeParents: true,
			spaceBetween: 0,
			loop: false,
			navigation: {
				nextEl: ".swiper-button-next-" + index,
				prevEl: ".swiper-button-prev-" + index,
			},
			thumbs: {
				swiper: galleryThumbs,
			},
		});
	});
	let ourLocation = new Swiper(".wrapper-slide-location .swiper-container", {
		observer: true,
		observeParents: true,
		loop: true,
		navigation: {
			nextEl: ".wrapper-slide-location .swiper-button-next",
			prevEl: ".wrapper-slide-location .swiper-button-prev",
		},
	});
	let newsOther = new Swiper(".other-slide .swiper-container", {
		loop: false,
		speed: 2000,
		loop: true,
		spaceBetween: 30,
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 30,
			},
			576: {
				slidesPerView: 2,
				spaceBetween: 30,
			},
			1025: {
				slidesPerView: 3,
				spaceBetween: 30,
			},
		},
		navigation: {
			nextEl: ".other-slide .swiper-button-next",
			prevEl: ".other-slide .swiper-button-prev",
		},
	});
	let facilities = new Swiper(".wrap-slide-facilities .swiper-container", {
		loop: true,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".wrap-slide-facilities .swiper-button-next",
			prevEl: ".wrap-slide-facilities .swiper-button-prev",
		},
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 30,
				centeredSlides: false,
			},
			576: {
				slidesPerView: 2,
				spaceBetween: 30,
				centeredSlides: false,
			},
			768: {
				slidesPerView: 3,
				centeredSlides: true,
			},
		},
	});
};
/*==================== SET BACKGROUND BANNER ====================*/
const setBackgroundElement = () => {
	$("[setBackground]").each(function () {
		let background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		let background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
};
/*==================== SHOW SCROLL TOP ====================*/
const scrollTop = () => {
	$(window).scroll(function () {
		if ($(this).scrollTop() > 50) {
			$("#scroll-top").slideDown().show(500);
		} else {
			$("#scroll-top").slideUp().hide(500);
		}
	});

	$("#scroll-top").on("click", function (e) {
		e.preventDefault();
		$("html,body").animate({
			scrollTop: 0,
		});
	});
};

/*==================== MAIN MENU SCROLL ====================*/
const headerScroll = () => {
	$(".header").clone().addClass("header-2").insertAfter(".header");
	$(window).scroll(function () {
		if ($(this).scrollTop() > 50) {
			$("header").addClass("active");
			$("header .header:first-child").addClass("header-1");
		} else {
			$("header").removeClass("active");
		}
	});
};
/*==================== TOGGLE MENU ====================*/
const toggleMenu = () => {
	let btnOpen = $("header .toggle-menu");
	let menu = $(".wrap-menu");
	let btnClose = $(".btn-close");
	let overlay = $("#overlay");
	// -----Open Menu-----
	btnOpen.on("click", function () {
		menu.addClass("active");
		overlay.addClass("active");
	});
	// -----Close Menu-----
	btnClose.on("click", function () {
		if (menu.hasClass("active")) {
			menu.removeClass("active");
			overlay.removeClass("active");
		}
		if ($(".primary-menu li").hasClass("dropdown")) {
			$(".primary-menu li.dropdown").removeClass("show-sub");
			$(".primary-menu li.dropdown .title").next().slideUp();
		}
	});
	// Click OutSize to Close Popup
	$(window).click(function (e) {
		if (
			!btnOpen.is(e.target) &&
			btnOpen.has(e.target).length === 0 &&
			!menu.is(e.target) &&
			menu.has(e.target).length === 0
		) {
			menu.removeClass("active");
			overlay.removeClass("active");
		}
	});
};
/*==================== TOGGLE SEARCH ====================*/
const toggleSearch = () => {
	let btnSearch = $("header .search");
	let wrapSearch = $("header .wrap-search");
	let wrapSearchChild = $("header .wrap-search *");
	var heightHeader = $(".header").outerHeight();
	$("header .wrap-search").css("top", heightHeader);
	// -----Open Search-----
	btnSearch.on("click", function () {
		wrapSearch.toggleClass("active");
	});
	// Click OutSize to Close Popup
	$(window).click(function (e) {
		if (
			!btnSearch.is(e.target) &&
			btnSearch.has(e.target).length === 0 &&
			!wrapSearch.is(e.target) &&
			wrapSearch.has(e.target).length === 0
		) {
			wrapSearch.removeClass("active");
		}
	});
};
/*==================== MENU DROPDOWN ====================*/
const dropdownMenu = () => {
	$(".primary-menu li .title").on("click", function () {
		if ($(".primary-menu li").hasClass("dropdown")) {
			$(this).parent(".dropdown").toggleClass("show-sub");
			$(this).next().slideToggle();
		}
		$(".primary-menu li .title")
			.not(this)
			.parent(".dropdown")
			.removeClass("show-sub");
		$(".primary-menu li .title").not(this).next().slideUp();
	});
};
/*==================== 	CHECK LAYOUT BANNER ====================*/
const checkLayoutBanner = () => {
	const pagesBanner = $("#pagebanner");
	const heightHeader = $("header .header ").outerHeight();
	const mainBanner = $("#home-banner");
	const pageNewsDetail = $(".news-detail-page");
	if (mainBanner.length >= 1) {
		$("main").css("padding-top", heightHeader);
	} else if (pageNewsDetail.length >= 1 || pagesBanner.length == 0) {
		$("main").css("padding-top", heightHeader);
	} else if ($(window).width() < 992 && pagesBanner.length >= 1) {
		$("main").css("padding-top", heightHeader);
	}
};
/*==================== 	CONTAINER OFF LEFT OR RIGHT ====================*/
const containerOffset = () => {
	let containerLeft = $("body .container").css("margin-left");
	let container = $("body .container").css("margin-right");
	$(".home-4 .no-container").css("margin-left", containerLeft);
};
/*==================== 	SCROLL TO DIV ====================*/
const scrollToDiv = () => {
	$(".btn-scrolldown").click(function (e) {
		e.preventDefault();
		$("html,body").animate(
			{
				scrollTop: $(".home-3").offset().top,
			},
			"slow"
		);
	});
};
const tabList = () => {
	let theTabs = $(".nav-tabs li");
	let i;

	function theTabClicks(tabClickEvent) {
		let clickedTab = tabClickEvent.currentTarget;
		let tabParent =
			tabClickEvent.currentTarget.parentNode.parentNode.parentNode;
		let theTabs = tabParent.querySelectorAll(".nav-tabs li");
		for (let i = 0; i < theTabs.length; i++) {
			theTabs[i].classList.remove("active");
		}

		clickedTab.classList.add("active");
		tabClickEvent.preventDefault();
		let contentPanes = tabParent.querySelectorAll(".tab-panel");
		for (i = 0; i < contentPanes.length; i++) {
			contentPanes[i].classList.remove("active");
		}
		let anchorReference = tabClickEvent.target;
		let activePaneId = anchorReference.getAttribute("href");
		let activePane = tabParent.querySelector(activePaneId);
		activePane.classList.add("active");
	}
	for (i = 0; i < theTabs.length; i++) {
		theTabs[i].addEventListener("click", theTabClicks);
	}
};
/*======================PHAN TRANG=================================*/
const phantrang = () => {
	$(".modulepager")
		.find(".pagination")
		.find("li>a.NextPage, li>a.LastPage, li>a.BackPage, li>a.FirstPage")
		.parent()
		.hide();
};
const formPoup = () => {
	$(
		"#popup-form .wrap-form .qupload .RadAsyncUpload .ruInputs li .ruFileWrap input"
	).attr("value", "Upload file");
};
/*==================== LOAD FUNCTION ====================*/
$(document).ready(function () {
	AOS.init({
		once: true,
		mobile: false,
		duration: 1500,
		offset: 200,
		delay: 150,
	});
	AOS.refresh();
	initSwiper();
	setBackgroundElement();
	headerScroll();
	scrollTop();
	toggleMenu();
	toggleSearch();
	dropdownMenu();
	checkLayoutBanner();
	containerOffset();
	$(window).resize(containerOffset);
	scrollToDiv();
	tabList();
	phantrang();
	formPoup();
});
