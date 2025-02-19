<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 24. 9. 3.
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>PhnyX Lab &lt; Business &lt; SK Networks</title>
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover"> -->
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="https://unpkg.com/@studio-freight/lenis@1.0.32/dist/lenis.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            localAnimations_Case02();

            const swiper = new Swiper(".swiper.design2", {
                slidesPerView: 1,
                centeredSlides: true,
                spaceBetween: 0,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
            });
        });
    </script>
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main business phnyxLab" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">PhnyX Lab</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name en">Empower AI transformation for enterprises,<br class="pc-only"> becoming an enterprise AI engine</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">PhnyX Lab</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <picture>
                            <source media="(max-width: 1023px)" srcset="/assets/images/business/bg-local-head-business-phnyxLab-mo.jpg">
                            <img src="/assets/images/business/bg-local-head-business-phnyxLab-pc.jpg" alt="">
                        </picture>
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">PhnyX Lab</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">PhnyX Lab</h3>
                                            <h4 class="sub-title">PhnyX Lab, founded in Silicon Valley, USA, develops and provides AI-powered services.</h4>
                                        </div>
                                        <div class="article-figure">
                                            <div class="figure-logo">
                                                <picture>
                                                    <source media="(max-width: 1023px)" srcset="/assets/images/business/business-phnyxLab-logo-mo.png">
                                                    <img src="/assets/images/business/business-phnyxLab-logo-pc.png" alt="phnyxLab logo">
                                                </picture>
                                            </div>
                                            <div class="figure-office">
                                                <div class="figure-list">
                                                    <div class="figure-item">
                                                        <picture>
                                                            <source media="(max-width: 1023px)" srcset="/assets/images/business/business-phnyxLab-office-a-mo.jpg">
                                                            <img src="/assets/images/business/business-phnyxLab-office-a-pc.jpg" alt="">
                                                        </picture>
                                                        <span class="figure-text">Palo Alto Office</span>
                                                    </div>
                                                        <div class="figure-item">
                                                        <picture>
                                                            <source media="(max-width: 1023px)" srcset="/assets/images/business/business-phnyxLab-office-b-mo.jpg">
                                                            <img src="/assets/images/business/business-phnyxLab-office-b-pc.jpg" alt="">
                                                        </picture>
                                                        <span class="figure-text">Seoul Gangnam Office</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                PhnyX Lab is an AI tech startup founded in Silicon Valley, the hub of global cutting-edge technology, with the mission of providing AI technology and services for future innovation.
                                            </p>
                                            <p class="para case2">
                                                With a goal of revolutionizing search process and driving fundamental changes in both personal work environment and corporate culture through verifiable generative AI solutions, the company develops globally competitive AI-based services by leveraging its expertise and local network.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type9 gen-ai">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Core Competitive Advantages</h4>
                                        <p class="section-summary accent color7">Development of Modular RAG-based enterprise Gen AI solutions</p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        PhnyX Lab’s core architecture is Modular RAG, a technology that not only overcomes the limitations of LLMs* but also enhances RAG** to a more advanced level. Leveraging this Modular RAG, PhnyX Lab’s enterprise AI solutions deliver accurate, highly secure, and reliable information to clients in real time.                                    </p>
                                    <p class="para">
                                        PhnyX Modular RAG is a modular architecture that assembles RAG components like building blocks, automating use-case optimization to minimize manual effort while ensuring top performance.                                    </p>
                                    <div class="figure-wrap">
                                        <picture>
                                            <source media="(max-width: 1023px)" srcset="/assets/images/business/business-phnyxLab-gen-ai-mo.jpg">
                                            <img src="/assets/images/business/business-phnyxLab-gen-ai-en-pc.jpg" alt="Key features of PhnyX Modular RAG. Minimizes manual effort. Reduces development time bt 50%, Optimizes performance. Enhances performance by up to 40%">
                                        </picture>
                                    </div>
                                    <div class="board-list design22 case1">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <span class="board-subject">Flexibility</span>
                                                </div>
                                                <div class="board-body">
                                                    <p class="para">Providing a flexible system and hyper-personalized solutions</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <span class="board-subject">Security</span>
                                                </div>
                                                <div class="board-body">
                                                    <p class="para">Modular RAG hybrid architecture / Enterprise data securely stored in VPC</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <span class="board-subject">Scalability</span>
                                                </div>
                                                <div class="board-body">
                                                    <p class="para">Data optimization through modules designed for specific storage</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="comment design1">
                                        *LLMs: Large Language Models<br>
                                        **RAG: Retrieval-Augmented Generation<br>
                                        ***VPC: Virtual Private Cloud
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case3 type1 business">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="data-display business-network case2">
                                        <div class="data-head">
                                            <strong class="data-name">주요 제품</strong>
                                        </div>
                                        <div class="data-body">
                                            <div class="data-list">
                                                <div class="data-item">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">국내 최초 Modular RAG 기반 의약학 특화 솔루션, 케이론(Cheiron)</strong>
                                                        <p class="para">케이론(Cheiron)은 국내 최초 의약학 특화 생성형 AI 솔루션으로, 의학 학술 정보 분류 체계인 메쉬(Medical Subject Headings, MeSH) 키워드를 이해하고, 펍메드(PubMed), 시맨틱 스칼라(Semantic Scholar) 등 다양한 플랫폼을 활용하여 전문적인 정보를 제공합니다.</p>
                                                        <p class="para">또한 일반 검색 엔진, 기업 내부 문서 등 다양한 출처의 데이터를 하나의 플랫폼에서 검색할 수 있어 업무 효율성을 높이는 것은 물론, 다양한 언어 서비스를 제공해 글로벌 확장성도 뛰어납니다. 피닉스랩은 케이론을 시작으로 다양한 산업 분야로 AI 솔루션을 확장하여 기업용 AI 민주화에 기여할 계획입니다.</p>
                                                    </div>
                                                </div>
                                                <div class="data-item">
                                                    <div class="swiper-area">
                                                        <div class="swiper-display swiper design2">
                                                            <ul class="swiper-wrapper">
                                                                <li class="swiper-slide">
                                                                    <img src="/assets/images/business/business-phnyxLab-slide-a.jpg" alt="의약학 분야의 신뢰할 수 있는 학술 논문을 검색합니다.">
                                                                </li>
                                                                <li class="swiper-slide">
                                                                    <img src="/assets/images/business/business-phnyxLab-slide-b.jpg" alt="웹에서 다양한 정보와 자료를 찾아">
                                                                </li>
                                                                <li class="swiper-slide">
                                                                    <img src="/assets/images/business/business-phnyxLab-slide-c.jpg" alt="">
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="swiper-control">
                                                            <div class="swiper-button-next">
                                                                <span class="btn icon case1 arrow-right2-bg"><span class="btn-text blind">다음</span></span>
                                                            </div>
                                                            <div class="swiper-button-prev">
                                                                <span class="btn icon case1 arrow-left2-bg"><span class="btn-text blind">이전</span></span>
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
                        <div class="section design1 case3 type1 banner-section">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="banner design3 case1 type1">
                                        <div class="banner-wrap">
                                            <div class="banner-head">
                                                <img src="/assets/images/logo/logo-phnyxLab.png" alt="En-core 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">피닉스랩은 여러분의 소중한 제안을<br class="mo-only"> 기다리고 있습니다.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="javascript:void(0)" target="_blank">
                                                    <span class="btn-text">문의하기</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:if test="${not empty pressList}">
                            <div class="section design1 case3 type1 press">
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">PRESS NOW</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="post-list design2 case1 type1">
                                            <c:forEach items="${pressList}" var="item" varStatus="status">
                                                <a href="/${LANG}/pr/news-room/${item.uid}" class="post-item">
                                                    <div class="post-wrap">
                                                        <div class="post-figure">
                                                            <c:choose>
                                                                <c:when test="${not empty item.addedFile}">
                                                                    <img src="<c:out value="${item.addedFile}"/>" alt="<c:out value="${item.description}"/>">
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="press now 썸네일 이미지">
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </div>
                                                        <div class="post-inform">
                                                            <div class="post-head">
                                                                <p class="post-caption"><c:out value="${item.businessAreaNameEn}"/></p>
                                                                <p class="post-subject"><c:out value="${item.title}"/></p>
                                                                <p class="post-summary"><c:out value="${ntUtil:toBr(ntUtil:removeHtml(item.content))}"/></p>
                                                            </div>
                                                            <p class="post-date" title="date of registration"><c:out value="${item.regDate}"/></p>
                                                        </div>
                                                    </div>
                                                </a>
                                                <c:set var="businessName" value="${item.businessAreaNameEn}"/>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="section-util btn-display align3">
                                        <div class="btn-area">
                                            <a class="btn design3 case1 type1 color2 ar-icon-plus-bg" href="/${LANG}/pr/news-room?currentPage=1&searchWord=<c:out value="${businessName}"/>"><span class="btn-text">View more</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
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