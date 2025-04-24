<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>정보통신 &lt; Business &lt; SK Networks</title>
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
    <div class="main business infocom" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">정보통신</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">기업 내 모든 구성원이<br> AI 기술을 활용하는 세상</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">정보통신</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-infocom.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">정보통신 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">ICT Marketing</h3>
                                            <h4 class="sub-title">국내 1위 Mobile Device 유통 사업자</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                휴대전화 단말기 도매 유통을 중심으로 연간 약 400만 대 규모의 Market을 보유하고 있으며, 그 외 노트북과 태블릿PC, ICT 액세서리 등 제조사 협업을 통해 ICT Device 상품을 폭넓게 유통하고 있습니다.
                                            </p>
                                            <p class="para case2">
                                                또한 전국 물류 인프라를 통해 고객에게 통합 물류서비스를 제공합니다. 자회사인 SK네트웍스서비스는 SK텔레콤 및 SK브로드밴드의 네트워크망 운용, IT Solution, 통신 시스템 장비 유통 등 다양한 서비스를 제공하는 사업을 펼치고 있습니다.
                                            </p>
                                            <p class="para case2">
                                                또한 기업 IT 불용자산을 포함한 다양한 폐제품 및 사용 후 폐기물을 처리, 재활용하는 자원순환센터를 운영 중입니다.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/ko/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="information-communication"/>
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
                                                <div class="data-item back-wholesale">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">휴대폰 단말기 도매</strong>
                                                        <p class="para">전국적인 물류 인프라 및 구매 플랫폼 기반 유통망을 토대로 고객이 요구하는 모바일 기기를 적시에 공급하고 있으며, 이를 통해 국내 최대 규모의 휴대폰 유통 사업자로서의 위상을 보여주고 있습니다.</p>
                                                        <p class="para">국내 1위 이동통신 사업자인 SK텔레콤 및 국내외 제조사와 공고한 파트너십을 바탕으로 2024년 389만 대의 휴대전화 단말기 판매 실적을 달성하였습니다.</p>
                                                        <p class="para">통신 유통 시장이 지속 축소되는 환경 속에서도 여신ㆍ결제 서비스 및 구매 시스템을 제공하여 대리점의 구매 편의성을 개선하였으며, 영업 컨설팅을 통해 전국 1천여 개 대리점과 상생 발전하는 비즈니스 모델을 강화하였습니다.</p>
                                                        <p class="para">단말 유통 사업은 향후에도 고객사를 대상으로 한 지속적인 가치 창출을 통해 휴대폰 유통 시장 내 SK네트웍스의 역할을 확대하여, 의미 있는 수익을 확보하고 안정적 성장을 이어나가겠습니다.</p>
                                                    </div>
                                                </div>
                                                <div class="data-item back-logiService">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">물류 서비스</strong>
                                                        <p class="para">전국 단위의 물류 인프라와 시스템 역량을 통해 고객에게 통합 배송 서비스를 제공합니다. 단말기 유통을 통한 물류 경험을 바탕으로 ICT Device뿐만 아니라 제3자 물류, 창고 보관업 등 다양한 영역으로 물류 서비스를 확대하고 있습니다.</p>
                                                        <p class="para">증가하는 고객의 배송 수요를 충족시키기 위해 수도권 물류센터를 확장 이전했으며, 시스템 기반 통합 물류체계를 구축하여 국내 TOP 수준의 SCM* 역량을 갖춘 물류 서비스 사업자로 발전해 나가겠습니다.</p>
                                                        <span class="comment design1">* SCM: Supply Chain Management, 공급망 관리</span>
                                                    </div>
                                                </div>
                                                <div class="data-item back-dist">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">ICT Device/Accessory 유통</strong>
                                                        <p class="para">글로벌 제조사(Apple, 삼성)로부터 노트북, 태블릿 등 주요 ICT Device를 소싱하여 고객사의 다양한 Needs에 맞춰 Solution Customizing, 배송, 설치 등 맞춤형 서비스를 제공합니다. 아울러 다양한 ICT Accessory를 기획하여 온ㆍ오프라인 유통망 채널에 공급함으로써, 고객의 스마트폰 판매 확대 및 Mobile 사용자 경험 증대에 주력하고 있습니다.</p>
                                                    </div>
                                                </div>
                                                <div class="data-item back-subsidiary">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">네트워크 인프라 관리, 글로벌 IT H/W·S/W 유통<br>(SK네트웍스서비스)</strong>
                                                        <p class="para">SK네트웍스서비스는 다년간 축적해온 ICT 기술력을 기반으로 Network Infra 운용관리, Global IT H/W · S/W 유통사업을 영위하고 있습니다. 최근에는 태양광 자체 발전 및 EPC*사업, EV충전시설 구축/유지보수, 자원재순환사업 등 친환경분야로 사업영역을 확장해 지속가능성을 높이는데 주력하고 있습니다. SK네트웍스서비스는 변화와 혁신으로 경쟁력을 확보하고 새로운 가능성과 고객사 가치 창출로 상생을 도모하고 있습니다.</p>
                                                        <p class="comment design1">* EPC: Engineering Procurement Construction</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.sknservice.com/index.do" target="_blank" title="새창 열기"><span class="btn-text">SK네트웍스서비스 웹사이트로 이동하기</span></a>
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
                                                <img src="/assets/images/logo/logo-c1-e.svg" alt="SK networks 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK네트웍스는 여러분의 소중한 제안을 기다리고 있습니다.</span>
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
