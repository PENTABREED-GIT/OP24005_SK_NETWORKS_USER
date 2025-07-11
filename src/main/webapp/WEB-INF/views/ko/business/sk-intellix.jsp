<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>
        SK 인텔릭스 &lt; Business &lt; SK Networks</title>
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
    <div class="main business skmagic" id="main">
        <div class="main-inner">
            <input type="hidden" name="businessType" value="magic">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">SK 인텔릭스</span></li>
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">당신만을 위한 웰니스 파트너,<br>Your Everyday Wellness Partner</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">AI Wellness Platform</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-skmagic.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">SK인텔릭스 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">SK인텔릭스</h3>
                                            <h4 class="sub-title">AI Wellness Platform Company</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                SK인텔릭스는 기존 환경가전에 국한된 ‘SK매직’의 브랜드 이미지를 넘어, 새롭게 선보이는 웰니스 로보틱스 ‘NAMUHX(나무엑스)’의 혁신성과 미래지향적인 브랜드 가치를 포괄할 수 있는 통합 브랜드 체계를 마련했다.
                                            </p>
                                            <p class="para case2">
                                                헬스 플랫폼 브랜드 SK매직은 환경가전 제조·판매 및 렌탈 서비스 역량과 브랜드 자산을 기반으로 신규 혁신 제품 카테고리를 창출해 신뢰 받는 헬스 사업 브랜드로 성장해 나갈 계획이며,
                                                웰니스 로보틱스 브랜드 NAMUHX는 오픈 생태계 구축과 지속적인 기능 확장 등을 통해 웰니스 혁신을 이끄는 로보틱스 전문 브랜드로 성장해 나갈 계획입니다.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.skintellix.com" target="_blank" title="새창 열기"><span class="btn-text">SK인텔릭스 웹사이트로 이동하기</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/ko/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="sk-intellix"/>
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
                                                <div class="data-item back-wellness">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">SK매직</strong>
                                                        <p class="para">
                                                            <strong>Health Platform</strong>
                                                        </p>
                                                        <p class="para">SK인텔릭스의 헬스 플랫폼 브랜드, SK매직은 국내 최초의 제품들을 론칭시키며 지속 성장하고 있습니다. 국내 최초 직수 정수기, 국내 최초 직수 얼음정수기, 국내 최초 스테인리스 직수관, 국내 최초 UV LED 코크 살균, 국내 최초 6중 살균 비데 등 혁신적 기술력을 바탕으로 이노스타, 그린스타, CES 혁신상 등 다수의 상을 수상하며 고객의 편의성 개선에 힘쓰고 있습니다.</p>
                                                        <p class="para">또한 관리 중심의 렌털 제품에 안심OK서비스라는 브랜드로 위생적으로 깨끗한 물, 깨끗한 공기를 제공받을 수 있도록 최상의 서비스를 제공하고 있습니다.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.skmagic.com/" target="_blank" title="새창 열기">
                                                            <span class="btn-text">SK매직몰로 이동하기</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="data-item">
                                                    <div class="contents">
                                                        <div class="data-display wellness">
                                                            <ul class="data-list">
                                                                <li class="data-item wellness01">
                                                                    <div class="data-head">
                                                                        <strong class="data-name">원코크 플러스 얼음물 정수기</strong>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <p class="para">국내 최초 하나의 코크에서 얼음과 물, 동시 출수 가능한 얼음정수기로 ‘올(All)-직수시스템’과 ‘자가 관리 시스템’을 탑재해 더욱 깨끗한 물과 얼음을 제공합니다.</p>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item wellness02">
                                                                    <div class="data-head">
                                                                        <strong class="data-name">초소형 플러스 직수 정수기</strong>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <p class="para">작고 슬림한 크기에 고온수 등 다양한 편의 기능을 제공함은 물론 에너지 및 자원 절감 등 ESG 가치를 반영한 친환경 정수기로 CES혁신상을 수상했습니다.</p>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item wellness03">
                                                                    <div class="data-head">
                                                                        <strong class="data-name">올클린 디아트 공기청정기</strong>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <p class="para">‘분리형 워셔블’ 구조로 항상 새 제품처럼 위생적으로 관리하며 공기 오염도에 따라 토출구 높이가 자동 변경되는 3단계 ‘청정팝업시스템’이 오염 공간을 빠르게 감지하고 집중 청정합니다.</p>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item wellness04">
                                                                    <div class="data-head">
                                                                        <strong class="data-name">올클린 버블 살균 비데</strong>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <p class="para">비데 전용 세척제를 사용한 도기 거품 세척이 원터치 버튼 하나로 가능하며, 도기, 물통, 유로, 노즐 4중 전해수 살균 케어로 보이지 않는 세균까지 관리합니다.</p>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="data-item back-namuh">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">NAMUH<sup>X</sup></strong>
                                                        <p class="para"><strong>Wellness Robotics</strong></p>
                                                        <p class="para">
                                                            Robotics를 통한 Wellness 혁신<br>
                                                            우리는 기능을 소구하는 유틸리티 로봇과는 다르게,<br>
                                                            경험을 소구하는 웰니스 로봇을 지향합니다.<br>
                                                            우리는 인간성 강화라는 철학정 방향성과 Robotics를 유기적으로<br>
                                                            통합하는 기술적 완성도, 그리고 오픈 생태계를 바탕으로<br>
                                                            웰니스 로봇 시장의 First Mover로서 시장을 리딩해 나갈 것입니다.
                                                        </p>
                                                        <p class="para">이것이 바로 NAMUH<sup>X</sup>의 지향점인 인류를 위한 혁신입니다.</p>
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
                                                <img src="/assets/images/logo/logo-skMagic.svg" alt="SK magic 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK매직은 여러분의 소중한 제안을 기다리고 있습니다.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://service.skmagic.com/web/easy/easyMain.do?tabIndex=0#Back" target="_blank">
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