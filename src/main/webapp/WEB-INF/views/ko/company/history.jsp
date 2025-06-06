<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>연혁 &lt; Company &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
        localAnimations_Case02();
        gsap.registerPlugin(ScrollTrigger);

        var scrollSpy = new bootstrap.ScrollSpy(document.body, {
            target: '#navbar-history'
        });

        document.querySelectorAll('.anchor-display a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });

        let setupTriggers = [];

        function getStartValue(type) {
            if (type === 1) {
                return window.innerWidth >= 1200 ? 'top 12' : 'top 5';
            } else if (type === 2) {
                return window.innerWidth >= 1200 ? 'top -13%' : 'top top';
            }
        }

        function setupScrollTrigger() {

            setupTriggers.forEach(trigger => trigger.kill());
            setupTriggers = [];

            const hisItem = document.querySelectorAll('.history-list .history-item');
            const hisAnchor = document.querySelector('.anchor-area');
            const mainHis = document.querySelector('.main.company.history');
            const wrapHis = mainHis.closest('#wrap');
            const wrapHead = wrapHis.querySelector('.local-head');
            const bodyHis = mainHis.querySelector('.content-body');

            hisItem.forEach(item => {
                const progressBar = item.querySelector('.progress-bar');

                setupTriggers.push(
                    gsap.to(item, {
                        scrollTrigger: {
                            trigger: item,
                            start: getStartValue(1),
                            end: 'bottom bottom',
                            onEnter: () => {
                                item.classList.add('active1');
                            },
                            onLeaveBack: () => {
                                item.classList.remove('active1');
                            },
                        },
                    })
                );

                setupTriggers.push(
                    gsap.to(item, {
                        scrollTrigger: {
                            trigger: item,
                            start: getStartValue(2),
                            end: 'bottom bottom',
                            onEnter: () => {
                                item.classList.add('active2');
                            },
                            onLeaveBack: () => {
                                item.classList.remove('active2');
                            },
                        },
                    })
                );

                function updateProgress(self) {
                    const progress = self.progress;
                    progressBar.style.width = (progress * 100) + '%';
                }

                setupTriggers.push(
                    gsap.to(progressBar, {
                        width: '100%',
                        scrollTrigger: {
                            trigger: item,
                            start: 'top 7%',
                            end: 'bottom+=5% bottom',
                            scrub: true,
                            onUpdate: updateProgress,
                        },
                    })
                );
            });

            setupTriggers.push(
                ScrollTrigger.create({
                    trigger: bodyHis,
                    start: "top 2",
                    end: "bottom bottom",
                    onEnter: () => {
                        hisAnchor.classList.add('fixed');
                        wrapHis.style.overflow = 'visible';
                        wrapHead.style.overflow = 'hidden';
                    },
                    onLeaveBack: () => {
                        hisAnchor.classList.remove('fixed');
                        wrapHis.style.overflow = '';
                        wrapHead.style.overflow = '';
                    },
                })
            );
        }

        setupScrollTrigger();

        function debounce(func, wait) {
            let timeout;
            return function(...args) {
                const context = this;
                clearTimeout(timeout);
                timeout = setTimeout(() => func.apply(context, args), wait);
            };
        }

        const debouncedRefresh = debounce(() => {
            ScrollTrigger.refresh();
        }, 100);

        window.addEventListener('resize', () => {
            setupScrollTrigger();
            debouncedRefresh();
        });

        ScrollTrigger.refresh();

        const header = document.getElementById('header');
        const headElements = document.querySelectorAll('.history-item');
        const anchorSection = document.querySelector('.section.anchor-area');

        const observer = new MutationObserver(function(mutations) {
            mutations.forEach(function(mutation) {
                if (mutation.attributeName === 'class') {
                    if (header.classList.contains('regular')) {
                        headElements.forEach(headElement => {
                            headElement.classList.add('menu-rising');
                            headElement.classList.remove('menu-dropping');
                        });
                        anchorSection.classList.remove('anchor-dropping');
                    } else {
                        headElements.forEach(headElement => {
                            headElement.classList.add('menu-dropping');
                            headElement.classList.remove('menu-rising');
                        });
                        anchorSection.classList.add('anchor-dropping');
                    }
                }
            });
        });

        observer.observe(header, {
            attributes: true
        });

        new Swiper(".anchor-display", {
            slidesPerView: "auto",
            freeMode: true,
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
    <div class="main company history" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Company</span></li>
                            <li class="data-item"><span class="item-text">연혁</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">SK네트웍스<br> 혁신의 발자취</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">연혁</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/company/bg-local-head-history-pc.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head blind">연혁 페이지</div>
                    <div class="content-body">
                        <div class="section anchor-area">
                            <div id="navbar-history" class="anchor-display swiper">
                                <ul class="nav anchor-list swiper-wrapper">
                                    <li class="nav-item anchor-item swiper-slide">
                                        <a class="nav-link anchor-link" href="#historyArea0">
                                            <span class="link-text date">2020 ~ 현재</span>
                                        </a>
                                    </li>
                                    <li class="nav-item anchor-item swiper-slide">
                                        <a class="nav-link anchor-link" href="#historyArea1">
                                            <span class="link-text date">2003 ~ 2019</span>
                                        </a>
                                    </li>
                                    <li class="nav-item anchor-item swiper-slide">
                                        <a class="nav-link anchor-link" href="#historyArea2">
                                            <span class="link-text date">1974 ~ 2002</span>
                                        </a>
                                    </li>
                                    <li class="nav-item anchor-item swiper-slide">
                                        <a class="nav-link anchor-link" href="#historyArea3">
                                            <span class="link-text date">1953 ~ 1973</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="section history-area">
                            <div data-bs-spy="scroll" data-bs-target="navbar-history" data-bs-offset="0" class="navbar-scroll">
                                <div class="history-list">
                                    <!-- 현재 -->
                                    <div class="history-item anchor0" id="historyArea0">
                                        <div class="history-wrap">
                                            <div class="head">
                                                <div class="subject">
                                                    <p class="summary">2020 ~ 현재</p>
                                                    <p class="name">AI중심 사업 지주회사로 진화</p>
                                                </div>
                                                <div class="progress-bar"></div>
                                            </div>
                                            <div class="body">
                                                <div class="data-display history-layout">
                                                    <div class="data-list">
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">Global Top 수준 화학·소재 Trading 기업 ‘글로와이드‘ 출범</p>
                                                                    </div>
                                                                    <p class="data-date">2024.12</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2024-09.jpg" alt="글로와이드 로고 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">넘버원 자동차 종합관리 기업<br class="pc-only"> ‘SK스피드메이트’ 출범</p>
                                                                    </div>
                                                                    <p class="data-date">2024.9</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2024-12.jpg" alt="SK스피드메이트 로고 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">미국 실리콘밸리에 PhnyX Lab 설립</p>
                                                                    </div>
                                                                    <p class="data-date">2024.4</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2024-04.jpg" alt="PhnyX Lab 설립 기념 사진"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">엔코아 인수</p>
                                                                    </div>
                                                                    <p class="data-date">2023.10</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2023-10.jpg" alt="엔코아 인수 기념 사진"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">워커힐 국내 최초</p>
                                                                        <p class="data-name">커뮤니티형 NFT 멤버십 W.XYZ 런칭</p>
                                                                    </div>
                                                                    <p class="data-date">2023.7</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2023-07.jpg" alt="W.XYZ 로고 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">에스에스차저 인수·SK일렉링크 출범</p>
                                                                    </div>
                                                                    <p class="data-date">2022/2023</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2022-2023.jpg" alt="SK일렉링크 충전소"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">워커힐 친환경 호텔 비전 선포</p>
                                                                    </div>
                                                                    <p class="data-date">2021.4</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2021-04.jpg" alt="워커힐 친환경 호텔 비전 선포식 기념 사진"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">SK Networks Americas 설립</p>
                                                                    </div>
                                                                    <p class="data-date">2020</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2020.jpg" alt="SK Networks Americas 로고"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //현재 -->
                                    <!-- 도약기 -->
                                    <div class="history-item anchor1" id="historyArea1">
                                        <div class="history-wrap">
                                            <div class="head">
                                                <div class="subject">
                                                    <p class="summary">2003 ~ 2019</p>
                                                    <p class="name">SK네트웍스, 글로벌 컴퍼니의 탄생</p>
                                                </div>
                                                <div class="progress-bar"></div>
                                            </div>
                                            <div class="body">
                                                <div class="data-display history-layout">
                                                    <div class="data-list">
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">KCGS 우수기업 시상식</p>
                                                                        <p class="data-name">ESG평가 최우수기업 수상</p>
                                                                    </div>
                                                                    <p class="data-date">2019.10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">국내 최초 AI 기반 중고폰 거래 브랜드</p>
                                                                        <p class="data-name">‘민팃’ 런칭</p>
                                                                    </div>
                                                                    <p class="data-date">2019</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2019.jpg" alt="민팃 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">AJ렌터카 인수ㆍSK렌터카 통합법인 출범 (2024.9 사업 양도)</p>
                                                                    </div>
                                                                    <p class="data-date">2019/2020</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2009.jpg" alt="AJ렌터카, SK렌터카 로고 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">워커힐 국내 최초 캡슐호텔</p>
                                                                        <p class="data-name">다락휴 오픈</p>
                                                                    </div>
                                                                    <p class="data-date">2017.1</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2017-01.jpg" alt="캡슐호텔 다락 휴 현판"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">동양매직 인수·SK매직 출범</p>
                                                                    </div>
                                                                    <p class="data-date">2016/2017</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2016-2017.jpg" alt="SK매직 출범식"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">스피드메이트 수입차</p>
                                                                        <p class="data-name">정비서비스 개시</p>
                                                                    </div>
                                                                    <p class="data-date">2014</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">개인장기렌터카 서비스 베네카 런칭</p>
                                                                    </div>
                                                                    <p class="data-date">2010.5</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">워커힐 합병</p>
                                                                    </div>
                                                                    <p class="data-date">2009.9</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2009-09.jpg" alt="워커힐 전경"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">국내 최초 법인차량 관리서비스 출시</p>
                                                                    </div>
                                                                    <p class="data-date">2009.3</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">SK네트웍스 출범</p>
                                                                    </div>
                                                                    <p class="data-date">2003.10</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2003-10.jpg" alt="SK네트웍스 출범 사진"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //도약기 -->
                                    <!-- 성장기 -->
                                    <div class="history-item anchor2" id="historyArea2">
                                        <div class="history-wrap">
                                            <div class="head">
                                                <div class="subject">
                                                    <p class="summary">1974 ~ 2002</p>
                                                    <p class="name">㈜선경 출범, 종합상사의 새 역사를 열다</p>
                                                </div>
                                                <div class="progress-bar"></div>
                                            </div>
                                            <div class="body">
                                                <div class="data-display history-layout">
                                                    <div class="data-list">
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">두루넷 전용회선 인수 (2009. 7 양도)</p>
                                                                    </div>
                                                                    <p class="data-date">2002.11</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">SK글로벌 출범</p>
                                                                        <p class="data-name">(SK유통, SK에너지판매 합병)</p>
                                                                    </div>
                                                                    <p class="data-date">2000.7</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2000-07.jpg" alt="2000년대 초반 SK글로벌 광고"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">스피드메이트 인수</p>
                                                                    </div>
                                                                    <p class="data-date">1999.2</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-2000-05.jpg" alt="스피드메이트 직원과 상담중인 고객"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">SK상사로 사명 변경</p>
                                                                    </div>
                                                                    <p class="data-date">1998.1</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1998-01.jpg" alt="SK 상사 사명 변경식"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">국내기업 최초 중국 무역사무소 개설</p>
                                                                    </div>
                                                                    <p class="data-date">1991.2</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1991-02.jpg" alt="선경, 국내기업 최초 북경사무소 개설 기념 사진"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">한국종합무역센터 내 선경관 개설</p>
                                                                    </div>
                                                                    <p class="data-date">1988.9</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">10억달러 수출 돌파</p>
                                                                        <p class="data-name">(1981 5억달러 수출탑 수상)</p>
                                                                    </div>
                                                                    <p class="data-date">1986</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">대한석유공사(유공) 인수</p>
                                                                    </div>
                                                                    <p class="data-date">1980.11</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1980-11.jpg" alt="인수한 대한석유공사 작업 현장"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">수출의 날 2억달러 수출탑 수상</p>
                                                                    </div>
                                                                    <p class="data-date">1977.12</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1977-12.jpg" alt="2억달러 수출탑 수상식 사진"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">㈜선경 출범(1977 기업공개),</p>
                                                                        <p class="data-name">종합무역상사 지정</p>
                                                                    </div>
                                                                    <p class="data-date">1976</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1976.jpg" alt="선박에 실려 나가는 수출품들"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">한국고등교육재단 설립</p>
                                                                    </div>
                                                                    <p class="data-date">1974.11</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1974-11.jpg" alt="한국고등교육재단 설립 기념 사진"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">경영원칙 발표(1979 SKMS 정립)</p>
                                                                    </div>
                                                                    <p class="data-date">1974.9</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1974-09.jpg" alt="SKMS 초판 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //성장기 -->
                                    <!-- 태동기 -->
                                    <div class="history-item anchor3" id="historyArea3">
                                        <div class="history-wrap">
                                            <div class="head">
                                                <div class="subject">
                                                    <p class="summary">1953 ~ 1973</p>
                                                    <p class="name">無에서 有를 창조하다! 선경의 탄생</p>
                                                </div>
                                                <div class="progress-bar"></div>
                                            </div>
                                            <div class="body">
                                                <div class="data-display history-layout">
                                                    <div class="data-list">
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">최종현 회장 취임</p>
                                                                    </div>
                                                                    <p class="data-date">1973.11</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1973-11.jpg" alt="최종현 회장 사진"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">학생복 브랜드 ‘스마트’ 런칭</p>
                                                                        <p class="data-name">(2012 양도)</p>
                                                                    </div>
                                                                    <p class="data-date">1970</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1970.jpg" alt="학생복 브랜드 '스마트' 론칭 홍보물 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">건국 후 최초 금탑산업훈장 수상</p>
                                                                    </div>
                                                                    <p class="data-date">1963.8</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1963-08.jpg" alt="금탑산업훈장 수상 사진"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">국내 최초 레이온 직물 수출</p>
                                                                    </div>
                                                                    <p class="data-date">1962.4</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1962-04.jpg" alt="레이온 직물을 생산하는 선경직물 직원들 모습"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">봉황새 이불감 개발</p>
                                                                    </div>
                                                                    <p class="data-date">1958.5</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1958-05.jpg" alt="봉황새 이불감 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">선경직물 인조견 상공부장관상 수상</p>
                                                                    </div>
                                                                    <p class="data-date">1955.12</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1955-12.jpg" alt="선경직물 인조견 안감 상공부장관상 수상 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div class="data-inform">
                                                                    <div class="data-subject">
                                                                        <p class="data-name">최종건 회장, 선경직물 창립</p>
                                                                    </div>
                                                                    <p class="data-date">1953.4</p>
                                                                </div>
                                                                <div class="data-figure">
                                                                    <div class="figure-item"><img src="/assets/images/company/thumb-history-1953-04.jpg" alt="초창기 선경직물 사무실"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //태동기 -->
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
</body>

</html>