<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>SK 스피드메이트 &lt; Business &lt; SK Networks</title>
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
    <div class="main business speedmate" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">SK 스피드메이트</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">AI를 통해 더 차별화된<br>Mobility Service로 혁신합니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">SK 스피드메이트</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-speedmate.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">SK 스피드메이트 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">SK 스피드메이트</h3>
                                            <h4 class="sub-title">국내 Automotive Aftermarket No.1 브랜드</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                스피드메이트는 자동차 경정비, 긴급출동 서비스, 수입차 경정비, 수입차 부품 유통, 타이어 유통, 자동차 부품 수출에 이르기까지 자동차에 관한 다양한 서비스를 제공하고 있습니다.
                                            </p>
                                            <p class="para case2">
                                                자동차 경정비의 경우 스피드메이트 멤버십 ‘CLUB SM’의 성공적인 론칭을 통해 고객에게 합리적인 정비 금액을 제시하여 경제적 부담을 덜어드리고 있습니다. 스피드메이트는 앞으로도 고객의 불편 사항 해결을 위한 서비스를 끊임없이 연구하고 출시하여 진정한 고객가치 혁신을 이루겠습니다.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.speedmate.com" target="_blank" title="새창 열기"><span class="btn-text">SK 스피드메이트 웹사이트로 이동하기</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/ko/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="speedmate"/>
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
                                                <div class="data-item back-maintenance">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">정비 사업</strong>
                                                        <p class="para">스피드메이트는 체계적인 CS(Customer Satisfaction, 고객만족) 관리와 표준가격제, 정비품질보증제와 같은 서비스 품질 강화 활동, 착한 정비 캠페인 등을 통해 국내 자동차 정비업계를 한 단계 업그레이드했다는 평가를 받고 있으며, 한국 산업 브랜드파워(K-BPI) 23년 연속 1위를 기록했습니다.</p>
                                                        <p class="para">주유소와 대형마트 등 접근성 좋은 입지의 580여개 정비 네트워크에서 믿을 수 있는 품질과 합리적인 가격의 정비 서비스를 펼치고 있습니다. 최근에는 정비·디테일링 멀티샵, 수입차 전문 정비센터와 같은 특성화 매장들을 늘리며 고객 만족에 힘쓰고 있습니다. 또한 타이어의 라인업도 확대하여 타이어 교체 고객들의 니즈에 발맞추고 있습니다.</p>
                                                        <p class="para">엔진오일 교환을 포함한 주요 정비서비스들을 할인된 가격에 이용할 수 있는 차량관리 멤버십 서비스 ‘Club SM’ 을 운영하고 있으며, 최근 수입차 전용 ‘Club SM’ 서비스도 런칭하였습니다. 이외에도 공식홈페이지에서 내 차에 맞는 엔진오일, 배터리, 타이어를 사전 결제 후, 예약한 정비소를 방문하면 대기 없이 구매한 부품을 장착 받을 수 있습니다. 앞으로 스피드메이트는 정비데이터에 기반한 고객 맞춤형 마케팅 등 다양한 정비 서비스를 펼쳐갈 계획입니다.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.speedmate.com" target="_blank" title="새창 열기">
                                                            <span class="btn-text">스피드메이트 웹사이트로 이동하기</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="data-item back-distparts">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">부품유통 사업</strong>
                                                        <p class="para">수입차 부품 유통 사업은 자체 부품 소싱 채널, 시스템 기반의 유통 프로세스, 최적화된 유통 구조 등을 기반으로 합리적인 가격에 부품을 공급하고 있습니다. 이를 통해 수입차 부품 시장 투명성을 제고하고 고객을 보호하여 수입차 부품 유통 시장의 건전성 강화 및 시장 확장에 기여하고 있습니다. 최근에는 상용차 부품 시장으로 사업 영역을 확대하고, 사고차 공임 청구 프로그램 사업에도 진출하는 등 사업 영역을 확장하고 있습니다. 또한 사고차량 잔존물을 활용한 ECO부품 사업을 통해 친환경적인 사업에도 힘쓰고 있습니다.</p>
                                                        <p class="para">PB부품사업은 스피드메이트 브랜드의 자동차 부품을 해외 시장에 수출하는 사업입니다. 자동차배터리, 윤활유, 필터 등 다빈도 소모품을 국내의 Major 부품 제조사를 통해 OEM 생산하고 있으며, 현재 중동, 러시아/CIS*, 동남아, 중남미 등 총 40개국 65개 Buyer들에게 수출하고 있습니다. 이를 통해 스피드메이트 브랜드의 Global 인지도를 제고하고, 향후 스피드메이트 사업의 Globalization 첨병 역할을 수행할 것입니다.
                                                        </p>
                                                        <span class="comment design1">* CIS : Commonwealth of Independent States, 독립국가연합</span>
                                                    </div>
                                                </div>
                                                <div class="data-item back-ers">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">ERS 사업</strong>
                                                        <p class="para">ERS* 사업은 2001년 출시한 국내 최초의 사고 현장 출동 서비스입니다. 2005년 업계 최초 고객 위치 정보를 기반으로 고객과 출동 네트워크를 직접 연결하는 시스템을 구축하는 등, 과감한 시스템 투자와 체계화된 네트워크 관리로 수준 높은 서비스를 제공하고 있습니다.</p>
                                                        <p class="para">현재 전국 300여 개의 출동 네트워크와 24시간 콜센터를 관리하고 있으며, Smart IVR** 및 모바일 긴급출동 서비스, 휴대폰 위치 추적 기반 긴급 출동 서비스 등을 통해 모빌리티 환경 변화에 맞춘 모바일 기반 서비스를 다양하게 발굴·개발하고 있습니다. ERS 사업은 앞으로 EV 긴급 충전 서비스 운영 등 모빌리티 서비스의 핵심 사업 모델을 지속적으로 업그레이드해 나갈 것입니다.</p>
                                                        <span class="comment design1">
                                                            * ERS : Emergency Roadside Service<br>
                                                            * Smart IVR : Interactive Voice Response, 보이는 ARS 서비스
                                                        </span>
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
                                                <img src="/assets/images/logo/logo-speedmate-e.png" alt="SK speedmate 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK 스피드메이트는 여러분의 소중한 제안을 기다리고 있습니다.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://www.speedmate.com/customer/FAQ" target="_blank">
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