<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>민팃 &lt; Business &lt; SK Networks</title>
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
    <div class="main business mintit" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">민팃</span></li>
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">고객과 가까운 곳 어디서나<br>비대면으로 편리하게</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">민팃</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-mintit.jpg" alt="민팃 인트로 이미지">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">민팃 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">민팃</h3>
                                            <h4 class="sub-title">ICT Device 리사이클 플랫폼</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                민팃은 국내 최초로 인공지능(AI)을 기반으로 한 중고폰 무인 매입기 '민팃 ATM'을 통해 누구나 쉽고 편리하게 중고폰을 거래할 수 있는 환경을 만들고 있습니다.
                                            </p>
                                            <p class="para case2">
                                                또한 중고폰에 저장된 개인정보 및 데이터를 완벽히 삭제하는 국제 표준 품질 인증을 받은 기술을 탑재하고 있어 중고폰 거래에 대한 불안감을 해소하고 신뢰도를 높였습니다.
                                            </p>
                                            <p class="para case2">
                                                민팃은 중고폰 거래 서비스를 넘어 ESG 경영에도 앞장서고 있습니다. 일상 속에서 누구나 쉽게 자원을 재순환하고 환경을 보호할 수 있도록 돕고, 매년 에코캠페인, 빨간나무 세그루 심기 캠페인 등 다양한 ESG 활동을 이어나가고 있습니다.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://mintit.co.kr/" target="_blank" title="새창 열기"><span class="btn-text">민팃 웹사이트로 이동하기</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/ko/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="mintit"/>
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
                                                <div class="data-item back-mintitBusi">
                                                    <div class="contents">
                                                        <div class="contents-item">
                                                            <strong class="contents-name type1">인공지능 진단 및 가격평가</strong>
                                                            <p class="para">AI 머신러닝 기반의 휴대폰 외관 평가 기술을 적용, ATM에서 실시간으로 평가된 결과를 제안하여 불투명한 중고폰 거래 시장을 개선해 갑니다.</p>
                                                        </div>
                                                        <div class="contents-item">
                                                            <strong class="contents-name type1">비대면 ATM 방식</strong>
                                                            <p class="para">전국 6,600여개 생활 거점으로 고객 접점을 확대하여 복잡하던 중고폰 판매 방식을 비대면 기반으로 편리하게 이용이 가능합니다.</p>
                                                        </div>
                                                        <div class="contents-item">
                                                            <strong class="contents-name type1">DATA 완전 삭제</strong>
                                                            <p class="para">국제인증기관 ADISA의 인증을 획득한 자체 삭제 앱과 국내 최초 특허 기반의 DATA 삭제 기술을 통해 개인정보 유출을 방지합니다.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case3 type1 business">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="data-display business-network">
                                        <div class="data-head">
                                            <strong class="data-name">사회적 가치</strong>
                                        </div>
                                        <div class="data-body">
                                            <div class="data-list">
                                                <div class="data-item back-socialValues">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">고객과 함께 사회적 가치를 만들어갑니다.</strong>
                                                        <p class="para">민팃을 통해 판매한 중고폰은 재활용을 통해 폐기물을 감축하는 것은 물론 새로운 스마트폰 생산과정에서 발생하는 온실가스 배출을 줄여 자원을 절약하고 환경을 보호하는데 기여합니다.</p>
                                                        <p class="para">또한 ‘기부하기’를 통해 더 나은 사회를 만드는데 기여하고 있습니다. 중고폰 평가 금액을 기부할 경우 IT 취약계층의 아동들의 학습에 필요한 전자기기, 교재, 교육비 등을 지원해왔고 앞으로도 중고폰 사업을 통한 사회적 가치 창출에 힘쓸 계획입니다.</p>
                                                        <p class="para">2021년부터 여의샛강생태공원에 4천 그루의 묘목을 심고, 매년 식목일마다 환경정화 활동을 진행하며 탄소중립에 가까워지기 위해 노력하고 있습니다.</p>
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
                                                <img src="/assets/images/logo/logo-mintit.svg" alt="mintit 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">민팃은 여러분의 소중한 제안을 기다리고 있습니다.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://www.mintit.co.kr/inquiry/partnership" target="_blank">
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