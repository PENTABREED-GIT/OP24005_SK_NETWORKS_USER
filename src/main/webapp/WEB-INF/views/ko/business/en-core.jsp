<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>엔코아 &lt; Business &lt; SK Networks</title>
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
    <div class="main business encore" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">엔코아</span></li>
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">Accelerate Enterprise<br>AI Transformation</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">엔코아</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-encore.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">엔코아 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">엔코아</h3>
                                            <h4 class="sub-title">기업의 지속 가능한 데이터 관리와 활용을 지원하는 데이터 비즈니스 전문기업</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                엔코아는 지난 27년간 DATA와 IT에 대한 이해와 통찰력을 기반으로 독자적인 방법론을 수립하고 기업과 기관의 체계적인 데이터 관리와 활용을 위한 데이터 컨설팅 서비스와 데이터 통합관리 솔루션 DATAWARE™를 개발 공급하고 있습니다. 제조, 서비스, 금융, 통신, 공공, 유통, 의료, 교육 등 다양한 산업군에서 엔코아의 서비스와 제품을 활용하고 있습니다.
                                            </p>
                                            <p class="para case2">
                                                기업과 기관의 데이터 거버넌스 체계 수립, 차세대 시스템 구축, 데이터 이행과 통합, 데이터 레이크 구축, 데이터 포털 구축, 클라우드, MSA 환경 대응, 인공지능을 활용한 데이터 표준화 전략, IT 교육 등 기술 트렌드와 고객 니즈에 적합한 효율적인 전략과 전문 솔루션, 정보를 제공하며 관련 비즈니스를 확장하고 있습니다.
                                            </p>
                                            <p class="para case2">
                                                2024년에는 빠르게 변화하는 IT환경과 Tech의 비약적인 발전에 대응하며 기업과 기관의 지속 가능한 데이터 관리와 활용을 지원하는 데이터 자산화 전략과 솔루션을 제시하고자 합니다.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.en-core.com" target="_blank" title="새창 열기"><span class="btn-text">엔코아 웹사이트로 이동하기</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/ko/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="en-core"/>
                                </jsp:include>
                            </div>
                        </div>
                        <div class="section design1 case3 type1 business">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="data-display business-network">
                                        <div class="data-head">
                                            <strong class="data-name">사업 영역</strong>
                                        </div>
                                        <div class="data-body">
                                            <div class="data-list">
                                                <div class="data-item back-dataConsulting">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">데이터 컨설팅</strong>
                                                        <p class="para">엔코아는 금융, 제조, 유통, 통신, 공공 등 다양한 산업군을 이해하고 있는 전문 데이터 컨설턴트 및 솔루션 아키텍트를 보유하고 독자적인 데이터 컨설팅 서비스를 제공하고 있습니다.</p>
                                                        <p class="para">차세대 구축, 데이터 설계, 통합, 이행, 성능 관리, 품질관리, 거버넌스 등 축적된 데이터 컨설팅 노하우를 기반으로 완성된 데이터 컨설팅 방법론인 EDF™(Enterprise Data Framework)를 기반으로 고객 니즈에 대응하는 최적의 컨설팅 서비스를 제공합니다.</p>
                                                    </div>
                                                </div>
                                                <div class="data-item back-dataware">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">데이터 솔루션 DATAWARE™</strong>
                                                        <p class="para">엔코아는 기업 데이터 관리를 위하여 하나의 플랫폼으로 데이터 품질 극대화를 위한 데이터 통합 관리 솔루션 DATAWARE™를 제공합니다.</p>
                                                        <p class="para">DATAWARE™는 기업 데이터의 분석, 설계, 운용, 관리에 이르기까지 기업 전반의 데이터 관리 체계를 지원하는 통합 솔루션으로 데이터 모델링, 메타, 품질,흐름, 영향분석, 데이터이행, 운영 관리 등으로 구성되며 국제 웹 표준을 준수하고, 전자정부 프레임워크 호환을 기본으로 구성되어 있습니다.</p>
                                                        <p class="para">On-Premises 환경이나 Cloud 환경에 최적으로 서비스 모듈이 구성되어 OS와 브라우저에 구애받지 않는 서비스 제공이 가능합니다. 모든 솔루션은 플러그인 형태로 별도의 장착이 가능하며 하나의 통합 웹 기반의 관리 포털 형태로 제공되어 최적의 운영관리 환경을 제공합니다. DATAWARE™는 기업과 기관의 효율적인 데이터 매니지먼트를 위해 뛰어난 편의성과 생산성을 제공합니다.</p>
                                                    </div>
                                                    <div class="contents-figure">
                                                        <picture>
                                                            <source media="(max-width: 1023px)" srcset="/assets/images/business/dataware-figure-01-k-mo.svg">
                                                            <source media="(max-width: 1920px)" srcset="/assets/images/business/dataware-figure-01-k-pc.svg">
                                                            <img src="/assets/images/business/dataware-figure-01-k-pc.svg" alt="1. 엔코아의 독보적인 데이터컨설팅 프레임워크(EDF) 적용 2. ALL-in-One Data Platform 3. 금융, 공공, 제조, 유통 등 다양한산업계의 데이터 시스템 구축에 활용">
                                                        </picture>
                                                    </div>
                                                </div>
                                                <div class="data-item back-playData">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">IT 전문 인력 양성</strong>
                                                        <p class="para">엔코아 IT 교육센터 플레이데이터(PlayData)아카데미는 4차 산업 시대를 이끌어갈 IT 인력을 양성하는 전문 교육 센터로 엔코아의 컨설팅 노하우로 구성된 커리큘럼, 국내 최고 수준의 전담 강사로 구성되어 현장 프로젝트 중심의 맞춤형 교육 프로그램을 제공하고 있습니다.</p>
                                                        <p class="para">2017년 개원하여 현재까지 약 3000명 이상의 학생과 재직자가 엔코아 플레이데이터의 교육 과정을 수료하였습니다.</p>
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
                                    <div class="banner design1 case1 type1">
                                        <div class="banner-wrap">
                                            <div class="banner-head">
                                                <img src="/assets/images/logo/logo-encore.svg" alt="En-core 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">엔코아는 여러분의 소중한 제안을 기다리고 있습니다.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://www.en-core.com/company/contactus" target="_blank">
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
                                            <a href="/pr/news-room/${item.uid}" class="post-item">
                                                <div class="post-wrap">
                                                    <div class="post-figure">
                                                        <c:choose>
                                                            <c:when test="${not empty item.addedFile}">
                                                                <img src="<c:out value="${item.addedFile}"/>" alt="<c:out value="${item.description}"/>">
                                                            </c:when>
                                                            <c:otherwise>
                                                                <img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="ir news thumbnail image">
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                    <div class="post-inform">
                                                        <div class="post-head">
                                                            <p class="post-caption"><c:out value="${item.businessAreaNameKo}"/></p>
                                                            <p class="post-subject"><c:out value="${item.title}"/></p>
                                                            <p class="post-summary"><c:out value="${ntUtil:toBr(ntUtil:removeHtml(item.content))}"/></p>
                                                        </div>
                                                        <p class="post-date" title="등록일"><c:out value="${item.regDate}"/></p>
                                                    </div>
                                                </div>
                                            </a>
                                            <c:set var="businessName" value="${item.businessAreaNameKo}"/>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="section-util btn-display align3">
                                    <div class="btn-area">
                                        <a class="btn design3 case1 type1 color2 ar-icon-plus-bg" href="/pr/news-room?currentPage=1&searchWord=<c:out value="${businessName}"/>"><span class="btn-text">더보기</span></a>
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
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>