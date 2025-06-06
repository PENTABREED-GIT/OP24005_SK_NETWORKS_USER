<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>ESG 개요 &lt; Sustainability &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            localAnimations_Case01();
        });
    </script>
    <script>
        $(document).ready(function() {
            gsap.utils.toArray('.story1 .post-list.visaul .post-item.first .post-figure').forEach((item, index) => {
                gsap.to(item, {
                    scrollTrigger: {
                        trigger: ".story1 .post-list.visaul",
                        //markers: true,
                        start: "center bottom",
                        end: "bottom center",

                        onEnter: function(self) {
                            $(item).parents('.post-item.first').addClass('active1');
                        },
                        onLeave: function(self) {
                            $(item).parents('.post-item.first').addClass('active2');
                            $('.post-item.second').addClass('active');
                        },
                        onLeaveBack: function(self) {
                            $(item).parents('.post-item.first').removeClass('active1');
                            $('.post-item.second').removeClass('active');
                        },
                        onEnterBack: function(self) {
                            $(item).parents('.post-item.first').removeClass('active2');
                            $(item).parents('.post-item.first').addClass('active1');
                            $('.post-item.second').removeClass('active');
                        },
                    },
                });
            });

            gsap.utils.toArray('.post-display.slide .first').forEach((item, index) => {
                gsap.to(item, {
                    x: '45%',
                    scrollTrigger: {
                        trigger: item.closest('.story1'),
                        //markers: true,
                        start: "center bottom",
                        end: "bottom top",
                        scrub: true,
                    },
                });
            });

            gsap.utils.toArray('.post-display.slide .second').forEach((item, index) => {
                gsap.to(item, {
                    x: '-45%',
                    scrollTrigger: {
                        trigger: item.closest('.story1'),
                        //markers: true,
                        start: "center bottom",
                        end: "bottom top",
                        scrub: true,
                    },
                });
            });

            ScrollTrigger.matchMedia({
                // PC size
                "(min-width: 1024px)": function() {
                    const tl = gsap.timeline({
                        scrollTrigger: {
                            trigger: '.story2',
                            //markers: true,
                            start: "top center",
                            end: "center center",
                            scrub: true,
                        }
                    });

                    tl.to(".section-bg", {
                            y: '-30px'
                        })
                        .to(".story2", {
                            y: '-300px'
                        }, "<")
                        .to(".story2 .item2", {
                            y: '80px'
                        }, "<")
                        .to(".story2 .item3", {
                            y: '0'
                        }, "<")
                        .to(".story2 .item4", {
                            y: '80px'
                        }, "<");
                },

                // Mobile size
                "(max-width: 1023px)": function() {
                    const tl = gsap.timeline({
                        scrollTrigger: {
                            trigger: '.story2',
                            //markers: true,
                            start: "top center",
                            end: "center center",
                            scrub: true,
                        }
                    });

                    tl.to(".section-bg", {
                            y: '-30px'
                        })
                        .to(".story2", {
                            y: '-200px'
                        }, "<")
                        .to(".story2 .item2", {
                            y: '0'
                        }, "<")
                        .to(".story2 .item3", {
                            y: '0'
                        }, "<")
                        .to(".story2 .item4", {
                            y: '0'
                        }, "<");
                }
            });

            gsap.utils.toArray('.story3 .data-list').forEach((item, index) => {
                gsap.to(item, {
                    y: '0',
                    scrollTrigger: {
                        trigger: '.story3',
                        //markers: true,
                        start: "top center",
                        end: "bottom bottom",
                        scrub: true,
                    },
                });
            });

            gsap.utils.toArray('.story4').forEach((item, index) => {
                gsap.to(item, {
                    scrollTrigger: {
                        trigger: '.story4',
                        //markers: true,
                        start: "top center",
                        end: "bottom top",
                        scrub: true,
                        onEnter: function(self) {
                            // console.log('들어갔다.')
                            $('.story4').addClass('active');
                        },
                        onLeave: function(self) {
                            // console.log('나갔다.')
                            $('.story4').removeClass('active');
                        },
                        onLeaveBack: function(self) {
                            // console.log('나갔다돌아옴')
                            $('.story4').removeClass('active');
                        },
                        onEnterBack: function(self) {
                            // console.log('완전 나갔다 돌아옴')
                            $('.story4').addClass('active');
                        },
                    },
                });
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
    <div class="main esg overview" id="main">
        <div class="main-inner">
            <div class="local case2">
                <div class="local-head design4" data-local-animation="case-1">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Sustainability 개요</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Sustainability</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">지속가능경영 개요</h3>
                            <p class="local-summary">SK네트웍스는 AI Company로서 더 많은 사람들이 AI 관련 혜택을 누리게 하고, 경제적 가치와 인류의 보편적 가치를 더해 다양한 이해관계자들의 행복에 기여하겠습니다.</p>
                        </div>
                    </div>
                    <div class="local-figure">
                        <video preload="auto" autoplay loop muted playsinline poster="/assets/images/sustainability/bg-local-head-esg-overview.jpg" src="/assets/movies/bg-local-head-esg-overview.mp4"></video>
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">ESG 개요 페이지</div>
                    <div class="content-body">
                        <div class="section story1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Our Goal</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="post-list visaul">
                                        <div class="post-item first">
                                            <div class="post-wrap">
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">SK네트웍스는 지속가능한 기업으로의 성장을 위해 ESG 성과 고도화, Net Zero 2040 실행력 강화, 사회적가치 연계 비즈니스 모델 혁신, 구성원 사회적가치 내재화라는 목표를 수립했습니다.</h4>
                                                    </div>
                                                </div>
                                                <div class="post-figure">
                                                    <div class="post-figure-wrap">
                                                        <img src="/assets/images/sustainability/story1-figure-01.jpg" alt="숲 속 도로 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item second">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <div class="post-figure-wrap">
                                                        <img src="/assets/images/sustainability/story1-figure-02.jpg" alt="바다 이미지">
                                                    </div>
                                                </div>
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">다양한 이해관계자들의<br> 지속가능한 행복을 위해 노력합니다.</h4>
                                                    </div>
                                                    <p class="post-summary">ESG 실행 지원을 통해 시장 신뢰를 확보하고<br> 기업가치 제고에 기여하겠습니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post-display slide">
                                        <ul class="post-list first">
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-01.jpg" alt="아이와 여자가 함께 뛰노는 이미지"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-02.jpg" alt="친환경 도로 이미지"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-03.jpg" alt="사막에 서있는 남자 이미지"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-04.jpg" alt="그네타는 아이 이미지"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-05.jpg" alt="남자와 여자가 함께 요리하는 이미지"></li>
                                        </ul>
                                        <ul class="post-list second">
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-06.jpg" alt="아이가 비눗방울 놀이하는 이미지"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-07.jpg" alt="남자가 서핑하는 이미지"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-08.jpg" alt="해안도로 이미지"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-09.jpg" alt="손에 흙을 담고 있는 이미지"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-10.jpg" alt="나뭇잎 확대한 이미지"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="section story2">
                            <div class="section-bg"><span class="blind">배경 이미지</span></div>
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Social Value</h4>
                                        <p class="section-summary">‘같이’ 만드는 ‘가치’ 혁신으로 사회적 가치를 창출하겠습니다.</p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="post-list">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">이해관계자 행복 추구</h4>
                                                    </div>
                                                </div>
                                                <div class="post-body">
                                                    <p class="para">‘이해관계자 행복’ 추구 이념을 근간으로 하여 모든 경영활동에서 경제적 가치 창출과 함께 사회적 가치를 추구함으로써 지속가능경영을 적극적으로 추진하고 있습니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item item2">
                                            <div class="post-wrap">
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">SK Double Bottom Line</h4>
                                                    </div>
                                                </div>
                                                <div class="post-body">
                                                    <p class="para">사회와 더불어 성장하는 SK의 경영 원칙입니다. 경제적 가치와 사회적가치를 함께 증대시키며 이해관계자 행복의 조화, 균형을 지향합니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item item3">
                                            <div class="post-wrap">
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">사회적 가치 성과</h4>
                                                    </div>
                                                </div>
                                                <div class="post-body">
                                                    <p class="para">기업 활동의 전반에서 발생된 사회적 가치를 정량적으로 측정해왔습니다. 구성원과 이해관계자의 행복 추구를 위해 SK네트웍스의 지속가능성을 확보해 나가겠습니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item item4">
                                            <div class="post-wrap">
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">SK Management System</h4>
                                                    </div>
                                                </div>
                                                <div class="post-body">
                                                    <p class="para">SK 경영의 궁극적인 목적은 구성원의 행복입니다. 사회적 가치 창출을 통한 경제적 가치를 키우고 이해관계자와 신뢰 관계를 통해 행복의 조화와 균형을 이루어 나가는 것, 이것이 SK가 추구하는 궁극적인 가치입니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section story4">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">ESG Performance</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="post-list">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <div class="post-figure-wrap">
                                                        <img src="/assets/images/sustainability/story4-mark-01.png" alt="한국 ESG 기준원 로고">
                                                    </div>
                                                </div>
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">KCGS 종합등급 A+</h4>
                                                    </div>
                                                </div>
                                                <div class="post-date">2024</div>
                                                <div class="post-body">
                                                    <p class="para">
                                                        국내 대표 ESG 평가기관으로 
                                                        유가증권시장 상장사 대상<br class='pc-only'>
                                                        ESG 영역을 평가하며,<br class='pc-only'>
                                                        2024년 종합 A+ 등급 획득
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <div class="post-figure-wrap">
                                                        <img src="/assets/images/sustainability/story4-mark-02.png" alt="MSCI 로고">
                                                    </div>
                                                </div>
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">MSCI 등급 BBB</h4>
                                                    </div>
                                                </div>
                                                <div class="post-date">2024</div>
                                                <div class="post-body">
                                                    <p class="para">전 세계에서 가장 영향력 있는 ESG 평가기관으로, 기업의 공개 정보를 바탕으로 대상 기업의 핵심 비즈니스 모델과 산업군의 특성을 고려해 평가하며, ESG 영역 ‘BBB’ 등급 획득</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <div class="post-figure-wrap">
                                                        <img src="/assets/images/sustainability/story4-mark-03.png" alt="CDP 로고">
                                                    </div>
                                                </div>
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">CDP 기후변화 부문<br> Leadership A 등급</h4>
                                                    </div>
                                                </div>
                                                <div class="post-date">2024</div>
                                                <div class="post-body">
                                                    <p class="para">전 세계 주요 상장기업들의 기후변화 대응을 평가해 공개하는 글로벌 ESG 평가인 CDP(Carbon Disclosure Project) 기후변화 부문에서 SK네트웍스는 최고 등급인 ‘Leadership A등급’ 획득. (전 세계 상위 1.5%)</p>
                                                </div>
                                            </div>
                                        </div>
                                        <%--<div class="post-item">--%>
                                        <%--    <div class="post-wrap">--%>
                                        <%--        <div class="post-figure">--%>
                                        <%--            <div class="post-figure-wrap">--%>
                                        <%--                <img src="/assets/images/sustainability/story4-mark-04.png" alt="S&P Global 로고">--%>
                                        <%--            </div>--%>
                                        <%--        </div>--%>
                                        <%--        <div class="post-head">--%>
                                        <%--            <div class="post-subject">--%>
                                        <%--                <h4 class="post-name">S&amp;P Global CSA Score<br class="pc-only"> 53/100</h4>--%>
                                        <%--            </div>--%>
                                        <%--        </div>--%>
                                        <%--        <div class="post-date">2023</div>--%>
                                        <%--        <div class="post-body">--%>
                                        <%--            <p class="para">세계 3대 신용평가기관 중 하나로, 기업의 지속가능성(ESG)에 대해 평가하고 있으며 2023년 결과를 바탕으로 지속가능경영 연례보고서에 우수 기업으로 등재</p>--%>
                                        <%--        </div>--%>
                                        <%--    </div>--%>
                                        <%--</div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section story5">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">국제 표준에 맞추어<br> ESG 정보를 투명하게 공개합니다.</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="data-display design2 case1 type1">
                                        <ul class="data-list">
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-date">2023 지속가능경영 보고서</p>
                                                    </div>
                                                    <div class="item-util">
                                                        <div class="btn-display design1 case3 align1">
                                                            <div class="btn-area">
                                                                <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/ESG 개요/SK networks_2023 Sustainability Report_(Kor).pdf"><span class="btn-text">KOR</span></a>
                                                                <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/ESG 개요/SK networks_2023 Sustainability Report_(Eng).pdf"><span class="btn-text">ENG</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-date">2022 지속가능경영 보고서</p>
                                                    </div>
                                                    <div class="item-util">
                                                        <div class="btn-display design1 case3 align1">
                                                            <div class="btn-area">
                                                                <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/ESG 개요/SK networks_2022 Sustainability Report_(Kor).pdf"><span class="btn-text">KOR</span></a>
                                                                <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/ESG 개요/SK networks_2022 Sustainability Report_(Eng).pdf"><span class="btn-text">ENG</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-date">2021 지속가능경영 보고서</p>
                                                    </div>
                                                    <div class="item-util">
                                                        <div class="btn-display design1 case3 align1">
                                                            <div class="btn-area">
                                                                <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/ESG 개요/SK networks_2021 Sustainability Report_(Kor).pdf"><span class="btn-text">KOR</span></a>
                                                                <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/ESG 개요/SK networks_2021 Sustainability Report_(Eng).pdf"><span class="btn-text">ENG</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="section-util">
                                    <div class="btn-display design1 case1 align3">
                                        <div class="btn-area">
                                            <a href="/sustainability/reference-room/reports-and-policies" class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg"><span class="btn-text">보고서 전체보기</span></a>
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

</body>

</html>
