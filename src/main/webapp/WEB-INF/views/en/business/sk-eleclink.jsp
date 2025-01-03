<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SK Electlink &lt; Business &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
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

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main business electlink" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
    
                            <li class="data-item"><span class="item-text">SK Electlink</span></li>
    
    
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">On Your Way, Always!</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">SK Electlink</h3>
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
                    <div class="content-head">SK Electlink</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">SK Electlink</h3>
                                            <h4 class="sub-title">a Leader in the Mobility Industry with its Fast EV Charging Platform</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                SK Electlink is the largest private charging business operator in South Korea, providing a total range of solutions for EV charging, including charger installation, charging services, operation of charging platforms, and development of related solutions.
                                            </p>
                                            <p class="para case2">
                                                As the first private operator that works with Korea Expressway Corporation in this field, we have secured key charging locations and operate ultra-fast chargers at highway rest areas. We continue to innovate charging services based on our differentiated technological capabilities and knowledge.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://skelectlink.co.kr/" target="_blank" title="Opens in a new window."><span class="btn-text">Go to the SK Electlink</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/en/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="sk-eleclink"/>
                                </jsp:include>
                            </div>
                        </div>
                        <div class="section design1 case3 type1 business">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="data-display business-network">
                                        <div class="data-head">
                                            <strong class="data-name">Core <br class="pc-only">Competitiveness</strong>
                                        </div>
                                        <div class="data-body">
                                            <div class="data-list">
                                                <div class="data-item back-acs">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">Auto Charging Service</strong>
                                                        <p class="para">Auto charging is one of the new methods of charging EVs. It is a convenient charging solution that handles charging and fee payment at once, bypassing complicated processes such as card tagging for member authentication or charger screen touching. It allows users to simply link their EV with the charger.</p>
                                                        <p class="para">SK Electlink introduced the 1st generation auto charging service authenticating users by checking license plate numbers using cameras, based on deep learning. In 2022, SK Electlink commercialized the 2nd generation auto charging service that authenticates users by encrypting unique vehicle information. We are preparing to introduce the 3rd generation auto charging solution, which can apply Ultra Wide Band (UWB) communication protocols to the wireless charging environment.</p>
                                                        <p class="para">In particular, auto charging can be requested through a single QR code scan using the SK Electlink app. It is an optimal service solution for charging stations that can contribute to carbon neutrality by reducing the use of plastic cards.</p>
                                                    </div>
                                                </div>
                                                <div class="data-item back-adm">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">Monitoring System to Prevent Interruption During EV Charging</strong>
                                                        <p class="para">The monitoring system to prevent interruption during EV charging is a solution designed to resolve the greatest pain point experienced by EV customers, caused by the illicit use of charging surfaces. With the recent increase in the supply of EVs, disputes among users are gradually increasing and causing social conflict, due to the increased incidence of charging interruptions at public charging stations and APTs. SK Electlink developed a solution to prevent charging interruption and minimize disputes by cooperating with municipal and district governments and APT management offices.</p>
                                                        <p class="para">Optical cameras that can recognize license plate numbers based on deep learning are used to monitor ordinary vehicles or vehicles that continue using the charging surface after charging is complete. The owners of such vehicles are informed by text messages or notifications, and if the charging surface continues to be in use, a photo of the license plate number is taken and sent to the relevant municipal or district government to impose a fine. In the future, SK Electlink will continue its efforts to utilize differentiated technologies to minimize the inconvenience of EV customers and make charging a convenient and pleasant experience</p>
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
                                                <img src="/assets/images/logo/logo_electlink_e.png" alt="SK Electlink Logo Image">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">Interested in a business proposals or <br class="pc-only">have customer inquiries</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK Networks welcome your valuable suggestions and inquires.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://skelectlink.co.kr/support/inquiry" target="_blank">
                                                    <span class="btn-text">Go to Inquiry</span>
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
                                                                    <img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="ir news thumbnail image">
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