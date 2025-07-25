<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Company Overview &lt; Company &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>

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
                        //markers: true,
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
            // gsap.utils.toArray('.pallarax').forEach((item, index) => {
            //     gsap.to(item, {
            //         y: 0,
            //         opacity: 1,
            //         ease: "power1.out",
            //         scrollTrigger: {
            //             trigger: item,
            //             //markers: true,
            //             start: "top bottom",
            //             end: "+=500px",
            //             scrub: true,
            //             markers: true,
            //         },
            //     });
            // });
        });
        $(window).on('scroll resize', function () {
            // sectionAnimations_Case01('[data-section-animation="case-1"]');
           // sectionAnimations_Case02('[data-section-animation="case-2"]');
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

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main company introduction" id="main">
        <div class="main-inner">
            <div class="local case2">
                <div class="local-head design4" data-local-animation="case-1">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Company</span></li>
                            <li class="data-item"><span class="item-text">Company Overview</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Introduction</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">AI Company, SK Networks</h3>
                            <p class="local-summary">Through AI-powered innovations, we are continuously working to create value and happiness for a diverse range of stakeholders.</p>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/company/bg-local-head-company-introduction.jpg" alt="Company View Image">
                        <!-- <video preload="auto" autoplay loop muted src="/assets/movies/bg-local-head-company-introduction.mp4"></video> -->
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head blind">Introduction</div>
                    <div class="content-body">
                        <!-- tab-display -->
                        <div class="tab-display design1 case1 type1">
                            <div class="swiper tab-wrap">
                                <ul class="swiper-wrapper tab-list" role="tablist">
                                    <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1"><button role="tab" class="tab-text" id="headquarter" onclick="tabClickEvent(event)">SK Networks</button></li>
                                    <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2"><button role="tab" class="tab-text" id="subsidiaries" onclick="tabClickEvent(event)">Subsidiaries and Brand</button></li>
                                </ul>
                            </div>
                        </div>
                        <!-- //tab-display -->
                        <!-- panel-display -->
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
                                                        <div class="data-item active">Founded as Sunkyong Textiles in 1953, SK Networks has continuously evolved alongside Korea’s industrial advancements.</div>
                                                        <div class="data-item">Over the decades, the Company has expanded from trade and distribution to encompass ICT device distribution, communications infrastructure management, global trading, car care services, eco-friendly appliance rentals, hotels &amp; resorts operations.</div>
                                                        <div class="data-item">SK Networks is committed to evolving into an AI-driven company by leveraging its specialized network in future technologies and a systematic portfolio management process.</div>
                                                        <div class="data-item">To achieve this, we will integrate AI into our business portfolio and expand our data solutions and AI-related services to drive future innovation.</div>
                                                    </div>
                                                    <div class="post-list">
                                                        <div class="post-wrap">
                                                            <div class="post-item active"><img src="/assets/images/company/story1-figure-01.jpg" alt="Factory Image"></div>
                                                            <div class="post-item"><img src="/assets/images/company/story1-figure-02.jpg" alt="Distribution Highway Image"></div>
                                                            <div class="post-item"><img src="/assets/images/company/story1-figure-03.jpg" alt="Mobile phone Image"></div>
                                                            <div class="post-item"><img src="/assets/images/company/story1-figure-04.jpg" alt="SK electlink Image"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section story2" data-section-animation="case-2">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <span class="section-sub">Since 1953</span>
                                                        <h4 class="section-name">Since 1953, 70 years with our customers</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="post-list">
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-01.jpg" alt="1953 Incorporation of Sunkyong Textiles"></div>
                                                                <p class="post-date">1953 Incorporation of Sunkyong Textiles</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-02.jpg" alt="1953 Administrative Building Used as Office at the Time of Establishment"></div>
                                                                <p class="post-date">1953 Administrative Building Used as Office at the Time of Establishment</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-03.jpg" alt="1956 Seoul Liaison Office of Sunkyong Textiles, Yeonji-dong, Jongno-gu"></div>
                                                                <p class="post-date">1956 Seoul Liaison Office of Sunkyong Textiles,<br> Yeonji-dong, Jongno-gu</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-04.jpg" alt="1959 Sunkyong Textiles Main Building"></div>
                                                                <p class="post-date">1959 Sunkyong<br> Textiles Main Building</p>
                                                            </div>
                                                        </div>
                                                        <!-- <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-05.jpg" alt="1969 Established"></div>
                                                                <p class="post-date">1969 Establishment of Sunkyong Chemical Fiber</p>
                                                            </div>
                                                        </div> -->
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-06.jpg" alt="1969 Daeyeongak Building"></div>
                                                                <p class="post-date">1969 Daeyeongak Building</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-07.jpg" alt="1971 Seoul Offices of Sunkyong Companies Relocated to Baeknam Building"></div>
                                                                <p class="post-date">1971 Seoul Offices of Sunkyong Companies Relocated to Baeknam Building</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-08.jpg" alt="1976 Donghwa Building on Namdaemun-ro Acquired"></div>
                                                                <p class="post-date">1976 Donghwa Building on Namdaemun-ro Acquired</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-09.jpg" alt="1988 Relocated to Euljiro Office"></div>
                                                                <p class="post-date">1988 Relocated to Euljiro Office</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-10.jpg" alt="2003 Relocated to Myeongdong Office"></div>
                                                                <p class="post-date">2003 Relocated to Myeongdong Office</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-11.jpg" alt="2005"></div>
                                                                <p class="post-date">2005</p>
                                                            </div>
                                                        </div>
                                                        <!-- <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-12.jpg" alt="2012 Company View"></div>
                                                                <p class="post-date">2012</p>
                                                            </div>
                                                        </div>
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-13.jpg" alt="2019 Company View"></div>
                                                                <p class="post-date">2019</p>
                                                            </div>
                                                        </div> -->
                                                        <div class="post-item">
                                                            <div class="post-wrap">
                                                                <div class="post-figure"><img src="/assets/images/company/story2-figure-14.jpg" alt="2021 Offices Relocated to Samil Building"></div>
                                                                <p class="post-date">2021 Offices Relocated to Samil Building</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- <div class="section story3" data-section-animation="case-1">
                                            <div class="section-body">
                                                <div class="post-list">
                                                    <div class="post-item">
                                                        <div class="post-wrap">
                                                            <div class="post-head">
                                                                <em class="post-sub">이러한 기업문화를 바탕으로</em>
                                                            </div>
                                                            <div class="post-body">
                                                                <p class="para">
                                                                    고객중심의<br class="mo-only"> 새로운 가치를 찾는<br>
                                                                    SK네트웍스의 모습을<br class="mo-only"> 완성하겠습니다.
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section story4" data-section-animation="case-1">
                                            <div class="section-body">
                                                <div class="data-list">
                                                    <div class="data-item one">
                                                        <p class="data-text">고객과</p>
                                                    </div>
                                                    <div class="data-item two">
                                                        <p class="data-text">함께한</p>
                                                    </div>
                                                    <div class="data-item three">
                                                        <p class="data-text"><em class="accent">70</em>년</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> -->
                                        <div class="section story5">
                                            <div class="section-head pallarax">
                                                <div class="section-subject">
                                                    <h4 class="section-name">Business</h4>
                                                </div>
                                                <p class="section-summary">
                                                    SK Networks operates in information and communication distribution, global trading, mobility, hotels, and eco-friendly appliance rental businesses. We leverage our competitive advantages, including domestic and international network hubs, strong business partnerships, and robust logistics capabilities.
                                                </p>
                                            </div>
                                            <div class="section-body pallarax">
                                                <div class="post-list">
                                                    <div class="post-item">
                                                        <div class="product-list">
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story5-product-01.jpg" alt="Company View Image"></div>
                                                                    <div class="product-body">
                                                                        <!-- <p class="para">
                                                                            SK네트웍스는 디지털 전환, Web3, 지속가능성 영역 등<br class="pc-only">
                                                                            미래 유망 사업에 대한 투자를 중심으로 포트폴리오를 확장하고<br class="pc-only">
                                                                            지속 가능한 사업형 투자회사로의 전환을 가속화하고 있습니다.
                                                                        </p> -->
                                                                        <div class="btn-display align2">
                                                                            <div class="btn-area">
                                                                                <a href="/${LANG}/business/summary" class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg"><span class="btn-text">VIEW MORE</span></a>
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
                                                                    <div class="product-figure"><img src="/assets/images/company/story5-product-02.jpg" alt="Urban View Image"></div>
                                                                </div>
                                                            </div>
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story5-product-03.jpg" alt="Water purifier image"></div>
                                                                </div>
                                                            </div>
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story5-product-04.jpg" alt="Image of air purifier"></div>
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
                                                    To become a sustainable company, SK Networks has set goals to advance ESG performance, strengthen efforts toward achieving Net Zero 2040, innovate business models that integrate social value and ESG, and embed social value and ESG principles among employees.
                                                </p>
                                            </div>
                                            <div class="section-body pallarax">
                                                <div class="post-list">
                                                    <div class="post-item">
                                                        <div class="product-list">
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story6-product-01.jpg" alt="Hotel image"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="post-item">
                                                        <div class="product-list">
                                                            <div class="product-item">
                                                                <div class="product-wrap">
                                                                    <div class="product-figure"><img src="/assets/images/company/story6-product-02.jpg" alt="Service image"></div>
                                                                    <div class="product-body">
                                                                        <p class="para">
                                                                            Through these initiatives, SK Networks will build customer trust and enhance corporate value.
                                                                        </p>
                                                                        <div class="btn-display align1">
                                                                            <div class="btn-area">
                                                                                <a href="/${LANG}/sustainability/summary" class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg"><span class="btn-text">VIEW MORE</span></a>
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
                                                                    <em class="data-name">Date of Establishment</em>
                                                                </div>
                                                            </div>
                                                            <p class="data-body">April 8, 1953</p>
                                                        </div>
                                                    </div>
                                                    <div class="data-item pallarax">
                                                        <div class="data-wrap">
                                                            <div class="data-head">
                                                                <div class="data-subject">
                                                                    <em class="data-name">Sales(Consolidated)</em>
                                                                </div>
                                                            </div>
                                                            <p class="data-body">KRW 7.7 trillion</p>
                                                            <span class="data-base">As of 2024</span>
                                                        </div>
                                                    </div>
                                                    <div class="data-item pallarax">
                                                        <div class="data-wrap">
                                                            <div class="data-head">
                                                                <div class="data-subject">
                                                                    <em class="data-name">Operating Profit(Consolidated)</em>
                                                                </div>
                                                            </div>
                                                            <p class="data-body">KRW 114 billion</p>
                                                            <span class="data-base">As of 2024</span>
                                                        </div>
                                                    </div>
                                                    <div class="data-item pallarax">
                                                        <div class="data-wrap">
                                                            <div class="data-head">
                                                                <div class="data-subject">
                                                                    <em class="data-name">Credit Ratings</em>
                                                                </div>
                                                            </div>
                                                            <p class="data-body">AA-(Stable)</p>
                                                            <span class="data-base">As of 2024</span>
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
                                                <!-- <p class="section-summary">
                                                    SK네트웍스는 국내 주요 거점에 물류센터를 운영하며 안정적인 유통망을 구축하고 있습니다.<br>
                                                    나아가 미국, 중국, 호주, 일본 등 전 세계 주요 국가에 걸친 폭넓은 네트워크를 통해<br class="pc-only">
                                                    가전, 트레이딩, 투자 등 다양한 글로벌 사업을 전개해 나가고 있습니다.
                                                </p> -->
                                                <div class="section-util">
                                                    <div class="btn-display align1">
                                                        <div class="btn-area">
                                                            <a href="/${LANG}/company/global-network" class="btn design3 case1 type1 color3 ar-icon-arrow-right2-bg"><span class="btn-text">VIEW MORE</span></a>
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
                                                                    <em class="board-name">Overseas</em>
                                                                </div>
                                                            </div>
                                                            <div class="board-body">
                                                                <div class="data-list">
                                                                    <div class="data-item"><span class="data-text">SK Networks (Shanghai  PingHu  Xiamen)  Co., Ltd.</span></div>
                                                                    <div class="data-item"><span class="data-text">SK Networks Japan Co., Ltd.</span></div>
                                                                    <div class="data-item"><span class="data-text">SK Networks Hong Kong Ltd.</span></div>
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
                                                                    <em class="board-name">Domestic​</em>
                                                                </div>
                                                            </div>
                                                            <div class="board-body">
                                                                <div class="data-list case1">
                                                                    <div class="data-item"><span class="data-text">Seoul Office</span></div>
                                                                    <div class="data-item"><span class="data-text">Western Branch Office  (Daejeon Gwangju)</span></div>
                                                                    <div class="data-item"><span class="data-text">Eastern Branch Office (Daegu Busan)</span></div>
                                                                    <div class="data-item"><span class="data-text">Icheon Distribution Center</span></div>
                                                                    <div class="data-item"><span class="data-text">Anseong Distribution Center</span></div>
                                                                    <div class="data-item"><span class="data-text">Busan Distribution Center</span></div>
                                                                    <div class="data-item"><span class="data-text">Daegu Distribution Center</span></div>
                                                                    <div class="data-item"><span class="data-text">Daejeon Distribution Center</span></div>
                                                                    <div class="data-item"><span class="data-text">Gwangju Distribution Center</span></div>
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
                                                    SK Networks and its subsidiaries are poised to drive future innovation by integrating AI into their business portfolios.
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
                                                        <img src="/assets/images/company/company-logo-darakhyu.png" alt="Darakhyu">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalSKNetworks" class="data-item">
                                                        <img src="/assets/images/company/company-logo-sknetworks-en.png" alt="SK Networks">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalSKMagic" class="data-item">
                                                        <img src="/assets/images/company/company-logo-skIntellix-en.png" alt="SK Intellix">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalSpeedMate" class="data-item">
                                                        <img src="/assets/images/company/company-logo-speedmate-en.png" alt="SK SpeedMate">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalMintit" class="data-item">
                                                        <img src="/assets/images/company/company-logo-mintit.png" alt="MINTIT">
                                                    </button>
                                                    <button data-bs-toggle="modal" data-bs-target="#modalEncore" class="data-item">
                                                        <img src="/assets/images/company/company-logo-en-core.png" alt="En-core">
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
                        <!-- //panel-display -->
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
    <!-- Modal -->
    <!-- Modal -->
    <div class="modal design1 medium" id="modalWalkerhill" tabindex="-1" aria-labelledby="modalWalkerhillLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalWalkerhillLabel">
                        <em class="modal-subjec"><span class="modal-name">Grand Walkerhill Seoul</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/hotel-and-resort">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        Surrounded by the scenic Han River and the lush Achasan Mountain, Grand Walkerhill Seoul stands as the premier urban retreat.
                                        Offering guests both comfort and tranquility, the hotel is distinguished by its luxurious facilities and exceptional services.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <!-- btn-display -->
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.walkerhill.com/grandwalkerhillseoul" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Go to Website</span></a>
                                            <a href="https://www.facebook.com/grandwalkerhillseoul" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Facebook</span></a>
                                            <a href="https://goo.gl/Djs4NY" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Instagram</span></a>
                                        </div>
                                    </div>
                                    <!-- //btn-display -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalVista" tabindex="-1" aria-labelledby="modalVistaLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalVistaLabel">
                        <em class="modal-subjec"><span class="modal-name">Vista Walkerhill Seoul</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/hotel-and-resort">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        Embracing the latest trends, Vista Walkerhill Seoul offers a fresh and vibrant escape, delivering invigorating energy and novel experience to all who visit under the slogan ‘REFRESHING. VIVIDLY.’ Through its unique and innovative offerings, the hotel ensures a revitalizing and distinctive stay.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <!-- btn-display -->
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.walkerhill.com/vistawalkerhillseoul/" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Go to Website</span></a>
                                            <a href="https://www.facebook.com/vistawalkerhill/?fref=ts" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Facebook</span></a>
                                            <a href="https://goo.gl/vWMyhh" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Instagram</span></a>
                                        </div>
                                    </div>
                                    <!-- //btn-display -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalDouglasHouse" tabindex="-1" aria-labelledby="modalDouglasHouseLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalDouglasHouseLabel">
                        <em class="modal-subjec"><span class="modal-name">Douglas House</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/hotel-and-resort">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        Pause your busy life and discover a moment of tranquility at Douglas House, a lifestyle hotel. With its nature-inspired interiors and thoughtfully curated services, Douglas House provides a truly relaxing experience.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <!-- btn-display -->
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.walkerhill.com/grandwalkerhillseoul/kr/douglas/Intro" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Go to Website</span></a>
                                            <a href="https://www.instagram.com/douglashouse_hotel/" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Instagram</span></a>
                                        </div>
                                    </div>
                                    <!-- //btn-display -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalDarakhyu" tabindex="-1" aria-labelledby="modalDarakhyuLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalDarakhyuLabel">
                        <em class="modal-subjec"><span class="modal-name">DarakHyu</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/hotel-and-resort">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        DarakHyu, Korea's first capsule hotel, offers the ideal space for a comfortable and budget-friendly stay. With its cozy facilities and warm hospitality, it provides travelers with a private and tranquil retreat.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <!-- btn-display -->
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.walkerhill.com/darakhyu/t1/kr/" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Go to Website</span></a>
                                            <a href="https://www.facebook.com/darakhyu/" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Facebook</span></a>
                                            <a href="https://www.instagram.com/p/BzXcSzVBzaP/?img_index=1" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Instagram</span></a>
                                        </div>
                                    </div>
                                    <!-- //btn-display -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalSKNetworks" tabindex="-1" aria-labelledby="modalSKNetworksLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalSKNetworksLabel">
                        <em class="modal-subjec"><span class="modal-name">SK Networks Service</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/information-communication">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        SK Networks Service, building on years of accumulated ICT expertise, is committed to securing a competitive edge and creating new opportunities and customer value.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <!-- btn-display -->
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.sknservice.com/index.do" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Go to Website</span></a>
                                        </div>
                                    </div>
                                    <!-- //btn-display -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalSKMagic" tabindex="-1" aria-labelledby="modalSKMagicLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalSKMagicLabel">
                        <em class="modal-subjec"><span class="modal-name">SK Intellix</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/sk-intellix">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        SK Magic is building an AI collaboration ecosystem and introducing new AI-driven products and services to adapt to rapidly changing market environments. We aim to evolve into an AI wellness platform company, deeply rooted in customer relationships, and to expand our presence beyond the domestic market to the global stage.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <!-- btn-display -->
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.skintellix.com" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Go to Website</span></a>
                                            <a href="https://www.facebook.com/SKmagic.life" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Facebook</span></a>
                                            <a href="https://goo.gl/Ku5ejU" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Instagram</span></a>
                                            <a href="https://story.kakao.com/ch/tymagic" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Kakao Story</span></a>
                                            <a href="https://cafe.naver.com/magicovenlove" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Cafe</span></a>
                                            <a href="https://post.naver.com/tymagic_magic" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Post</span></a>
                                            <a href="https://www.youtube.com/channel/UCcKmzgW07IZonw7H9MXuN7g" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Youtube</span></a>
                                        </div>
                                    </div>
                                    <!-- //btn-display -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalSpeedMate" tabindex="-1" aria-labelledby="modalSpeedMateLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalSpeedMateLabel">
                        <em class="modal-subjec"><span class="modal-name">SK Speedmate</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/skspeedmate">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">As Korea’s No. 1 brand in the automotive aftermarket, SpeedMate continues to elevate its expertise and strives for customer satisfaction through ongoing research, aiming to lead the future of the automotive care industry.</p>
                                </div>
                                <div class="section-util">
                                    <!-- btn-display -->
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.speedmate.com/" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Go to Website</span></a>
                                        </div>
                                    </div>
                                    <!-- //btn-display -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalMintit" tabindex="-1" aria-labelledby="modalMintitLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalMintitLabel">
                        <em class="modal-subjec"><span class="modal-name">MINTIT</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/mintit">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        MINTIT is building an ICT device recycling ecosystem that makes trading used phones safe and easy and easy.
                                        Through resource circulation campaigns, MINTIT is committed to contributing to environmental protection and resource conservation.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <!-- btn-display -->
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.mintit.co.kr/" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Go to Website</span></a>
                                            <a href="https://www.facebook.com/mintit.official/" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Facebook</span></a>
                                            <a href="https://www.instagram.com/mintit_official/" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Instagram</span></a>
                                            <a href="https://post.naver.com/mintit_official" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Post</span></a>
                                            <a href="https://www.youtube.com/channel/UC5bT0Fy-Ui6jJLPvw0P051g" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Youtube</span></a>
                                        </div>
                                    </div>
                                    <!-- //btn-display -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalEncore" tabindex="-1" aria-labelledby="modalEncoreLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalEncoreLabel">
                        <em class="modal-subjec"><span class="modal-name">En-core</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/en-core">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        En-core will provide top-tier services and products to help clients effectively leverage AI technologies, drawing on its extensive knowledge, data, and AI methodologies.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <!-- btn-display -->
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.en-core.com/" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Go to Website</span></a>
                                        </div>
                                    </div>
                                    <!-- //btn-display -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
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
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/global-investment">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        As SK Networks’ investment arm based in Silicon Valley, SK Networks Americas actively seeks investment opportunities in promising global tech sectors while continuously enhancing its global network and corporate value.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalGlowide" tabindex="-1" aria-labelledby="modalGlowideLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalGlowideLabel">
                        <em class="modal-subjec"><span class="modal-name">Glowide</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/glowide">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        With over 50 years of expertise in import and export, Glowide has established a robust and sustainable revenue structure through extensive networking with trusted trading partners. The company is enhancing its corporate value by integrating AI technology to improve market data analysis capabilities.
                                    </p>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case2">
                                        <div class="btn-area">
                                            <a href="https://www.glowide.kr/" target="_blank" title="Opens in a new window." class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2"><span class="btn-text">Go to Website</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal design1 medium" id="modalPhnyXLab" tabindex="-1" aria-labelledby="modalPhnyXLabLabel" aria-hidden="true">
        <div class="modal-inner modal-dialog">
            <div class="modal-area">
                <div class="modal-wrap">
                    <div class="modal-head" id="modalPhnyXLabLabel">
                        <em class="modal-subjec"><span class="modal-name">PhnyX Lab</span></em>
                    </div>
                    <div class="modal-body">
                        <div class="section design1 case7 type4 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <a class="btn design2 case1 type1 color4" href="/${LANG}/business/phnyx-lab">
                                        <span class="btn-text">Learn more</span>
                                    </a>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        PhnyX Lab, founded in Silicon Valley, USA, develops and provides AI-powered services.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-fuc">
                    <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">close</span></button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
