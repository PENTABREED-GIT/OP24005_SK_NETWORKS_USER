<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>SK Networks</title>
	<%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			frontCommon.Html.reset();
		});
	</script>

	<script src="/assets/js/lenis.js"></script>
	<script>
        document.addEventListener("DOMContentLoaded", () => {
            const intro = document.querySelector(".section.intro")
            const ourEsg = intro.querySelector(".our-esg")
            const company = document.querySelector(".section.company")
            const subsidiary = company.querySelector(".subsidiary")
            const network = company.querySelector(".network")
            const media = document.querySelector(".section.media")
            let press = media.querySelector(".press-media")
            const sns = media.querySelector(".sns-media")
            const investment = document.querySelector(".section.investment")
    
            intro.classList.add("active1")
            setTimeout(() => {
                intro.classList.add("active2")
            }, 1500);
    
            const io = new IntersectionObserver(entries => {
                entries.forEach(entry => {
                    const _width = window.innerWidth
                    const intro = entry.target.closest(".intro")
                    if(_width >= 1024) {
                        if(entry.intersectionRatio > 0.5) {
                            intro.classList.add("active3")
                        } else {
                            intro.classList.remove("active3")
                        }
                    } else {
                        if(entry.intersectionRatio > 0.1) {
                            intro.classList.add("active3")
                        } else {
                            intro.classList.remove("active3")
                        }
                    }
                })
            }, {
                threshold: [0.1, 0.5]
            })
    
            const io2 = new IntersectionObserver(entries => {
                entries.forEach(entry => {
                    const _width = window.innerWidth
                    const company = entry.target
                    if(_width >= 1024) {
                        if(entry.intersectionRatio > 0.2) {
                            intro.classList.add("active4")
                            company.classList.add("active1")
                        } else {
                            company.classList.remove("active1")
                            intro.classList.remove("active4")
                        }
                    } else {
                        if(entry.intersectionRatio > 0.1) {
                            intro.classList.add("active4")
                            company.classList.add("active1")
                        } else {
                            company.classList.remove("active1")
                            intro.classList.remove("active4")
                        }
                    }
                })
            }, {
                threshold: [0.1, 0.2]
            })
    
            const io3 = new IntersectionObserver(entries => {
                entries.forEach(entry => {
                    const _width = window.innerWidth
                    if(_width >= 1024) {
                        if(entry.intersectionRatio > 0.4) {
                            company.classList.remove("active4")
                            company.classList.add("active2")
                        }
                    } else {
                        if(entry.intersectionRatio > 0.2) {
                            company.classList.add("active2")
                        }
                    }
                    if(!entry.isIntersecting) {
                        company.classList.remove("active2")
                    }
                })
            }, {
                threshold: [0.2, 0.4]
            })
    
            const io6 = new IntersectionObserver(entries => {
                entries.forEach(entry => {
                    if(entry.intersectionRatio > 0.1) {
                        press.style.top = window.innerHeight - press.offsetHeight + "px"
                        media.classList.add("active1")
                    } else {
                        media.classList.remove("active1")
                    }
                })
            }, {
                threshold: [0.1]
            })
    
            const io7 = new IntersectionObserver(entries => {
                entries.forEach(entry => {
                    if(entry.intersectionRatio > 0.1) {
                        investment.classList.add("active1")
                    } else {
                        investment.classList.remove("active1")
                    }
                })
            }, {
                threshold: [0.1]
            })
    
            io.observe(ourEsg)
            io2.observe(company)
            io3.observe(network)
            io6.observe(media)
            io7.observe(investment)
    
            let _width = window.innerWidth
            let pressSwiper = undefined;
    
            function initPressSwiper() {
                if(_width >= 1024 && pressSwiper == undefined) {
                    pressSwiper = new Swiper(".press-swiper", {
                        slidesPerView: "auto",
                        freeMode: true,
                        scrollbar: {
                            el: ".swiper-scrollbar",
                            draggable: true,
                        }
                    });
                } else if(_width < 1024 && pressSwiper != undefined) {
                    pressSwiper.destroy();
                    pressSwiper = undefined;
                }
            }
            initPressSwiper();
            window.addEventListener("resize", () => {
                _width = window.innerWidth;
                initPressSwiper();
                company.classList.remove("active3")
                media.classList.remove("active1")
                media.classList.remove("active2")
                sns.style.marginTop = "0"
            })
    
            new Swiper(".section-content.esg .swiper", {
                slidesPerView: "auto",
                freeMode: true,
            });
    
            new Swiper(".section.media .sns-media .swiper", {
                slidesPerView: "auto",
                freeMode: true,
            });
        });
    </script>
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div class="modal-display">
	<div class="modal notice" id="modalNotice1">
		<div class="modal-inner modal-dialog">
			<div class="modal-area">
				<div class="modal-wrap">
					<div class="modal-body">
						<div class="section">
							<div class="section-wrap">
								<div class="section-head">
									<em class="section-subject"><span class="section-name">Dividend Notice</span></em>
								</div>
								<div class="section-body">
									<p class="para">
										FY 2024 Dividend Inquiry Service
									</p>
									<p class="para">
										Service Period: ’25.04.11 AM 9:00 ~ ’25.4.25 PM 6:00
									</p>
								</div>
								<div class="section-util">
									<div class="btn-display design1 case1 align3">
										<div class="btn-area">
											<a class="btn design1 case1 type1 color1" href="https://sknetworks.dividend.im" target="_blank" tabindex="1"><span class="btn-text">Learn more</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form checkbox design1 case1 type1">
							<div class="checkbox-list">
								<div class="checkbox-item">
									<label for="checkbox1">
										<input type="checkbox" name="temp" value="chk1" id="checkbox1" tabindex="2">
										<span class="option">Do not open for a day</span>
									</label>
								</div>
							</div>
						</div>
						<div class="btn-display design1 case1 align3">
							<div class="btn-area">
								<a href="javascript:void(0);" onclick="closePop('modalNotice1');" class="btn design3 case2 type1 color4 ar-icon-close modal-close" tabindex="3"><span class="btn-text">close</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="wrap" class="main">
	<%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
	<header class="transparent" id="header">
		<%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
	</header>
	<!-- main -->
	<div class="sk-main" id="main">
		<div class="main-inner">
			<section class="section intro">
				<div class="section-wrap">
                    <div class="background intro-video">
                        <video preload="auto" autoplay loop muted playsinline poster="/assets/images/main/poster-main-intro1.png" src="/assets/movies/bg-main-intro1.mp4"></video>
                    </div>
					<div class="section-content our-business">
                        <div class="content-inner">
                            <div class="section-head">
                                <h2 class="section-name">
                                    AI for All, <br>Powered by SK Networks
                                </h2>
                            </div>
                            <div class="section-body">
                                <p class="para">
                                    SK Networks is paving the way for artificial <br>
                                    intelligence that opens up new possibilities in our <br>
                                    daily lives, ensuring that everyone can benefit.
                                </p>
                            </div>
                            <div class="section-util">
                                <a class="btn design3 case1 type1 color3 ar-icon-arrow-right2-bg" href="/${LANG}/business/summary">
                                    <span class="btn-text">Business</span>
                                </a>
                            </div>
                        </div>
					</div>
					<div class="section-content our-esg">
						<div class="content-background">
							<div class="figure-bundle1">
								<span class="figure1"></span>
								<span class="figure2"></span>
								<span class="figure3"></span>
							</div>
							<div class="figure-bundle2">
								<span class="figure4"></span>
								<span class="figure5"></span>
								<span class="figure6"></span>
							</div>
						</div>
						<div class="content-inner">
							<div class="section-head">
								<h3 class="section-name">Responsibility<br>for Sustainability</h3>
							</div>
							<div class="section-body">
								<p class="para">
									We will bring our vision as an AI company to life by implementing efficient ESG practices and partnering with diverse stakeholders to build a sustainable future.
								</p>
							</div>
							<div class="section-util">
								<a class="btn design3 case1 type1 color3 ar-icon-arrow-right2-bg" href="/${LANG}/esg">
									<span class="btn-text">Sustainability</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="section company">
				<div class="section-wrap">
					<div class="section-content subsidiary">
						<div class="content-background">
							<video preload="auto" autoplay loop muted playsinline poster="/assets/images/main/poster-main-company1.png" src="/assets/movies/bg-main-company1.mp4"></video>
						</div>
						<div class="content-inner">
							<div class="section-head">
								<h3 class="split-wrap1">
                                    <span class="split pc-only">SK Networks is a global AI company</span>
                                    <span class="split mo-only">SK Networks is a global AI</span>
                                </h3>
                                <h3 class="split-wrap2">
                                    <span class="split pc-only">dedicated to creating future value</span>
                                    <span class="split mo-only">company dedicated to creating</span>
                                </h3>
                                <h3 class="split-wrap3">
                                    <span class="split pc-only">through AI.</span>
                                    <span class="split mo-only">future value through AI.</span>
                                </h3>
							</div>
							<div class="section-body">
								<video preload="auto" autoplay loop muted playsinline src="/assets/movies/bg-main-company-logo-en_20250711.mp4"></video>
							</div>
						</div>
					</div>
					<div class="section-content network">
						<div class="content-inner">
							<div class="section-head">
								<div class="section-subject">
									<h3 class="section-name">Transitioning to an<br>AI-Centric Business Model</h3>
								</div>
								<p class="section-summary">
									We will achieve sustainable growth through AI-driven business model innovation and investment in promising future technologies.
								</p>
							</div>
                            <div class="section-body">
                                <ul class="board-list">
                                    <li class="item global-investment">
                                        <div class="board-head">
                                            <h3 class="board-name">Global Investment</h3>
                                        </div>
                                        <div class="board-body">
                                            <p class="para">Investing in future opportunities by leveraging our global network and portfolio management expertise</p>
                                        </div>
                                    </li>
                                    <li class="item infocom">
                                        <div class="board-head">
                                            <h3 class="board-name">ICT</h3>
                                        </div>
                                        <div class="board-body">
                                            <p class="para">Connecting people and<br>AI through ICT devices</p>
                                        </div>
                                    </li>
                                    <li class="item hotel">
                                        <div class="board-head">
                                            <h3 class="board-name">Hotels&Resorts</h3>
                                        </div>
                                        <div class="board-body">
                                            <p class="para">Beyond Entertainment,<br>Elevating Excitement</p>
                                        </div>
                                    </li>
                                    <li class="item rental">
                                        <div class="board-head">
                                            <h3 class="board-name">Wellness Appliance</h3>
                                        </div>
                                        <div class="board-body">
                                            <p class="para">Promoting healthy, convenient,<br>and eco-friendly lifestyles</p>
                                        </div>
                                    </li>
                                    <li class="item mobility">
                                        <div class="board-head">
                                            <h3 class="board-name">Mobility</h3>
                                        </div>
                                        <div class="board-body">
                                            <p class="para">Innovating with AI<br>to offer differentiated mobility services</p>
                                        </div>
                                    </li>
                                    <li class="item global-trading">
                                        <div class="board-head">
                                            <h3 class="board-name">Global Trading</h3>
                                        </div>
                                        <div class="board-body">
                                            <p class="para">Engaging in trade focused on chemicals and delivering value to our business partners</p>
                                        </div>
                                    </li>
									<li class="item ai">
										<div class="board-head">
											<h3 class="board-name">AI</h3>
										</div>
										<div class="board-body">
											<p class="para">Bringing AI Technology<br> Closer to You</p>
										</div>
									</li>
                                </ul>
                            </div>
						</div>
					</div>
				</div>
			</section>
			<section class="section media">
				<div class="section-wrap">
					<div class="section-content press-media">
						<div class="content-inner">
							<div class="section-head">
								<div class="section-subject">
									<h3 class="section-name">Press Media</h3>
								</div>
								<p class="section-summary">
                                    Explore the future with SK Networks’ latest updates and discover what tomorrow holds.
                                </p>
							</div>
							<div class="section-body">
								<div class="swiper press-swiper">
									<ul class="swiper-wrapper">
										<c:forEach items="${pressList}" var="item" varStatus="status">
											<c:if test="${status.index < 7}">
												<li class="swiper-slide">
													<a href="/${LANG}/pr/news-room/<c:out value="${item.uid}"/>" class="link">
														<div class="swiper-head">
															<div class="img-wrap">
																<c:choose>
																	<c:when test="${not empty item.addedFile}">
																		<img src="<c:out value="${item.addedFile}"/>" alt="<c:out value="${item.description}"/>">
																	</c:when>
																	<c:otherwise>
																		<img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="ir news thumbnail image">
																	</c:otherwise>
																</c:choose>
															</div>
														</div>
														<div class="swiper-body">
															<span class="swiper-caption">Press</span>
															<p class="para"><c:out value="${item.title}"/></p>
															<span class="date"><c:out value="${item.regDate}"/></span>
														</div>
													</a>
												</li>
											</c:if>
										</c:forEach>
									</ul>
									<div class="swiper-scrollbar"></div>
								</div>
							</div>
							<div class="section-util">
								<a class="btn design3 case1 type1 color1 ar-icon-arrow-right2-bg report" href="/${LANG}/pr/news-room?tab=1">
                                    <span class="btn-text">Go to the Press Release</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="section investment">
				<div class="section-wrap">
					<div class="content-inner">
						<div class="section-head">
							<div class="section-subject">
								<h3 class="section-name">Investment</h3>
							</div>
						</div>
						<div class="section-body">
							<div class="board-list">
								<div class="board-item sk-stock">
									<iframe src="https://ir.gsifn.io/sknetworks/ir2_main_pc.html?koreng=2" title="SK Networks Stock Price" class="pc-only">
                                    </iframe>
                                    <iframe src="https://ir.gsifn.io/sknetworks/ir2_main_m.html?koreng=2" title="SK Networks Stock Price" class="mo-only"></iframe>
								</div>
								<div class="board-item stock-info">
									<a href="/${LANG}/ir/stock/stock-price-information" class="link">
										<div class="board-head">
                                            <h4 class="board-name">Stocks</h4>
										</div>
									</a>
								</div>
								<div class="board-item fina-info">
									<a href="/${LANG}/ir/financial-information/key-financial-facts" class="link">
										<div class="board-head">
											<h4 class="board-name">Finance</h4>
										</div>
									</a>
								</div>
								<div class="board-item ir">
									<div class="board-head">
										<img src="/assets/images/logo/logo-w-e.svg" class="sk-logo" alt="SK 네트웍스 로고">
									</div>
									<div class="board-body">
										<h4 class="board-name">IR Archives</h4>
										<div class="board-util">
											<a href="/${LANG}/ir/ir-data" class="ir-link">
												<span class="text">IR Letter & Research Report</span>
											</a>
											<a href="/${LANG}/ir/financial-information/audit-report" class="ir-link">
												<span class="text">Audit Report</span>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<!-- page-foot -->
	<footer id="footer">
		<%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
	</footer>
	<!-- //page-foot -->
