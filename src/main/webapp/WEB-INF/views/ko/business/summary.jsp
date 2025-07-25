<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>사업 개요 &lt; Business &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            Accordion();

            const dataItem = document.querySelectorAll(".business-profile .data-item")
            dataItem.forEach(item => {
                item.addEventListener("click", function(e) {
                    e.preventDefault();
                    
                    const href = item.querySelector("a").getAttribute('href')
                    const sections = document.querySelectorAll('.section')
                    for(const section of sections) {
                        if(section.classList.contains(href.substring(1))) {
                            const scrollY = window.scrollY;
                            section.querySelector('a, button').focus()
                            window.scrollTo(0, scrollY); 
                            document.querySelector(href).scrollIntoView({
                                behavior: 'smooth'
                            })
                        }
                    }
                })
            });
        });
    </script>
</head>

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main business overview" id="main">
        <div class="main-inner">
            <div class="local design1 case2">
                <div class="local-head design4" data-local-animation="case-1">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">사업 개요</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Business</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">AI 기반의 비즈니스 모델 혁신을 통해<br class="pc-only"> 더 나은 미래로 나아갑니다.</h3>
                            <p class="local-summary">고객가치를 혁신의 경험으로, 사회문제를 창의적 솔루션으로, 우리의 AI 기술이 더 큰 행복을 만들어가도록 더 나은 미래를 연결합니다.</p>
                        </div>
                    </div>
                    <div class="local-figure">
                        <video preload="auto" autoplay loop muted playsinline src="/assets/movies/bg-local-head-business-introduction.mp4"></video>
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head blind">사업 개요 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 align3 business-profile">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Business Profile</h4>
                                        <p class="section-summary">
                                            SK네트웍스는 사업분야별 인공지능(AI) 기술을 통해<br>
                                            더 나은 미래를 향한 도약을 준비하고 있습니다.
                                        </p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="data-display">
                                        <ul class="data-list">
                                            <li class="data-item invest">
                                                <a href="#invest">
                                                    <strong class="data-title">글로벌 투자</strong>
                                                </a>
                                            </li>
                                            <li class="data-item infocom">
                                                <a href="#infocom">
                                                    <strong class="data-title">정보통신</strong>
                                                </a>
                                            </li>
                                            <li class="data-item hotel">
                                                <a href="#hotel">
                                                    <strong class="data-title">호텔앤리조트</strong>
                                                </a>
                                            </li>
                                            <li class="data-item wellness">
                                                <a href="#wellness">
                                                    <strong class="data-title">AI 웰니스 플랫폼</strong>
                                                </a>
                                            </li>
                                            <li class="data-item mobility">
                                                <a href="#mobility">
                                                    <strong class="data-title">모빌리티</strong>
                                                </a>
                                            </li>
                                            <li class="data-item trading">
                                                <a href="#trading">
                                                    <strong class="data-title">글로벌 트레이딩</strong>
                                                </a>
                                            </li>
                                            <li class="data-item ai">
                                                <a href="#ai">
                                                    <strong class="data-title">인공지능(AI)</strong>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="invest" class="section design1 case4 type3 align3 invest">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">글로벌 투자</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        미래산업 투자
                                                        <a class="btn icon case1 arrow-right2-bg" href="/business/global-investment">
                                                            <span class="btn-text blind">글로벌 투자 페이지 바로가기</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">보유 사업 강화와 미래 사업 기회 발굴을 목표로 AI를 포함한 미래 성장 영역 중심으로 투자하고 있습니다.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">투자 영역</strong>
                                                            <p class="para">AI, Web 3, Sustainability</p>
                                                        </div>
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">Portfolio</strong>
                                                            <p class="para">총 37건 (직접투자 15건, 펀드투자 22건)</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="infocom" class="section design1 case4 type3 align3 infocom">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">정보통신</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="board-list">
                                        <li class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        ICT 마케팅
                                                        <a class="btn icon case1 arrow-right2-bg" href="/business/information-communication">
                                                            <span class="btn-text blind">정보통신 페이지 바로가기</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">통신 단말기 중심의 ICT유통 및 물류 사업을 수행하고 있습니다.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="accordion-display design1">
                                                            <div class="accordion-item">
                                                                <div class="accordion-head pc-only">
                                                                    <button type="button" class="btn design3 case2 type1 color4 ar-icon-arrow-down1
                                                                    " aria-controls="accordionCont1">
                                                                        <span class="btn-text">자세히 보기</span>
                                                                    </button>
                                                                </div>
                                                                <div class="accordion-body" id="accordionCont1">
                                                                    <div class="accordion-body-inner">
                                                                        <div class="board-item-sub">
                                                                            <strong class="board-name-sub">사업 영역</strong>
                                                                            <p class="para">휴대폰 단말기 도매, 물류 서비스, ICT Device/Accessory B2B 유통</p>
                                                                        </div>
                                                                        <div class="board-item-sub">
                                                                            <strong class="board-name-sub">FY2024 매출액</strong>
                                                                            <p class="para">4조 2,759억 원</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        민팃
                                                        <a class="btn icon case1 arrow-right2-bg" href="/business/mintit">
                                                            <span class="btn-text blind">민팃 페이지 바로가기</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">간편하고 신뢰할 수 있는 중고 ICT Device 플랫폼으로서 자원 순환을 선도합니다.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="accordion-display design1">
                                                            <div class="accordion-item">
                                                                <div class="accordion-head pc-only">
                                                                    <button type="button" class="btn design3 case2 type1 color4 ar-icon-arrow-down1
                                                                    " aria-controls="accordionCont2">
                                                                        <span class="btn-text">자세히 보기</span>
                                                                    </button>
                                                                </div>
                                                                <div class="accordion-body" id="accordionCont2">
                                                                    <div class="accordion-body-inner">
                                                                        <div class="board-item-sub">
                                                                            <strong class="board-name-sub">사업 영역</strong>
                                                                            <p class="para">AI 기반 중고폰 매입기 '민팃 ATM' 운영</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        엔코아
                                                        <a class="btn icon case1 arrow-right2-bg" href="/business/en-core">
                                                            <span class="btn-text blind">엔코아 페이지 바로가기</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">데이터 비즈니스 전문 기업으로서 기업의 지속가능한 데이터 관리와 활용을 지원합니다.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="accordion-display design1">
                                                            <div class="accordion-item">
                                                                <div class="accordion-head pc-only">
                                                                    <button type="button" class="btn design3 case2 type1 color4 ar-icon-arrow-down1
                                                                    " aria-controls="accordionCont3">
                                                                        <span class="btn-text">자세히 보기</span>
                                                                    </button>
                                                                </div>
                                                                <div class="accordion-body" id="accordionCont3">
                                                                    <div class="accordion-body-inner">
                                                                        <div class="board-item-sub">
                                                                            <strong class="board-name-sub">사업 영역</strong>
                                                                            <p class="para">Enterprise AI Platform, 데이터 컨설팅, 데이터 솔루션 DATAWARE™ 등</p>
                                                                        </div>
                                                                        <div class="board-item-sub">
                                                                            <strong class="board-name-sub">FY2024 매출액</strong>
                                                                            <p class="para">313억 원</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div id="hotel" class="section design1 case4 type3 align3 hotel">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">호텔앤리조트</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        워커힐 호텔앤리조트
                                                        <a class="btn icon case1 arrow-right2-bg" href="/business/hotel-and-resort">
                                                            <span class="btn-text blind">워커힐 호텔앤리조트 페이지 바로가기</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">고객 행복을 추구하는 국내 호텔 산업의 리더로서 입지를 공고히 하고 있습니다.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">브랜드</strong>
                                                            <p class="para">그랜드 워커힐 서울, 비스타 워커힐 서울, 더글라스 하우스, 다락휴, 인천공항 환승호텔</p>
                                                        </div>
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">FY2024 매출액</strong>
                                                            <p class="para">3,006억 원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="wellness" class="section design1 case4 type3 align3 wellness">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">AI 웰니스 플랫폼</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        SK인텔릭스
                                                        <a class="btn icon case1 arrow-right2-bg" href="/business/sk-intellix">
                                                            <span class="btn-text blind">SK인텔릭스 페이지 바로가기</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">고객의 삶이 건강하고 지속가능할 수 있도록 AI기술을 기반으로 혁신적인 솔루션을 만들어갑니다.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">사업영역</strong>
                                                            <p class="para">Health Platform, Wellness Robotics</p>
                                                        </div>
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">FY2024 매출액</strong>
                                                            <p class="para">8,443억 원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="mobility" class="section design1 case4 type3 align3 mobility">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">모빌리티</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        SK스피드메이트
                                                        <a class="btn icon case1 arrow-right2-bg" href="/business/skspeedmate">
                                                            <span class="btn-text blind">SK스피드메이트 페이지 바로가기</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">국내 Automotive Aftermarket No. 1 브랜드로서 자동차에 관한 다양한 서비스를 제공하고 있습니다.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">사업영역</strong>
                                                            <p class="para">자동차 경정비, 긴급출동 서비스, 자동차 용품 및 수입차 부품 유통 등</p>
                                                        </div>
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">FY2024 매출액</strong>
                                                            <p class="para">3,439억 원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="trading" class="section design1 case4 type3 align3 trading">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">글로벌 트레이딩</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        글로와이드
                                                        <a class="btn icon case1 arrow-right2-bg" href="/business/glowide">
                                                            <span class="btn-text blind">화학 제품 페이지 바로가기</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">50년 이상 이어온 수출입 역량으로 화학제품 위주의 무역을 전개하고 있습니다.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">사업영역</strong>
                                                            <p class="para">석유화학 제품 위주 무역</p>
                                                        </div>
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">FY2024 매출액</strong>
                                                            <p class="para">1조 6,172억 원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="ai" class="section design1 case4 type3 align3 ai">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">AI</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        PhnyX Lab
                                                        <a class="btn icon case1 arrow-right2-bg" href="/business/phnyx-lab">
                                                            <span class="btn-text blind">피닉스랩 (PhnyX Lab) 바로가기</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">미국 실리콘밸리에 설립된 PhnyX Lab(피닉스랩)은 AI 기반 서비스를 개발해 제공합니다.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">사업영역</strong>
                                                            <p class="para">AI 기술 및 서비스 개발, 마켓 테스트, AI 서비스 검증</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
        localAnimations_Case01();
        sectionAnimations_Case01('[data-section-animation="case-1"]');
        sectionAnimations_Case02('[data-section-animation="case-2"]');
        sectionAnimations_Case03('[data-section-animation="case-3"]');

        gsap.utils.toArray('.story4 .data-list .data-item').forEach((item, index) => {
            gsap.to(item, {
                y: -90,
                ease: "none",
                scrollTrigger: {
                    trigger: ".story4",
                    //markers: true,
                    start: "center bottom",
                    end: "top top",
                    scrub: true
                },
            });
        });

        gsap.utils.toArray('.pallarax').forEach((item, index) => {
            gsap.to(item, {
                y: 0,
                ease: "none",
                scrollTrigger: {
                    trigger: item.closest('.section'),
                    //markers: true,
                    start: "30% bottom",
                    end: "top bottom",
                    scrub: true
                },
            });
        });
    });
    $(window).on('scroll resize', function() {
        sectionAnimations_Case01('[data-section-animation="case-1"]');
        sectionAnimations_Case02('[data-section-animation="case-2"]');
        sectionAnimations_Case03('[data-section-animation="case-3"]');
    });

    function sectionAnimations_Case01(selector) {
        $(selector).each(function() {
            var $selector = $(this);
            let target = $(window).innerHeight() * 0.6;
            var start = $selector.offset().top - $(window).innerHeight() + target;
            var end = $selector.offset().top + $selector.innerHeight() - target;
            var scrollAmt = $(document).scrollTop();

            if (scrollAmt < start) {
                $selector.removeClass('active');
            } else if (scrollAmt > end) {
                // $selector.removeClass('active');
            } else {
                if ($selector.hasClass('active') === false) {
                    $selector.removeClass('active');
                }
                $selector.addClass('active');
            }
        });
    }

    function sectionAnimations_Case02(selector) {
        $(selector).each(function() {
            var $selector = $(this);
            let target1 = $(window).innerHeight() * 0.2;
            let target2 = $(window).innerHeight() * 0.4;
            var start = $selector.offset().top - $(window).innerHeight() + target1;
            var end = $selector.offset().top + $selector.innerHeight() - target2;
            var scrollAmt = $(document).scrollTop();

            if (scrollAmt < start) {
                $selector.removeClass('active');
            } else if (scrollAmt > end) {
                $selector.removeClass('active');
            } else {
                if ($selector.hasClass('active') === false) {
                    $selector.removeClass('active');
                }
                $selector.addClass('active');
            }
        });
    }

    function sectionAnimations_Case03(selector) {
        $(selector).each(function() {
            var $selector = $(this);
            let target = $(window).innerHeight() * 1.2;
            var start = $selector.offset().top - $(window).innerHeight() + target;
            var end = $selector.offset().top + $selector.innerHeight() + target;
            var scrollAmt = $(document).scrollTop();

            if (scrollAmt < start) {
                $selector.removeClass('active');
            } else if (scrollAmt > end) {
                $selector.removeClass('active');
            } else {
                if ($selector.hasClass('active') === false) {
                    $selector.removeClass('active');
                }
                $selector.addClass('active');
            }
        });
    }
    const infocomAccordionItems = document.querySelectorAll('.section.infocom .accordion-item');

    infocomAccordionItems.forEach(item => {
        const infocomButton = item.querySelector('.accordion-head button');
        const infocomBtnText = infocomButton.querySelector('.btn-text');

        infocomButton.addEventListener('click', function() {
            if (item.classList.contains('active')) {
                infocomBtnText.textContent = '자세히 보기';
            } else {
                infocomBtnText.textContent = '닫기';
            }
        });
    });
</script>
</body>

</html>