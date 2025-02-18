<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Overview of Sustainable Management &lt; Sustainability &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
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

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main esg overview" id="main">
        <div class="main-inner">
            <div class="local case2">
                <div class="local-head design4" data-local-animation="case-1">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Overview of Sustainable Management</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Sustainability</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Overview of Sustainable Management</h3>
                            <p class="local-summary">As an AI Company, SK Networks aims to enable more people to benefit from AI technology, adding economic value and universal human values to boost the happiness of various stakeholders.</p>
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
                    <div class="content-head">ESG Summary</div>
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
                                                        <h4 class="post-name">To grow into a sustainable company, SK Networks has established the following goals: enhancing ESG performance, intensifying efforts to achieve Net Zero 2040, innovating business models linked to social value, and embedding social value within our employees.</h4>
                                                    </div>
                                                </div>
                                                <div class="post-figure">
                                                    <div class="post-figure-wrap">
                                                        <img src="/assets/images/sustainability/story1-figure-01.jpg" alt="an image of a road in the woods">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item second">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <div class="post-figure-wrap">
                                                        <img src="/assets/images/sustainability/story1-figure-02.jpg" alt="the image of the sea">
                                                    </div>
                                                </div>
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">Striving for Sustainable Happiness of Various Stakeholders</h4>
                                                    </div>
                                                    <p class="post-summary">By implementing ESG practices, we will earn market trust and enhance our corporate value.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post-display slide">
                                        <ul class="post-list first">
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-01.jpg" alt="an image of a child and a woman running together"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-02.jpg" alt="eco-friendly road image"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-03.jpg" alt="Image of a man standing in the desert"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-04.jpg" alt="an image of a swing child"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-05.jpg" alt="The image of a man and a woman cooking together"></li>
                                        </ul>
                                        <ul class="post-list second">
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-06.jpg" alt="an image of a child playing with soap bubbles"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-07.jpg" alt="an image of a surfing man"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-08.jpg" alt="Coastal road image"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-09.jpg" alt="an image of dirt in one's hand"></li>
                                            <li class="post-item"><img src="/assets/images/sustainability/post-slide-10.jpg" alt="an enlarged image of a leaf"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="section story2">
                            <div class="section-bg"><span class="blind">Background image</span></div>
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Social Value</h4>
                                        <p class="section-summary">Creating Social Value through Value Innovation in Harmony.</p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="post-list">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">Pursuing Stakeholder Happiness</h4>
                                                    </div>
                                                </div>
                                                <div class="post-body">
                                                    <p class="para">Underpinned by our commitment to Stakeholder Happiness, we actively promote sustainable management by creating both economic value and social value in all our business activities.</p>
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
                                                    <p class="para">This is SK’s management principle, emphasizing mutual growth with society. We strive to deliver both economic and social values, seeking harmony and balance with stakeholder happiness.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item item3">
                                            <div class="post-wrap">
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">Social Value Outcomes</h4>
                                                    </div>
                                                </div>
                                                <div class="post-body">
                                                    <p class="para">We have quantitatively measured social value generated across all our business activities. SK Networks remains committed to boosting sustainability in favor of the happiness of employees and stakeholders.</p>
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
                                                    <p class="para">The ultimate goal of SK management is the happiness of its employees. By boosting economic value through social value creation and building relationships of trust with stakeholders, SK aims to achieve harmony and balance in happiness, the ultimate value we pursue.</p>
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
                                                        <img src="/assets/images/sustainability/story4-mark-01.png" alt="Korea ESG Standards Institute Logo">
                                                    </div>
                                                </div>
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">KCGS Comprehensive Rating A+ 2024</h4>
                                                    </div>
                                                </div>
                                                <div class="post-date">2024</div>
                                                <div class="post-body">
                                                    <p class="para">The KCGS is Korea’s leading ESG rating body, assessing the ESG performance of companies listed on the stock exchange. SK Networks received an ‘A+’ rating in 2024</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <div class="post-figure-wrap">
                                                        <img src="/assets/images/sustainability/story4-mark-02.png" alt="MSCI Logo">
                                                    </div>
                                                </div>
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">MSCI Rating of BBB</h4>
                                                    </div>
                                                </div>
                                                <div class="post-date">2023</div>
                                                <div class="post-body">
                                                    <p class="para">Morgan Stanley Capital International (MSCI) is one of the most influential ESG rating agencies worldwide, evaluating companies’ ESG performance based on publicly available data and considering their core business models and industrial characteristics. SK Networks has received ‘BBB’ rating in the ESG category.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <div class="post-figure-wrap">
                                                        <img src="/assets/images/sustainability/story4-mark-03.png" alt="CDP Logo">
                                                    </div>
                                                </div>
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">CDP Climate Change<br class="pc-only"> Leadership A Grade</h4>
                                                    </div>
                                                </div>
                                                <div class="post-date">2023</div>
                                                <div class="post-body">
                                                    <p class="para">In the Climate Change category of the CDP (Carbon Disclosure Project), which assesses the climate change responses of major listed companies worldwide, SK Networks has been honored with the highest Leadership A Grade, placing us in the top 1.5% of companies worldwide.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <div class="post-figure-wrap">
                                                        <img src="/assets/images/sustainability/story4-mark-04.png" alt="S&P Global Logo">
                                                    </div>
                                                </div>
                                                <div class="post-head">
                                                    <div class="post-subject">
                                                        <h4 class="post-name">S&P Global CSA Score<br class="pc-only"> 53/100</h4>
                                                    </div>
                                                </div>
                                                <div class="post-date">2023</div>
                                                <div class="post-body">
                                                    <p class="para">As one of the top three global credit rating agencies, S&P evaluates the sustainability (ESG) of corporations. Based on the 2023 results, SK Networks was listed as an excellent company in the S&P Global Sustainability Report.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section story5">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">We transparently disclose ESG information<br class="pc-only"> in line with international standards.</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="data-display design2 case1 type1">
                                        <ul class="data-list">
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-date">2023 Sustainability Report</p>
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
                                                        <p class="item-date">2022 Sustainability Report</p>
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
                                                        <p class="item-date">2021 Sustainability Report</p>
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
                                            <a href="/${LANG}/sustainability/reference-room/reports-and-policies" class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg"><span class="btn-text">VIEW MORE</span></a>
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

</body>

</html>
