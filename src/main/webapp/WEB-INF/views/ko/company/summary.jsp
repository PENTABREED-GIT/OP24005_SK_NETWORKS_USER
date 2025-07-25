<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>기업소개 &lt; Company &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            Tab();

            // URL 문자열 추출 (아코디언 URL 생성)
            // 1. 현재 페이지 URL의 문자열 부분을 반환 후 ?를 제외한 나머지 쿼리 문자열을 추출(?tab=scrollTab1)
            const qr = window.location.search.substring(1, window.location.search.length)

            // 2. = 기준으로 쿼리 문자열을 나눔. [1]: 두 번째 값 가져옴 (scrollTab1)
            const tabId = (qr.split('='))[1]

            // 3. ID로 가진 HTML 요소를 DOM에서 가져옴.
            const scrollTab = document.getElementById(tabId);

            // 4. 자동으로 스크롤
            if(tabId != null){
                scrollTab.scrollIntoView()

                // 5. 해당 버튼을 클릭 (아코디언이 열린 상태)
                // scrollTab.querySelector('button').click()
                scrollTab.click();
            }
        });
    </script>
    <script>
        $(document).ready(function () {
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
                        start: "center bottom",
                        end: "top top",
                        scrub: true
                    },
                });
            });
            const pallarax = $(".pallarax").toArray();
            const io = new IntersectionObserver(entries => {
                entries.forEach(entry => {
                    if(entry.intersectionRatio > 0.1) {
                        entry.target.classList.add("active")
                    }
                })
            }, {
                threshold: [0.1]
            })
            pallarax.forEach(element => {
                io.observe(element);
            });
        });
        $(window).on('scroll resize', function () {
            sectionAnimations_Case03('[data-section-animation="case-3"]');
        });

        function sectionAnimations_Case01() {
            let landingSlides = $('.story1 .data-list .data-item');
            let landingSlidesLength = landingSlides.length;
            let story = $('.story1');
            let storyHeight = story.innerHeight();
            let storyInner = $('.section-body');
            let storyInnerHeight = storyInner.innerHeight();
            let storyTotalHeight = (storyInnerHeight * landingSlidesLength) + storyInnerHeight;
            let tab = $('.tab-display')
            let sectionBg = $('.section-wrap .bg1')

            function setCurrentSlide(index) {
                landingSlides.removeClass('active previous next');
                landingSlides.eq(index).addClass('active');
                if (index > 0) {
                    landingSlides.eq(index - 1).addClass('previous');
                }
                if (index < landingSlides.length - 1) {
                    landingSlides.eq(index + 1).addClass('next');
                }

                let postItems = $('.story1 .post-list .post-item');
                postItems.removeClass('active previous next');
                postItems.eq(index).addClass('active');
                if (index > 0) {
                    postItems.eq(index - 1).addClass('previous');
                }
                if (index < postItems.length - 1) {
                    postItems.eq(index + 1).addClass('next');
                }
            }

            let scrollTimeline = gsap.timeline({
                scrollTrigger: {
                    trigger: story,
                    start: 'top top',
                    end: () => {
                        if (window.innerWidth >= 1024) {
                            return '+=' + landingSlidesLength * (storyInnerHeight/2)
                        } else {
                            return '+=' + landingSlidesLength * (storyInnerHeight*2.5)
                        }
                    },
                    pin: '.section-body',

                    onLeave: () => {
                        // console.log('나갔다!')
                        gsap.to(sectionBg , {backgroundColor:'#000', duration: 1})
                    },

                    onEnterBack: () => {
                        // console.log('완전나갔다 돌아왔다!')
                        gsap.to(sectionBg , {backgroundColor:'#fff',  duration: 1})
                    },
                }
            });

            landingSlides.each(function(i, landingSlide) {
                ScrollTrigger.create({
                    trigger: story,
                    start: () => {
                        if (window.innerWidth >= 1024) {
                            return (i * (storyInnerHeight/2)) + 'px top'
                        } else {
                            if(i==0) {
                                return (i * (storyInnerHeight/2)) + 'px top'
                            } else {
                                return (i * (storyInnerHeight*2.5)) + 'px top'
                            }
                        }
                    },
                    end: () => {
                        if (window.innerWidth >= 1024) {
                            return '+=' + (storyInnerHeight / 2)
                        } else {
                            if(i==0) {
                                return '+=' + (storyInnerHeight / 2)
                            } else {
                                return '+=' + storyInnerHeight * 2.5
                            }
                        }
                    },
                    // pin: '.section-body',
                    onEnter: () => setCurrentSlide(i),
                    onLeave: () => setCurrentSlide(i),
                    onEnterBack: () => setCurrentSlide(i),
                    onLeaveBack: () => setCurrentSlide(i),
                });
            });

            let resizeTimeout;
            window.addEventListener('resize', function() {
                clearTimeout(resizeTimeout);
                resizeTimeout = setTimeout(function() {
                    ScrollTrigger.refresh();
                }, 500);
            });
        }

        function sectionAnimations_Case02() {
            let $story2Bg = $('.story2 .bg');
            let $story2Text = $('.story2 .post-date');
            let $story2Figure = $('.story2 .post-item');
            let sectionBg = $('.section-wrap .bg2')

            gsap.timeline({
                scrollTrigger: {
                   // markers: true,
                    trigger: '.story2',
                    start: '40% top',
                    end: 'bottom bottom',
                    scrub: 0.001,
                }
            })
            .to(sectionBg, {backgroundColor:'#F2FAFF'})
            .to(sectionBg, {backgroundColor:'#FFF'})
            .fromTo($story2Text , {color:'#fff'}, {color:'#3F3F46'}, 0)

            gsap.utils.toArray('.story2 .post-item').forEach((figure, index) => {
                gsap.timeline({
                    scrollTrigger: {
                        //markers: true,
                        trigger: figure,
                        start: 'top bottom',
                        end: 'top top',
                        toggleActions: 'play none none reverse',
                    }
                })
                .fromTo(figure , {opacity:'0', y:'20vh'}, {opacity:'1', y:'0', duration: 0.5}, 0)
            });
        }

        function sectionAnimations_Case03(selector) {
            $(selector).each(function () {
                var $selector = $(this);
                let target = $(window).innerHeight() * 1.8;
                var start = $selector.offset().top - $(window).innerHeight()
                var end = $selector.offset().top + $selector.innerHeight()
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

        // [25.03.27] 탭 클릭 시, 탭별로 url 변경
        function tabClickEvent(e){
            let tabId = e.target.id;
            let url = window.location.href.split('?')[0];
            if(url == null){
                url = window.location.href;
            }
            let newUrl = url + `?tabId=` + tabId;
            history.pushState(null, null, newUrl);
        }
    </script>
</head>

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main company introduction" id="main">
        <div class="main-inner">
            <div class="local case2">
                <div class="local-head design4" data-local-animation="case-1">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Company</span></li>
                            <li class="data-item"><span class="item-text">기업소개</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Introduction</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">AI Company</h3>
                            <p class="local-summary">AI 기술을 활용한 비즈니스로, 다양한 이해관계자의 행복을 창출하기 위해 끊임없이 노력하고 있습니다.</p>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/company/bg-local-head-company-introduction.jpg" alt="회사 전경 이미지">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head blind">기업소개 페이지</div>
                    <div class="content-body">
                        <div class="tab-display design1 case1 type1">
                            <div class="swiper tab-wrap">
                                <ul class="swiper-wrapper tab-list" role="tablist">
                                    <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1"><button role="tab" class="tab-text" id="headquarter" onclick="tabClickEvent(event)">본사 소개</button></li>
                                    <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2"><button role="tab" class="tab-text" id="subsidiaries" onclick="tabClickEvent(event)">자회사/브랜드 소개</button></li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel-display design1">
                            <div class="panel-list">
                                <div id="tab-panel1" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <div class="section-wrap">
                                            <div class="bg bg1"></div>
                                            <div class="bg bg2"></div>
                                            <div class="section story1" data-section-animation="case-1">
                                                <div class="section-body">
                                                    <div class="data-list">
                                                        <div class="data-item active">1953년,<br> 선경직물로 출범한 SK네트웍스는<br> 우리나라 산업 변화에 발맞춰<br> 진화를 거듭해 왔습니다.</div>
                                                        <div class="data-item">무역, 유통을 비롯해<br> ICT 디바이스 유통, 통신 인프라 관리,<br> 글로벌 트레이딩, 자동차 관리,<br> 환경가전 렌털, 호텔·리조트 사업 등<br> 사업 영역을 변화시켜 왔습니다.</div>
                                                        <div class="data-item">SK네트웍스는 미래 기술에 관련한<br> 전문적인 네트워크와 체계적인 포트폴리오<br> 관리 프로세스를 바탕으로<br> AI Company로 진화하고자 합니다.</div>
                                                        <div class="data-item">이를 위해 보유 사업에 AI를 접목하고<br> 데이터 솔루션 및 AI 관련 사업을 확장하여<br> 미래 혁신을 이뤄나갈 것입니다.</div>
                                                    </div>
                                                    <div class="post-list">
                                                        <div class="post-wrap">
                                                            <div class="post-item active"><img src="/assets/images/company/story1-figure-01.jpg" alt="공장 이미지"></div>
                                                            <div class="post-item"><img src="/assets/images/company/story1-figure-02.jpg" alt="유통 고속도로 이미지"></div>
                                                            <div class="post-item"><img src="/assets/images/company/story1-figure-03.jpg" alt="휴대폰 이미지"></div>
                                                            <div class="post-item"><img src="/assets/images/company/story1-figure-04.jpg" alt="SK electlink 이미지"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section story2" data-section-animation="case-2">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <span class="section-sub">Since 1953</span>
                                                        <h4 class="section-name">고객과 함께한 70여 년</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="post-list">
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-01.jpg" alt="1953 창립 무렵의 선경직물 전경"></div>
                                                                <p class="post-date">1953 창립 무렵의 선경직물</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-02.jpg" alt="1953 창업 당시 사무실로 쓰던 관리동 건물 전경"></div>
                                                                <p class="post-date">1953 창업 당시 사무실로 쓰던 관리동 건물</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-03.jpg" alt="1956 종로구 연지동 선경직물 서울 연락사무소 전경"></div>
                                                                <p class="post-date">1956 종로구 연지동 선경직물 서울 연락사무소</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-04.jpg" alt="1959 선경직물 본관 전경"></div>
                                                                <p class="post-date">1959 선경직물 본관</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-06.jpg" alt="1969 대연각 빌딩 전경"></div>
                                                                <p class="post-date">1969 대연각 빌딩</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-07.jpg" alt="1971 백남빌딩 선경 각 사, 서울 사무소 이전사 전경"></div>
                                                                <p class="post-date">1971 백남빌딩 선경 각 사,<br> 서울 사무소 이전</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-08.jpg" alt="1976 남대문로 동화빌딩 매입 전경"></div>
                                                                <p class="post-date">1976 남대문로 동화빌딩 매입</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-09.jpg" alt="1988 을지로사옥 이전 전경"></div>
                                                                <p class="post-date">1988 을지로사옥 이전</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-10.jpg" alt="2003 명동사옥 이전 전경"></div>
                                                                <p class="post-date">2003 명동사옥 이전</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-11.jpg" alt="2005 선혜원(SK네트웍스 연수원) 개관 전경"></div>
                                                                <p class="post-date">2005 선혜원(SK네트웍스 연수원) 개관</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-14.jpg" alt="2021 삼일빌딩으로 사옥 이전 전경"></div>
                                                                <p class="post-date">2021 삼일빌딩으로 사옥 이전</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section story5">
                                            <div class="section-head pallarax">
                                                <div class="section-subject">
                                                    <h4 class="section-name">Business</h4>
                                                </div>
                                                <p class="section-summary">
                                                    SK네트웍스는 국내외 네트워크 거점, 우량 거래선, 물류 능력 등의 경쟁력을 바탕으로<br class="pc-only">
                                                    정보통신 유통, 글로벌 트레이딩, 모빌리티, 호텔, 환경가전 렌털 등 사업을 영위하고 있습니다.
                                                </p>
                                            </div>
                                            <div class="section-body pallarax">
                                                <div class="post-list">
                                                    <div class="post-item">
                                                        <div class="product-list">
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story5-product-01.jpg" alt="회사 전경 이미지"></div>
                                                                    <div class="product-body">
                                                                        <div class="btn-display align2">
                                                                            <div class="btn-area">
                                                                                <a href="/business/summary" class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg"><span class="btn-text">VIEW MORE</span></a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="post-item">
                                                        <div class="product-list">
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story5-product-02.jpg" alt="도시 전경 이미지"></div>
                                                                </div>
                                                            </div>
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story5-product-03.jpg" alt="정수기 이미지"></div>
                                                                </div>
                                                            </div>
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story5-product-04.jpg" alt="공기청정기 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section story6">
                                            <div class="section-head pallarax">
                                                <div class="section-subject">
                                                    <h4 class="section-name">
                                                        Sustainability
                                                    </h4>
                                                </div>
                                                <p class="section-summary">
                                                    SK네트웍스는 지속가능한 기업으로 성장하기 위해<br>
                                                    ESG 성과 고도화, Net Zero 2040 실행력 강화, 사회적 가치 연계 비즈니스 모델 혁신,<br>
                                                    구성원 사회적 가치 내재화라는 목표를 수립했습니다.
                                                </p>
                                            </div>
                                            <div class="section-body pallarax">
                                                <div class="post-list">
                                                    <div class="post-item">
                                                        <div class="product-list">
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story6-product-01.jpg" alt="호텔 이미지"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="post-item">
                                                        <div class="product-list">
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story6-product-02.jpg" alt="봉사하는 이미지"></div>
                                                                    <div class="product-body">
                                                                        <p class="para">
                                                                            이를 통해 SK네트웍스는 고객의 신뢰를 확보하고,<br class="pc-only">
                                                                            기업가치를 제고하겠습니다.
                                                                        </p>
                                                                        <div class="btn-display align1">
                                                                            <div class="btn-area">
                                                                                <a href="/sustainability/summary" class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg"><span class="btn-text">VIEW MORE</span></a>
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
                                        <div class="section story7" data-section-animation="case-3">
                                            <div class="section-head">
                                                <div class="section-subject">
                                                    <h4 class="section-name">Company Profile</h4>
                                                </div>
                                            </div>
                                            <div class="section-body">
                                                <div class="data-list">
                                                    <div class="data-item pallarax">
                                                        <div class="data-wrap">
                                                            <div class="data-head">
                                                                <div class="data-subject">
                                                                    <em class="data-name">창립일</em>
                                                                </div>
                                                            </div>
                                                            <p class="data-body">1953년 4월 8일</p>
                                                        </div>
                                                    </div>
                                                    <div class="data-item pallarax">
                                                        <div class="data-wrap">
                                                            <div class="data-head">
                                                                <div class="data-subject">
                                                                    <em class="data-name">매출액</em>
                                                                </div>
                                                            </div>
                                                            <p class="data-body">7조 6,573억 원</p>
                                                            <span class="data-base">(2024년 연결 기준)</span>
                                                        </div>
                                                    </div>
                                                    <div class="data-item pallarax">
                                                        <div class="data-wrap">
                                                            <div class="data-head">
                                                                <div class="data-subject">
                                                                    <em class="data-name">영업이익</em>
                                                                </div>
                                                            </div>
                                                            <p class="data-body">1,139억원</p>
                                                            <span class="data-base">(2024년 연결 기준)</span>
                                                        </div>
                                                    </div>
                                                    <div class="data-item pallarax">
                                                        <div class="data-wrap">
                                                            <div class="data-head">
                                                                <div class="data-subject">
                                                                    <em class="data-name">기업신용평가</em>
                                                                </div>
                                                            </div>
                                                            <p class="data-body">AA-(안정적)</p>
                                                            <span class="data-base">(2024년 기준)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section story8">
                                            <div class="section-head">
                                                <div class="section-subject">
                                                    <h4 class="section-name">Global Network</h4>
                                                </div>
                                                <div class="section-util">
                                                    <div class="btn-display align1">
                                                        <div class="btn-area">
                                                            <a href="/company/global-network" class="btn design3 case1 type1 color3 ar-icon-arrow-right2-bg"><span class="btn-text">VIEW MORE</span></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section-body">
                                                <div class="bg">
                                                    <video preload="auto" autoplay loop muted playsinline src="/assets/movies/bg-earth.mp4"></video>
                                                </div>
                                                <div class="board-list">
                                                    <div class="board-item">
                                                        <div class="board-wrap">
                                                            <div class="board-head">
                                                                <div class="board-subject">
                                                                    <em class="board-name">해외</em>
                                                                </div>
                                                            </div>
                                                            <div class="board-body">
                                                                <div class="data-list">
                                                                    <div class="data-item"><span class="data-text">상하이ㆍ심양ㆍ샤먼 법인</span></div>
                                                                    <div class="data-item"><span class="data-text">도쿄 법인</span></div>
                                                                    <div class="data-item"><span class="data-text">홍콩 법인</span></div>
                                                                    <div class="data-item"><span class="data-text">MINTIT Vina</span></div>
                                                                    <div class="data-item"><span class="data-text">SK Networks Americas</span></div>
                                                                    <div class="data-item"><span class="data-text">SK Magic Malaysia</span></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="board-item">
                                                        <div class="board-wrap">
                                                            <div class="board-head">
                                                                <div class="board-subject">
                                                                    <em class="board-name">국내</em>
                                                                </div>
                                                            </div>
                                                            <div class="board-body">
                                                                <div class="data-list case1">
                                                                    <div class="data-item"><span class="data-text">서울 오피스</span></div>
                                                                    <div class="data-item"><span class="data-text">정보통신 서부지사(대전ㆍ광주)</span></div>
                                                                    <div class="data-item"><span class="data-text">정보통신 동부지사(대구ㆍ부산)</span></div>
                                                                    <div class="data-item"><span class="data-text">이천물류센터</span></div>
                                                                    <div class="data-item"><span class="data-text">안성물류센터</span></div>
                                                                    <div class="data-item"><span class="data-text">부산물류센터</span></div>
                                                                    <div class="data-item"><span class="data-text">대구물류센터</span></div>
                                                                    <div class="data-item"><span class="data-text">대전물류센터</span></div>
                                                                    <div class="data-item"><span class="data-text">광주물류센터</span></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-panel2" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <div class="section story9">
                                            <div class="section-head">
                                                <p class="section-summary">
                                                    SK네트웍스와 SK네트웍스의 자회사들은<br>
                                                    보유 사업에 AI를 접목해 미래 혁신을 이뤄나갈 것입니다.
                                                </p>
                                            </div>
                                            <div class="section-body">
                                                <div class="data-list">
                                                    <button data-bs-toggle="modal" data-bs-target="#modalWalkerhill" class="data-item">
                                                        <img src="/assets/images/company/company-logo-walkerhill.png" alt="GRAND WALKERHILL SEOUL">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalVista" class="data-item">
                                                        <img src="/assets/images/company/company-logo-vista.png" alt="VISTA">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalDouglasHouse" class="data-item">
                                                        <img src="/assets/images/company/company-logo-douglashouse.png" alt="DOUGLAS HOUSE">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalDarakhyu" class="data-item">
                                                        <img src="/assets/images/company/company-logo-darakhyu.png" alt="다략휴">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalSKNetworks" class="data-item">
                                                        <img src="/assets/images/company/company-logo-sknetworks-kr.png" alt="SK 네트웍스 서비스">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalSKMagic" class="data-item">
                                                        <img src="/assets/images/company/company-logo-skIntellix-kr.png" alt="SK 인텔릭스">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalSpeedMate" class="data-item">
                                                        <img src="/assets/images/company/company-logo-speedmate-kr.png" alt="SK 스피드메이트">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalMintit" class="data-item">
                                                        <img src="/assets/images/company/company-logo-mintit.png" alt="MINTIT">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalEncore" class="data-item">
                                                        <img src="/assets/images/company/company-logo-en-core.png" alt="en-core">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalGlowide" class="data-item">
                                                        <img src="/assets/images/company/company-logo-glowide.png" alt="Glowide">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalHicocapital" class="data-item">
                                                        <img src="/assets/images/company/company-logo-hico-ventures.png" alt="HICO CAPITAL">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalPhnyXLab" class="data-item">
                                                        <img src="/assets/images/company/company-logo-phnyx-lab.png" alt="PhnyX Lab">
                                                    </button>
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
    <footer id="footer">
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
    </footer>
    <div class="modal design1 medium" id="modalWalkerhill" tabindex="-1" aria-labelledby="modalWalkerhillLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalWalkerhillLabel">
                        <em class="modal-subjec"><span class="modal-name">그랜드 워커힐 서울</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/hotel-and-resort">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        아름다운 한강과 푸르른 아차산에 둘러싸인 도심 속 최고의 휴양지,
                                        그랜드 워커힐 서울은 품격 있는 시설과 감동적인 서비스로 편안하고 여유로운 휴식을 선사합니다.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.walkerhill.com/grandwalkerhillseoul" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">홈페이지 바로가기</span></a>
                                            <a href="https://www.facebook.com/grandwalkerhillseoul" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">페이스북</span></a>
                                            <a href="https://goo.gl/Djs4NY" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">인스타그램</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalVista" tabindex="-1" aria-labelledby="modalVistaLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalVistaLabel">
                        <em class="modal-subjec"><span class="modal-name">비스타 워커힐 서울</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/hotel-and-resort">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        최신 트렌드를 바탕으로 신선하고 색다른 휴식을 통해 활력과 에너지를 선사하는 비스타 워커힐 서울은 ‘REFRESHING. VIVIDLY.’라는 슬로건 아래 고객에게 신선한 자극과 색다른 경험을 제공합니다.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.walkerhill.com/vistawalkerhillseoul/" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">홈페이지 바로가기</span></a>
                                            <a href="https://www.facebook.com/vistawalkerhill/?fref=ts" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">페이스북</span></a>
                                            <a href="https://goo.gl/vWMyhh" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">인스타그램</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalDouglasHouse" tabindex="-1" aria-labelledby="modalDouglasHouseLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalDouglasHouseLabel">
                        <em class="modal-subjec"><span class="modal-name">더글라스 하우스</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/hotel-and-resort">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        바쁜 일상을 잠시 멈추고 라이프스타일 호텔, 더글라스 하우스에서 삶의 쉼표를 찾아보세요. 자연 친화적 인테리어와 세심하게 큐레이션된 서비스가 진정한 휴식을 선사합니다.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.walkerhill.com/grandwalkerhillseoul/kr/douglas/Intro" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">홈페이지 바로가기</span></a>
                                            <a href="https://www.instagram.com/douglashouse_hotel/" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">인스타그램</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalDarakhyu" tabindex="-1" aria-labelledby="modalDarakhyuLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalDarakhyuLabel">
                        <em class="modal-subjec"><span class="modal-name">다락휴</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/hotel-and-resort">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        나만의 아늑한 공간에서 편안한 휴식을 취할 수 있는 국내 최초 캡슐 호텔, 다락휴는 안락한 시설과 편안한 서비스로 즐겁고 합리적인 여행을 위한 최적의 공간을 제공합니다.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.walkerhill.com/darakhyu/t1/kr/" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">홈페이지 바로가기</span></a>
                                            <a href="https://www.facebook.com/darakhyu/" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">페이스북</span></a>
                                            <a href="https://www.instagram.com/p/BzXcSzVBzaP/?img_index=1" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">인스타그램</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalSKNetworks" tabindex="-1" aria-labelledby="modalSKNetworksLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalSKNetworksLabel">
                        <em class="modal-subjec"><span class="modal-name">SK네트웍스 서비스</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/information-communication">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        SK네트웍스서비스는 다년간 축적해온 ICT 기술력을 기반으로 경쟁력을 확보하고 새로운 가능성과 고객 가치 창출을 위해 노력하겠습니다.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.sknservice.com/index.do" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">홈페이지 바로가기</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalSKMagic" tabindex="-1" aria-labelledby="modalSKMagicLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalSKMagicLabel">
                        <em class="modal-subjec"><span class="modal-name">SK인텔릭스</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/sk-intellix">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        빠르게 변하는 시장환경에 맞춰 AI 협업 생태계를 구축하고,
                                        AI 신규 제품 및 서비스를 도입해 고객관계 기반의
                                        AI 웰니스 플랫폼 기업으로 진화 발전해 국내를 넘어 글로벌 시장까지 선점하겠습니다.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.skintellix.com" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">홈페이지 바로가기</span></a>
                                            <a href="https://www.facebook.com/SKmagic.life" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">페이스북</span></a>
                                            <a href="https://goo.gl/Ku5ejU" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">인스타그램</span></a>
                                            <a href="https://story.kakao.com/ch/tymagic" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">카카오스토리</span></a>
                                            <a href="https://cafe.naver.com/magicovenlove" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">네이버카페</span></a>
                                            <a href="https://post.naver.com/tymagic_magic" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">네이버 포스트</span></a>
                                            <a href="https://www.youtube.com/channel/UCcKmzgW07IZonw7H9MXuN7g" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">유튜브</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalSpeedMate" tabindex="-1" aria-labelledby="modalSpeedMateLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalSpeedMateLabel">
                        <em class="modal-subjec"><span class="modal-name">SK 스피드메이트</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/skspeedmate">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">국내 자동차 애프터마켓 No. 1 브랜드로서 전문성을 한층 더 높이고 고객만족을 위해 끊임없이 연구하여 미래 자동차 관리 업계를 선도하겠습니다.</p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.speedmate.com/" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">홈페이지 바로가기</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalMintit" tabindex="-1" aria-labelledby="modalMintitLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalMintitLabel">
                        <em class="modal-subjec"><span class="modal-name">민팃</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/mintit">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        중고폰 거래를 쉽고 안전하게 할 수 있는 생활 속 ICT Device 리사이클 생태계를 조성하고, 자원순환 캠페인을 통해 환경 보호와 자원 절약에 기여하겠습니다.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.mintit.co.kr/" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">홈페이지 바로가기</span></a>
                                            <a href="https://www.facebook.com/mintit.official/" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">페이스북</span></a>
                                            <a href="https://www.instagram.com/mintit_official/" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">인스타그램</span></a>
                                            <a href="https://post.naver.com/mintit_official" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">네이버 포스트</span></a>
                                            <a href="https://www.youtube.com/channel/UC5bT0Fy-Ui6jJLPvw0P051g" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">유튜브</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalEncore" tabindex="-1" aria-labelledby="modalEncoreLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalEncoreLabel">
                        <em class="modal-subjec"><span class="modal-name">엔코아</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/en-core">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        고객이 효과적으로 인공지능 기술을 활용할 수 있도록 엔코아의 축적된 지식과 DATA, AI 방법론을 기반으로 AI 활용을 지원하는 최고의 서비스와 제품을 공급하겠습니다.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.en-core.com/" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">홈페이지 바로가기</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalHicocapital" tabindex="-1" aria-labelledby="modalHicocapitalLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalHicocapitalLabel">
                        <em class="modal-subjec"><span class="modal-name">SK Networks Americas LLC</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/global-investment">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        미국 실리콘밸리 투자법인, SK Networks Americas는 미래 유망 글로벌 기술 영역에 대한 투자기회를 적극 발굴하고, 다양한 글로벌 네트워크를 강화해 기업가치를 지속적으로 높여 나가겠습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalGlowide" tabindex="-1" aria-labelledby="modalGlowideLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalGlowideLabel">
                        <em class="modal-subjec"><span class="modal-name">글로와이드</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/glowide">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        50년 이상 이어온 수출입 역량으로 우량 거래선과의 네트워킹을 통해 탄탄한 수익구조를 유지하고, AI기술을 접목한 시장 데이터 분석 등을 강화해 기업가치를 높여 나가겠습니다.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.glowide.kr/" target="_blank" title="새창 열기" class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">홈페이지 바로가기</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalPhnyXLab" tabindex="-1" aria-labelledby="modalPhnyXLabLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalPhnyXLabLabel">
                        <em class="modal-subjec"><span class="modal-name">피닉스랩</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/business/phnyx-lab">
                                        <span class="btn-text">사업소개 바로가기</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        미국 실리콘밸리에 설립된 PhnyX Lab(피닉스랩)은 AI 기반 서비스를 개발해 제공합니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
