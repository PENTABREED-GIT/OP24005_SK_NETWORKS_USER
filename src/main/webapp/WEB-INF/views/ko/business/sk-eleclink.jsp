<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>SK일렉링크 &lt; Business &lt; SK Networks</title>
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
    <div class="main business electlink" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
    
                            <li class="data-item"><span class="item-text">SK일렉링크</span></li>
    
    
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">당신이 가는 길에 언제나<br>On Your Way, Always!</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">SK일렉링크</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-electlink.png" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">SK일렉링크 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">SK일렉링크</h3>
                                            <h4 class="sub-title">모빌리티 업계를 선도하는 전기차 급속충전 플랫폼</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                SK일렉링크는 전기차 충전기 구축 및 충전 서비스 제공, 충전 플랫폼 운영 및 관련 솔루션 개발 등 전기차 충전에 대한 토탈 솔루션을 제공합니다.
                                            </p>
                                            <p class="para case2">
                                                민간 사업자 최초로 한국도로공사와 함께 고속도로 휴게소 내 초급속 충전소를 운영하는 등 핵심 충전 입지를 선점해 나가고 있으며, 차별화된 기술력과 노하우를 기반으로 전기차 충전 서비스에서의 혁신을 이뤄가고 있습니다.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://skelectlink.co.kr/" target="_blank" title="새창 열기"><span class="btn-text">SK일렉링크 웹사이트로 이동하기</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/ko/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="sk-eleclink"/>
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
                                                <div class="data-item back-acs">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">Auto Charging Service</strong>
                                                        <p class="para">Auto Charging은 전기차 충전의 새로운 방식 중 하나로, 충전기 이용시 회원 인증을 위해 카드 태그나 충전기 화면 터치와 같은 복잡한 과정을 생략하고 차량과 충전 커넥터 연결(Link)만으로 충전부터 요금 결제까지 한 번에 이루어지는 충전 편의 솔루션입니다.</p>
                                                        <p class="para">SK일렉링크는 딥러닝 기반의 카메라로 차량 번호를 인식해 사용자를 인증하는 1세대 Auto Charging Service 도입을 시작으로, 2022년부터 차량 고유 정보를 암호화하여 사용자 인증이 가능한 2세대 Auto Charging Service를 상용화하였습니다. 향후 무선충전서비스 환경에도 확대 적용할 수 있는 초광역대통신프로토콜(UWB)을 이용한 제3세대 Auto Charging Service 도입을 준비하고 있습니다.</p>
                                                        <p class="para">특히, Auto Charging은 SK일렉링크 앱으로 단 1회 QR인증을 통해 신청 가능하여 플라스틱 실물 카드 발급을 줄일 수 있어 탄소중립 실현에도 기여하는 최적의 충전 서비스라고 할 수 있습니다.</p>
                                                    </div>
                                                </div>
                                                <div class="data-item back-adm">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">전기차 충전 방해 방지 모니터링 시스템</strong>
                                                        <p class="para">전기차 충전 방해 방지 모니터링 시스템은 충전면 부정 점유로 발생하는 전기차 이용 고객들의 가장 큰 Pain Point를 해결하기 위해 고안된 솔루션입니다. 최근 전기차 보급이 늘면서, 공용 충전소 및 아파트의 전기차 충전 방해 비중 증가로 사용자 간 분쟁이 점차 늘어나고, 사회적인 이슈로 부각되고 있습니다. SK일렉링크는 이를 해결하고자 시/군/구 및 아파트 관리사무소와 협력하여 충전 방해를 막고, 분쟁을 최소화할 수 있는 솔루션을 개발하여 서비스하고 있습니다.</p>
                                                        <p class="para">딥러닝 기반의 차량 번호 인식이 가능한 광학 카메라를 활용해 일반 차량이나 충전 후 충전면을 점유하고 있는 차량을 시간대별로 모니터링하여 문자, 알림 등으로 안내하고, 점유가 지속될 경우 번호판을 촬영해 연계되어 있는 시/군/구로 사진을 전송하여 과태료 고지서를 발송하는 솔루션입니다. 향후에도 SK일렉링크는 차별화된 기술을 기반으로 전기차고객들의 불편함을 최소화하고 충전의 편리함을 넘어 즐거움을 제공할 수 있도록 노력을 지속할 예정입니다.</p>
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
                                                <img src="/assets/images/logo/logo_electlink_e.png" alt="SK 일렉링크 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK일렉링크는 여러분의 소중한 제안을 기다리고 있습니다.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://skelectlink.co.kr/support/inquiry" target="_blank">
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