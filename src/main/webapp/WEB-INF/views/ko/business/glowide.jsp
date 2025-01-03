<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>글로와이드 &lt; Business &lt; SK Networks</title>
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
    <div class="main business globalTrading" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">글로와이드</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">화학제품 위주의 무역을 전개하며<br>비즈니스 파트너에게 가치를 전달합니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">글로와이드</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-globalTrading.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">글로와이드 페이지</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">글로와이드</h3>
                                            <h4 class="sub-title">50년 이상 이어온 글로벌 트레이딩 플레이어</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                글로와이드는 PTA*, MEG* 등 화섬(Polyester) 원료 제품과 MeOH*, 용제, PU원료* 등 석유화학 제품을 취급합니다. 국내ㆍ외 글로벌 석유화학 업체들과 장기계약을 위주로 오랜 기간 거래를 통해 수출입 및 내수 판매(한국 및 중국) 사업의 핵심 Player로 인정받고 있습니다.
                                            </p>
                                            <p class="para case2">
                                                특히 최대 수요처인 중국 시장을 중심으로 사업을 확대 중인 한편, 석유화학 제품 시장의 수급 변화에 따라 미주 및 동남아로의 확장을 동시에 모색하고 있으며, 반도체, 친환경 등 미래 성장 산업에서 추가적인 사업 기회 모색을 통해 화학·소재 사업을 지속 발전시키고자 합니다.
                                            </p>
                                            <div class="comment-wrap">
                                                <span class="comment design1">
                                                    * PTA : Purified Terephthalic Acid (고순도 테레프탈산)
                                                </span>
                                                <span class="comment design1">
                                                    * MEG : Monoethylene Glycol (모노에틸렌 글라이콜)
                                                </span>
                                                <span class="comment design1">
                                                    * MeOH : Methanol (메탄올)
                                                </span>
                                                <span class="comment design1">
                                                    * PU 원료 : Polyurethane (폴리우레탄) 원료
                                                </span>
                                            </div>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.glowide.kr" target="_blank" title="새창 열기"><span class="btn-text">글로와이드 웹사이트로 이동하기</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/ko/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="global-trading"/>
                                </jsp:include>
                            </div>
                        </div>
                        <div class="section design1 case3 type1 banner-section">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="banner design1 case1 type1">
                                        <div class="banner-wrap">
                                            <div class="banner-head">
                                                <img src="/assets/images/logo/logo-glowide.png" alt="Glowide 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">글로와이드는 여러분의 소중한 제안을 기다리고 있습니다.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/global/sk-inquiry-form">
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