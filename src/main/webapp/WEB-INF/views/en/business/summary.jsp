<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Business Overview &lt; Business &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
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
                    document.querySelector(href).scrollIntoView({
                        behavior: 'smooth'
                    })
                })
            });
        });
    </script>
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main business overview" id="main">
        <div class="main-inner">
            <div class="local design1 case2">
                <div class="local-head design4" data-local-animation="case-1">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">Business Overview</span></li>
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">Business</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Moving Towards a Better Future through AI-Driven Business Model Innovation.</h3>
                            <p class="local-summary">By transforming customer value through innovative experiences and addressing social challenges with creative solutions, we connect to a brighter future, enabling our AI technologies to create greater happiness.</p>
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
                    <div class="content-head blind">Business Overview</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 align3 business-profile">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Business Profile</h4>
                                        <p class="section-summary">
                                            SK Networks is preparing to take a leap toward <br class="pc-only">a better future through AI technologies across various business sectors.
                                        </p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="data-display">
                                        <ul class="data-list">
                                            <li class="data-item invest">
                                                <a href="#invest">
                                                    <strong class="data-title">Global Investment</strong>
                                                </a>
                                            </li>
                                            <li class="data-item infocom">
                                                <a href="#infocom">
                                                    <strong class="data-title">ICT</strong>
                                                </a>
                                            </li>
                                            <li class="data-item hotel">
                                                <a href="#hotel">
                                                    <strong class="data-title">Hotels & Resorts</strong>
                                                </a>
                                            </li>
                                            <li class="data-item wellness">
                                                <a href="#wellness">
                                                    <strong class="data-title">AI Wellness Platform</strong>
                                                </a>
                                            </li>
                                            <li class="data-item mobility">
                                                <a href="#mobility">
                                                    <strong class="data-title">Mobility</strong>
                                                </a>
                                            </li>
                                            <li class="data-item trading">
                                                <a href="#trading">
                                                    <strong class="data-title">Global Trading</strong>
                                                </a>
                                            </li>
                                            <li class="data-item ai">
                                                <a href="#ai">
                                                    <strong class="data-title">AI</strong>
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
                                        <h4 class="section-name">Global Investment</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        Global Investment
                                                        <a class="btn icon case1 arrow-right2-bg" href="/${LANG}/business/global-investment">
                                                            <span class="btn-text blind">Go to the Global Investment</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">We are focusing on future growth areas, including AI, with the aim of strengthening our existing businesses and uncovering new opportunities for growth.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">Investment Domains</strong>
                                                            <p class="para">AI, Web 3, Sustainability</p>
                                                        </div>
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">Portfolio</strong>
                                                            <p class="para">Total 37 (Direct Investment : 15, Fund Investment : 22)</p>
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
                                        <h4 class="section-name">ICT</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="board-list">
                                        <li class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        ICT
                                                        <a class="btn icon case1 arrow-right2-bg" href="/${LANG}/business/information-communication">
                                                            <span class="btn-text blind">Go to the ICT</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">We specialize in ICT distribution and logistics, primarily centered around communication devices.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="accordion-display design1">
                                                            <div class="accordion-item">
                                                                <div class="accordion-head pc-only">
                                                                    <button type="button" class="btn design3 case2 type1 color4 ar-icon-arrow-down1
                                                                    " aria-controls="accordionCont1">
                                                                        <span class="btn-text">Learn more</span>
                                                                    </button>
                                                                </div>
                                                                <div class="accordion-body" id="accordionCont1">
                                                                    <div class="accordion-body-inner">
                                                                        <div class="board-item-sub">
                                                                            <strong class="board-name-sub">Business Area</strong>
                                                                            <p class="para">Mobile phone wholesale, logistics service, ICT Device/Accessory B2B distribution</p>
                                                                        </div>
                                                                        <div class="board-item-sub">
                                                                            <strong class="board-name-sub">FY2024 Sales</strong>
                                                                            <p class="para">KRW 4.3 trillion</p>
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
                                                        MINTIT
                                                        <a class="btn icon case1 arrow-right2-bg" href="/${LANG}/business/mintit">
                                                            <span class="btn-text blind">Go to the MINTIT</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">As a user-friendly and reliable platform for secondhand ICT devices, MINTIT leads the way in resource recycling.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="accordion-display design1">
                                                            <div class="accordion-item">
                                                                <div class="accordion-head pc-only">
                                                                    <button type="button" class="btn design3 case2 type1 color4 ar-icon-arrow-down1
                                                                    " aria-controls="accordionCont2">
                                                                        <span class="btn-text">Learn more</span>
                                                                    </button>
                                                                </div>
                                                                <div class="accordion-body" id="accordionCont2">
                                                                    <div class="accordion-body-inner">
                                                                        <div class="board-item-sub">
                                                                            <strong class="board-name-sub">Business Area</strong>
                                                                            <p class="para">The operation of the AI-based used phone purchasing kiosk 'MINTIT ATM'</p>
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
                                                        En-core
                                                        <a class="btn icon case1 arrow-right2-bg" href="/${LANG}/business/en-core">
                                                            <span class="btn-text blind">Go to the En-core</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">En-core is advancing as a tech company dedicated to supporting corporate business innovation.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="accordion-display design1">
                                                            <div class="accordion-item">
                                                                <div class="accordion-head pc-only">
                                                                    <button type="button" class="btn design3 case2 type1 color4 ar-icon-arrow-down1
                                                                    " aria-controls="accordionCont3">
                                                                        <span class="btn-text">Learn more</span>
                                                                    </button>
                                                                </div>
                                                                <div class="accordion-body" id="accordionCont3">
                                                                    <div class="accordion-body-inner">
                                                                        <div class="board-item-sub">
                                                                            <strong class="board-name-sub">Business Area</strong>
                                                                            <p class="para">Enterprise AI Platform, Data Consulting, Data Solutions such as DATAWARE™</p>
                                                                        </div>
                                                                        <div class="board-item-sub">
                                                                            <strong class="board-name-sub">FY2024 Sales</strong>
                                                                            <p class="para">KRW 31.3 billion</p>
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
                                        <h4 class="section-name">Hotels & Resorts</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        Hotels & Resorts
                                                        <a class="btn icon case1 arrow-right2-bg" href="/${LANG}/business/hotel-and-resort">
                                                            <span class="btn-text blind">Go to the Hotels & Resorts</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">Walkerhill Hotels & Resorts
                                                        We are solidifying our presence as a leader in the domestic hotel industry, focused on enhancing customer happiness.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">Brand</strong>
                                                            <p class="para">Grand Walkerhill Seoul, VISTA Walkerhill Seoul, Douglas House, DARAKHYU,  Incheon Airport Transit Hotel</p>
                                                        </div>
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">FY2024 Sales</strong>
                                                            <p class="para">KRW 300.6 billion</p>
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
                                        <h4 class="section-name">AI Wellness Platform</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        SK Intellix
                                                        <a class="btn icon case1 arrow-right2-bg" href="/${LANG}/business/sk-intellix">
                                                            <span class="btn-text blind">Go to the SK Intellix</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">We develop innovative solutions empowered by AI technology to promote health and sustainable living for our customers.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">Business Areas</strong>
                                                            <p class="para">Health Platform, Wellness Robotics</p>
                                                        </div>
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">FY2024 Sales</strong>
                                                            <p class="para">KRW 844.3 billion</p>
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
                                        <h4 class="section-name">Mobility</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        SK Speedmate
                                                        <a class="btn icon case1 arrow-right2-bg" href="/${LANG}/business/skspeedmate">
                                                            <span class="btn-text blind">Go to the SK Speedmate</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">As the leading automotive aftermarket brand in Korea, SK Speedmate provides a wide range of automotive services.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">Business Areas</strong>
                                                            <p class="para">Vehicle maintenance, emergency roadside assistance, and distribution of automotive accessories and import auto parts</p>
                                                        </div>
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">FY2024 Sales</strong>
                                                            <p class="para">KRW 343.9 billion</p>
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
                                        <h4 class="section-name">Global Trading</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <strong class="board-name">
                                                        Glowide
                                                        <a class="btn icon case1 arrow-right2-bg" href="/${LANG}/business/glowide">
                                                            <span class="btn-text blind">Go to the Chemical Products</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">With over 50 years of experience in export-import, we specialize in trading chemical products.</p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">Business Areas</strong>
                                                            <p class="para">Trade focused on petrochemical products</p>
                                                        </div>
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">FY2024 Sales</strong>
                                                            <p class="para">KRW 1.6 trillion</p>
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
                                                        <a class="btn icon case1 arrow-right2-bg" href="/${LANG}/business/phnyx-lab">
                                                            <span class="btn-text blind">Go to PhnyX Lab</span>
                                                        </a>
                                                    </strong>
                                                    <p class="board-summary">
                                                        PhnyX Lab, founded in Silicon Valley, USA, develops and provides AI-powered services.                                                    </p>
                                                </div>
                                                <div class="board-body">
                                                    <div class="board-list-sub">
                                                        <div class="board-item-sub">
                                                            <strong class="board-name-sub">Business Areas</strong>
                                                            <p class="para">
                                                                AI technology and service development, market testing, and AI service validation
                                                            </p>
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
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
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
                infocomBtnText.textContent = 'Learn more';
            } else {
                infocomBtnText.textContent = 'Close';
            }
        });
    });
</script>
</body>

</html>