</div>
<script>
	$(document).ready(function() {
		checkAndToggleModal('modalNotice1', '2025-04-10 09:00:00', '2025-04-25 18:00:00');
		// checkAndToggleModal('modalNotice1', '2025-04-08 09:00:00', '2100-04-10 24:00:00');
	});

	function checkAndToggleModal(id, startDateTime, endDateTime) {

		if(checkTodayHidePopup("hidePopup_"+id)) return;

		// 모달 오픈 시간
		var now = new Date();
		let startDate = new Date(startDateTime);
		let endDate = new Date(endDateTime);

		if (now >= startDate && now <= endDate) {
			openPop(id);
			$('.modal-display').addClass('show');
		}
	}

	function checkTodayHidePopup(id) {
		var nowTime = new Date().getTime();
		const hideUntil = localStorage.getItem(id);
		if (nowTime < hideUntil) {
			return true;
		} else {
			// 자정이 지나면 로컬 스토리지에서 항목을 제거
			localStorage.removeItem(id);
		}

		return false;
	}

	function openPop(id) {
		document.getElementById(id)?.classList.add('show');
	}

	function closePop(id) {
		// id 값이 존재하는지 먼저 확인
		if (!id || typeof id !== "string") {
			console.error("closePop 함수에 전달된 id 값이 잘못되었습니다!", id);
			return;
		}

		// console.log("닫기 버튼 클릭됨, ID:", id); // 디버깅 로그 출력

		// 해당 id를 가진 모달이 실제 존재하는지 확인
		const modal = document.getElementById(id);
		if (!modal) {
			console.error(`ID가 '${id}'인 모달을 찾을 수 없습니다.`);
			return;
		}

		// 모달 내부의 체크박스를 찾기
		const checkbox = modal.querySelector(`input[type="checkbox"]`);
		if (checkbox && checkbox.checked) {
			// "하루 동안 보지 않기" 기능 적용
			setHidePopup(id);
		}

		// 팝업 닫기
		modal.classList.remove('show');

		// 모든 팝업이 닫혔는지 확인 후, 배경도 닫기
		const openModals = document.querySelectorAll('.modal.show');
		if (openModals.length === 0) {
			document.querySelector('.modal-display').classList.remove('show');
		}
	}

	// "오늘 하루 보지 않기" 기능을 위한 함수
	function setHidePopup(id) {
		// 현재 날짜와 시간을 가져오기
		const now = new Date();

		// 자정 시간 계산
		const midnight = new Date(now.getFullYear(), now.getMonth(), now.getDate() + 1, 0, 0, 0);
		const timeUntilMidnight = midnight.getTime() - now.getTime();

		// 로컬 스토리지에 숨김 상태를 저장 (현재 시간 + 남은 시간)
		localStorage.setItem('hidePopup_' + id, now.getTime() + timeUntilMidnight);
	}

	function shouldHidePopup() {
		const hideUntil = localStorage.getItem('hidePopup_' + id);

		if (hideUntil) {
			const now = new Date().getTime();

			// 저장된 시간이 현재 시간보다 크면 팝업을 숨겨야 함
			if (now < hideUntil) {
				return true;
			} else {
				// 자정이 지나면 로컬 스토리지에서 항목을 제거
				localStorage.removeItem('hidePopup_' + id);
			}
		}

		return false;
	}

</script>
</body>

</html>