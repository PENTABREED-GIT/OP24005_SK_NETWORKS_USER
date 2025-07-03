<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<%
	// 현재 요청의 URI를 가져옵니다.
	String uri = request.getRequestURI();

	// 기본 언어를 ko로 설정합니다.
	String language = "ko";

	// URI에서 언어 코드를 추출합니다.
	if (uri.contains("/en/")) {
		language = "en";
	}
%>
<head>
	<meta charset="utf-8">
	<title>SK Networks</title>
	<%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
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

<body>
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<!-- Modal -->
<div class="modal-display">
	<div class="modal notice" id="modalNotice1">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-body">
                        <div class="section">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <%--<em class="section-subject"><span class="section-name">정기주주총회 소집공고<br> <span class="small">(제72기 정기주주총회)</span></span></em>--%>
                                    <em class="section-subject"><span class="section-name">SK네트웍스 배당 안내</span></em>
                                </div>
                                <div class="section-body">
                                    <p class="para">
										FY2024년 결산배당 조회 서비스
                                    </p>
                                    <p class="para">
										운영기간 : ’25.04.11 AM 9:00 ~ ’25.4.25 PM 6:00
									</p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case1 align3">
                                        <div class="btn-area">
                                            <a class="btn design1 case1 type1 color1" href="https://sknetworks.dividend.im" tabindex="1"><span class="btn-text">바로가기</span></a>
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
                                        <span class="option">하루 동안 보지 않기</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="btn-display design1 case1 align3">
                            <div class="btn-area">
                                <a href="javascript:void(0);" onclick="closePop('modalNotice1');" class="btn design3 case2 type1 color4 ar-icon-close modal-close" tabindex="3"><span class="btn-text">닫기</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<div class="modal notice" id="modalNotice2">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-body">
                        <div class="section">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <em class="section-subject"><span class="section-name">Trading사업부 분할보고총회에<br> 갈음하는 공고</span></em>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        에스케이네트웍스 주식회사(이하 “에스케이네트웍스”)는 2024년 8월 7일 개최된 임시주주총회에서 다음과 같이 에스케이네트웍스가 영위하는 사업 중 Trading사업부문(화학제품 수출입업 등)을 물적분할하여 글로와이드 주식회사를 설립하기로 결의하였고, 이 결의에 따라 상법 소정의 분할 및 설립절차를 완료하였습니다. 이에 에스케이네트웍스는 상법 제530조의12, 제530조의11 및 제526조 제3항에 의거 분할보고총회를 이사회 결의 및 본 공고로 갈음하기로 이사회에서 결의함에 따라, 다음과 같이 분할의 경과를 보고 및 공고합니다.
                                    </p>
                                    <p class="para">
                                        세부사항은 전자공고를 통해 확인하시기 바랍니다.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case1 align3">
                                        <div class="btn-area">
                                            <a class="btn design1 case1 type1 color1" href="https://www.sknetworks.co.kr/ir/announcement/b4thrtzgvlZC8PSX" tabindex="4"><span class="btn-text">상세 내용 확인하기</span></a>
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
                                    <label for="checkbox2">
                                        <input type="checkbox" name="temp" value="chk1" id="checkbox2" tabindex="5">
                                        <span class="option">하루 동안 보지 않기</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="btn-display design1 case1 align3">
                            <div class="btn-area">
                                <a href="javascript:void(0);" onclick="closePop('modalNotice2');" class="btn design3 case2 type1 color4 ar-icon-close modal-close" tabindex="6"><span class="btn-text">닫기</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="wrap" class="main">
	<%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
	<header class="transparent" id="header">
		<%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
	</header>
	<!-- main -->
	<div class="sk-main" id="main">
		<div class="main-inner">
			<section class="section intro">
				<div class="section-wrap">
                    <div class="background intro-video">
                        <video preload="auto" autoplay loop muted playsinline poster="
                        /assets/images/main/poster-main-intro1.png" src="
                        /assets/movies/bg-main-intro1.mp4"></video>
                    </div>
					<div class="section-content our-business">
						<div class="content-inner">
							<div class="section-head">
                                <h2 class="section-name">
                                    우리 모두를 위한 AI, <br>SK네트웍스가 만들어갑니다.
                                </h2>
							</div>
                            <div class="section-body">
                                <p class="para">
                                    기존의 일상에 새로운 가능성을 열어주는 AI,<br>
                                    누구나 누릴 수 있도록 SK네트웍스가 함께합니다.
                                </p>
                            </div>
							<div class="section-util">
								<a class="btn design3 case1 type1 color3 ar-icon-arrow-right2-bg" href="/business/summary">
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
									AI Company로서의 비전을 현실화하고<br>
                                    효율적인 지속가능경영을 실천하며 <br class="mo-only">다양한 이해관계자들과 함께 <br class="mo-only">
                                    지속가능한 미래를 그려 나가겠습니다.
								</p>
							</div>
							<div class="section-util">
								<a class="btn design3 case1 type1 color3 ar-icon-arrow-right2-bg" href="/esg">
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
									<span class="split pc-only">SK네트웍스는</span>
                                    <span class="split mo-only">SK네트웍스는 AI를 통해</span>
								</h3>
								<h3 class="split-wrap2">
									<span class="split pc-only">AI를 통해 미래의 가치를 만들어 나가는</span>
                                    <span class="split mo-only">미래의 가치를 만들어 나가는</span>
								</h3>
								<h3 class="split-wrap3">
									<span class="split">글로벌 AI Company입니다.</span>
								</h3>
							</div>
							<div class="section-body">
								<video preload="auto" autoplay loop muted playsinline src="/assets/movies/bg-main-company-logo_20250703.mp4"></video>
							</div>
						</div>
					</div>
					<div class="section-content network">
						<div class="content-inner">
							<div class="section-head">
								<div class="section-subject">
									<h3 class="section-name">AI 중심의<br class="mo-only"> 비즈니스 모델로의 변화</h3>
								</div>
								<p class="section-summary">
									AI 기반의 비즈니스 모델 혁신과 미래 유망 기술 투자로 지속가능한 성장을 이뤄 가겠습니다.
								</p>
							</div>
							<div class="section-body">
								<ul class="board-list">
									<li class="item global-investment">
										<div class="board-head">
											<h3 class="board-name">글로벌 투자</h3>
										</div>
										<div class="board-body">
											<p class="para">글로벌 네트워크와 포트폴리오 관리 역량을<br> 바탕으로 미래 가능성에 투자합니다.</p>
										</div>
									</li>
									<li class="item infocom">
										<div class="board-head">
											<h3 class="board-name">정보통신</h3>
										</div>
										<div class="board-body">
											<p class="para">ICT 디바이스를 통해<br>사람과 AI를 연결합니다.</p>
										</div>
									</li>
									<li class="item hotel">
										<div class="board-head">
											<h3 class="board-name">호텔앤리조트</h3>
										</div>
										<div class="board-body">
											<p class="para">Beyond Entertainment,<br>Elevating Excitement</p>
										</div>
									</li>
									<li class="item rental">
                                        <div class="board-head">
                                            <h3 class="board-name">웰니스 가전</h3>
                                        </div>
                                        <div class="board-body">
                                            <p class="para">건강하고 편리한,<br>친환경적인 일상을 시작합니다.</p>
                                        </div>
                                    </li>
									<li class="item mobility">
										<div class="board-head">
											<h3 class="board-name">모빌리티</h3>
										</div>
										<div class="board-body">
											<p class="para">AI를 통해 더 차별화된<br>Mobility Service로 혁신합니다.</p>
										</div>
									</li>
									<li class="item global-trading">
										<div class="board-head">
											<h3 class="board-name">글로벌 트레이딩</h3>
										</div>
                                        <div class="board-body">
                                            <p class="para">화학제품 위주의 무역을 전개하며<br>비즈니스 파트너에게 가치를 전달합니다.</p>
                                        </div>
                                    </li>
									<li class="item ai">
										<div class="board-head">
											<h3 class="board-name">AI</h3>
										</div>
										<div class="board-body">
											<p class="para">인공지능 기술을<br> 우리 곁으로</p>
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
									내일을 향한 SK네트웍스의 최신소식을 통해<br class="mo-only"> 어떤 미래가 기다리고 있는지 만나보세요.
								</p>
							</div>
							<div class="section-body">
								<div class="swiper press-swiper">
									<ul class="swiper-wrapper">
										<c:forEach items="${pressList}" var="item" varStatus="status">
											<c:if test="${status.index < 7}">
												<li class="swiper-slide">
													<a href="/pr/news-room/<c:out value="${item.uid}"/>" class="link">
														<div class="swiper-head">
															<div class="img-wrap">
																<c:choose>
																	<c:when test="${not empty item.addedFile}">
																		<img src="<c:out value="${item.addedFile}"/>" alt="<c:out value="${item.description}"/>">
																	</c:when>
																	<c:otherwise>
																		<img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="Press Media thumbnail image">
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
								<a class="btn design3 case1 type1 color1 ar-icon-arrow-right2-bg report" href="/pr/news-room?tab=1">
									<span class="btn-text">보도자료 전체보기</span>
								</a>
							</div>
						</div>
					</div>
					<div class="section-content sns-media">
						<div class="content-inner">
							<div class="section-head">
								<h3 class="section-name">SNS Media</h3>
							</div>
							<div class="section-body">
								<div class="sns-newest">
									<c:forEach items="${mediaList}" var="item" varStatus="status">
										<c:if test="${status.index < 1}">
											<a href="<c:out value="${item.url}"/>" target="_blank" class="link">
												<div class="post-head">
													<div class="img-wrap">
														<img src="<c:out value="${item.thumbnailUrl}"/>" alt="">
													</div>
												</div>
												<div class="post-body">
													<span class="post-cate"><c:out value="${item.category}"/></span>
													<h4 class="post-name"><c:out value="${item.title}"/></h4>
													<p class="para"><c:out value="${ntUtil:toBr(ntUtil:removeHtml(item.contents))}"/></p>
												</div>
											</a>
										</c:if>
									</c:forEach>
								</div>
								<div class="sns-swiper swiper">
									<ul class="post-list swiper-wrapper">
										<c:forEach items="${mediaList}" var="item" varStatus="status">
											<c:if test="${status.index >= 1 && status.index < 4}">
												<li class="item swiper-slide">
													<a href="<c:out value="${item.url}"/>" target="_blank" class="link">
														<div class="post-head">
															<div class="img-wrap">
																<img src="<c:out value="${item.thumbnailUrl}"/>" alt="">
															</div>
														</div>
														<div class="post-body">
															<span class="post-cate"><c:out value="${item.category}"/></span>
															<h4 class="post-name"><c:out value="${item.title}"/></h4>
														</div>
													</a>
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
							<div class="section-util">
								<a class="btn design3 case1 type1 color1 ar-icon-arrow-right2-bg" href="/pr/news-room?tab=2">
									<span class="btn-text">소셜미디어 전체보기</span>
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
									<iframe src="https://ir.gsifn.io/sknetworks/ir2_main_pc.html?koreng=1" title="SK네트웍스 주가" class="pc-only">
                                    </iframe>
                                    <iframe src="https://ir.gsifn.io/sknetworks/ir2_main_m.html?koreng=1" title="SK네트웍스 주가" class="mo-only"></iframe>
								</div>
								<div class="board-item stock-info">
									<a href="/ir/stock/stock-price-information" class="link">
										<div class="board-head">
											<h4 class="board-name">주식정보</h4>
										</div>
									</a>
								</div>
								<div class="board-item fina-info">
									<a href="/ir/financial-information/key-financial-facts" class="link">
										<div class="board-head">
											<h4 class="board-name">재무정보</h4>
										</div>
									</a>
								</div>
								<div class="board-item ir">
									<div class="board-head">
										<img src="/assets/images/logo/logo-w-k.svg" class="sk-logo" alt="SK 네트웍스 로고">
									</div>
									<div class="board-body">
										<h4 class="board-name">IR자료실</h4>
										<div class="board-util">
											<a href="/ir/ir-data" class="ir-link">
												<span class="text">경영 실적 발표</span>
											</a>
											<a href="/ir/financial-information/audit-report" class="ir-link">
												<span class="text">감사보고서</span>
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
		<%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
	</footer>
	<!-- //page-foot -->
</div>
<script>
	$(document).ready(function() {
        checkAndToggleModal('modalNotice1', '2025-04-10 09:00:00', '2025-04-25 18:00:00');
        // checkAndToggleModal('modalNotice1', '2025-04-08 09:00:00', '2100-04-10 24:00:00');
        // checkAndToggleModal('modalNotice2', '2024-12-02 16:00:00', '2026-12-10 24:00:00');
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

    // function closePop(id) {
    //     // console.log('닫기 누름');
	//
    //     // 해당 팝업의 체크박스 선택
    //     const checkbox = document.getElementById(id);
	//
    //     if (checkbox && checkbox.checked) {
    //         // 팝업을 하루 동안 숨기도록 설정
    //         setHidePopup(id);
    //     }
	//
    //     // 특정 팝업만 닫기
    //     document.getElementById(id).classList.remove('show');
	//
    //     // 모든 팝업이 닫혔는지 확인
    //     const openModals = document.querySelectorAll('.modal.show'); // 아직 열려 있는 팝업들
    //     if (openModals.length === 0) {
    //         // 모든 팝업이 닫혔을 때만 실행
    //         $('.modal-display').removeClass('show');
    //     }
    // }

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
