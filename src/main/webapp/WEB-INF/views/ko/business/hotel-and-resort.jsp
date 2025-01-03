<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>호텔앤리조트 &lt; Business &lt; SK Networks</title>
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
    <div class="main business hotel" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>

                            <li class="data-item"><span class="item-text">워커힐 호텔앤리조트</span></li>


                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">Beyond Entertainment,<br>Elevating Excitement</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">워커힐 호텔앤리조트</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-hotel.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">워커힐 호텔앤리조트 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">워커힐 호텔앤리조트</h3>
                                            <h4 class="sub-title">숙박, 전시, 체험, 공연 등 모든 것이 가능한 'All Around Destination'</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                워커힐 호텔앤리조트는 도심 속 자연에서의 힐링과 함께 레저, 문화, 미식 등 라이프스타일 전반에 걸쳐 최고의 경험을 선사하는 대한민국 호텔 업계 리더입니다.
                                            </p>
                                            <p class="para case2">
                                                그랜드 워커힐 서울, 비스타 워커힐 서울, 더글라스 하우스, 다락휴 등 차별화된 감성을 전달하는 다채로운 콘셉트의 브랜드는 고객의 다양한 취향과 니즈를 충족시키고 있습니다. 또한 최고의 셰프들이 선사하는 고메 음식과 다채로운 다이닝 경험을 제공하는 레스토랑과 바, 전문가의 손길로 최고의 서비스를 제공하는 7개의 연회장을 비롯하여 빛의 시어터, 포레스트 파크, 리버파크, 테네즈 파크 등 다채로운 시설을 갖추고 있어 최상의 즐거움과 영감을 제공합니다.
                                            </p>
                                            <p class="para case2">
                                                2021년 '친환경 호텔' 선포 이후 변화와 혁신을 통해 2021년 '친환경 호텔 표지 인증’을 획득했으며, 진정성 있는 ESG 경영 실천을 위한 새로운 비즈니스 모델을 제시하고, 고객과 함께 하는 ESG 가치 실현을 위해 노력하고 있습니다.
                                            </p>
                                            <p class="para case2">
                                                더불어 워커힐 호텔앤리조트는 ‘문화(Culture)’와 ‘기술(Technology)’ 영역의 혁신을 통해 ‘AI 호텔’로 거듭날 예정입니다.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/kr/" target="_blank" title="새창 열기"><span class="btn-text">워커힐 호텔앤리조트 웹사이트로 이동하기</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/ko/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="hotel-and-resort"/>
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
                                                <div class="data-item back-grand">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">그랜드 워커힐 서울</strong>
                                                        <p class="para">아름다운 한강과 푸르른 아차산에 둘러싸인 도심 속 최고의 휴양지, 그랜드 워커힐 서울은 품격 있는 시설과 감동적인 서비스로 편안하고 여유로운 휴식을 선사합니다.</p>
                                                        <p class="para">사계절의 매력을 느낄 수 있는 산책로와 한강 전망의 야외 수영장, 피크닉을 즐길 수 있는 포레스트 파크, 독서와 휴식을 위한 라이브러리 등의 시설과 워커힐의 레저 전문가 WALKEE(워키)와 함께하는 액티비티 프로그램, 몰입형 예술 전시 빛의 시어터 등 다양한 즐거움을 경험할 수 있습니다.</p>
                                                        <p class="para">또한, 7개의 다목적 연회장으로 구성된 컨벤션 센터와 애스톤 하우스에서는 고급스럽고 프라이빗한 최상의 연회 및 웨딩을 진행하고 있으며, 품격 높은 행사를 위한 최고의 서비스를 제공합니다.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/grandwalkerhillseoul/" target="_blank" title="새창 열기">
                                                            <span class="btn-text">그랜드 워커힐 서울 웹사이트로 이동하기</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="data-item back-vista">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">비스타 워커힐 서울</strong>
                                                        <p class="para">최신 트렌드를 바탕으로 신선하고 색다른 휴식을 통해 활력과 에너지를 선사하는 비스타 워커힐 서울은 ‘REFRESHING. VIVIDLY.’라는 슬로건 아래 고객에게 신선한 자극과 색다른 경험을 제공합니다.</p>
                                                        <p class="para">탁 트인 한강 전경의 야외 가든 SKYARD, 통창 너머 도심의 전경이 펼쳐지는 실내 수영장, 최신의 트렌드와 문화 콘텐츠를 소개하는 SPACE WALKERHILL 등 차별화된 시설을 갖추고 있으며, 전 객실에 IT 기술 및 서비스를 더해 새로운 투숙 경험이 가능합니다. WELLNESS CLUB에서 제안하는 다양한 프로그램은 고객들의 삶에 활력과 새로운 에너지를 불어넣는 건강한 라이프를 추구합니다.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/vistawalkerhillseoul/" target="_blank" title="새창 열기">
                                                            <span class="btn-text">비스타 워커힐 서울 웹사이트로 이동하기</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="data-item back-douglas">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">더글라스 하우스</strong>
                                                        <p class="para">'숲 속의 아지트'  더글라스 하우스는 자연 친화적인 인테리어, 여행에 꼭 필요한 서비스만을 엄선하여 최상의 힐링 여행을 즐길 수 있도록 돕고 있습니다. 또한 Adults-only로 운영되고 있어 도심 속 자연에서 조용한 사색을 즐기고 싶은 고객들을 위한 '나를 위한 휴식처'로 자리매김했습니다.</p>
                                                        <p class="para">더글라스 하우스는 라이트 조식과 해피아워가 제공되는 전용 라운지, 최인아 책방이 선정한 최신의 도서가 제공되는 라이브러리와 자연을 마음 가득 담을 수 있는 전용 가든 등의 시설을 갖추었습니다. 또 차량 진입이 제한된 산책로에서 고즈넉한 산책을 즐기며 자연의 포근함과 여유로움을 느끼는 휴식이 가능합니다.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/grandwalkerhillseoul/douglas/Intro" target="_blank" title="새창 열기">
                                                            <span class="btn-text">더글라스 하우스 웹사이트로 이동하기</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="data-item back-outside">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">대외사업</strong>
                                                        <p class="para">인천공항 환승호텔, 프리미엄 라운지 마티나 골드를 비롯해 국내 최초 캡슐 호텔이자 스마트한 여행객들의 휴식처, 다락휴를 인천공항과 여수 등에 운영 중입니다. 그 밖에 금룡 삼일빌딩점과 국내 주요 골프장 클럽하우스 5개소, 2015년 개최된 프레지던트컵과 같은 국제적인 행사를 비롯한 다양한 아웃사이드 케이터링 서비스 등 F&B사업을 진행하고 있습니다.</p>
                                                        <p class="para">최근에는 워커힐의 브랜드를 활용한 다양한 PB상품을 출시하여 워커힐 호텔앤리조트만의 서비스 노하우와 브랜드 가치를 다양한 고객에게 전하고 있습니다.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/about/CustomerService" target="_blank" title="새창 열기">
                                                            <span class="btn-text">워커힐 대외사업부 웹사이트로 이동하기</span>
                                                        </a>
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
                                                <img src="/assets/images/logo/logo-walkerhill.svg" alt="워커힐 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">워커힐 호텔앤리조트는 여러분의 소중한 제안을 기다리고 있습니다.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://www.walkerhill.com/customer/VOCForm.wh" target="_blank">
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