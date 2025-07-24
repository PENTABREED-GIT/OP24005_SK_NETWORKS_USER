<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SK Speedmate &lt; Business &lt; SK Networks</title>
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
    <div class="main business speedmate" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">SK Speedmate</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Driving Innovation <br class="pc-only">in <br class="mo-only">Mobility Services with AI</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">SK Speedmate</h2>
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
                    <div class="content-head">SK Speedmate</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">SK Speedmate</h3>
                                            <h4 class="sub-title">As a No.1 brand in the automotive aftermarket service in Korea</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                Speedmate provides a wide variety of automobile-related services, including car maintenance, emergency roadside service, import car maintenance, import car parts distribution, tire distribution, and car parts export.
                                            </p>
                                            <p class="para case2">
                                                For the light maintenance, we have successfully launched ‘CLUB SM’, our membership to present reasonable maintenance prices to alleviate the financial burdens of our customers. Going forward, Speedmate will never stop researching and developing services to resolve the grievances of our customers and launch new services to realize a customer value innovation.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.speedmate.com" target="_blank" title="Opens in a new window."><span class="btn-text">Go to the SK Speedmate</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/en/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="speedmate"/>
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
                                                <div class="data-item back-maintenance">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">MAINTENANCE BUSINESS</strong>
                                                        <p class="para">Speedmate has consistently maintained its premier position in the Korea Brand Power Index (K-BPI) for 23 consecutive years, thanks to its reputation for elevating the standard of car care service in Korea. This remarkable achievement is attributed to a multitude of factors, encompassing the implementation of systematic customer service programs, transparent pricing with a standard tariff schedule, assurance of maintenance service quality and the impactful Kind Maintenance campaign.</p>
                                                        <p class="para">Speedmate delivers dependable car care service at competitive rates through its extensive network of over 580 maintenance nodes. These facilities are conveniently located at SK and Hyundai Oil gas stations, as well as discount outlets such as E-mart, E-mart Traders, IKEA, and others. In recent times, Speedmate has been prioritizing customer satisfaction by introducing more specialized service points, such as maintenance/detailing multi-shops and imported car-exclusive service centers. Furthermore, the company has expanded its range of exclusive tires to better accommodate customers’ requirements for replacement tires.</p>
                                                        <p class="para">Operating ‘Club SM’, a membership-based car care service, Speedmate offers essential maintenance services including discounted engine oil refills. Recently, a Club SM variant exclusively tailored for owners of imported cars are introduced. Additionally, customers have the option to pre-pay for preferred engine oil, batteries or tires through the official Speedmate website ‘SM.com’ and then visit a pre-booked offline service station to have the purchased parts promptly installed upon their arrival. Moreover, Speedmate is currently in the process of developing an array of service offerings, including customer-specific marketing campaigns informed by car maintenance data.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.speedmate.com" target="_blank" title="Opens in a new window.">
                                                            <span class="btn-text">Go to the Speedmate</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="data-item back-distparts">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">AUTO PART DISTRIBUTION BUSINESS</strong>
                                                        <p class="para">The Imported Auto Part Distribution Business supplies auto parts in reasonable prices based on the internal auto part sourcing channels, system-based distribution processes, and optimized distribution structure. This is contributing to strengthening soundness and expanding the imported auto part distribution market by enhancing transparency of the market and protecting customers. Speedmate has recently expanded its business coverage to include parts for commercial vehicles, offering service charge claim programs for accident-damaged cars. In addition, its ECO parts business utilizing parts salvaged from accident-damaged vehicles gives additional credit to Speedmate’s commitment to eco-friendliness.</p>
                                                        <p class="para">The Private Brand (PB) Auto Part Business exports auto parts of the Speedmate Brand to overseas markets. Frequent consumable parts, such as car batteries, lubricants, and filters, are produced by major original equipment manufacturers (OEMs) in Korea and exported to 65 buyers from 40 different countries located in the Middle East, Russia/ CIS*, Southeast Asia, and Central and South Americas. Through the business, we will boost global recognition of the Speedmate brand and accomplish globalization of the Speedmate Business.</p>
                                                        <span class="comment design1">* CIS : Commonwealth of Independent States</span>
                                                    </div>
                                                </div>
                                                <div class="data-item back-ers">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">ERS BUSINESS</strong>
                                                        <p class="para">The ERS* Business is the Korea’s first roadside assistance at car accident sites, launched in 2001. This business provides high-quality services based on bold investments and systematic management of network including first direct connection system between customers and rescue network through the customers’ location information in 2005.</p>
                                                        <p class="para">Currently, we are not only operating about 300 nationwide ERS networks and 24-7 call centers, but also developing various mobile services tailored for changes in the mobility environment through the Smart IVR**, mobile ERS, and location tracking-based ERS. Speedmate’s ERS business will be continuously upgraded as a critical element of the company’s mobility service business model, including emergency EV charging service.</p>
                                                        <span class="comment design1">
                                                            * ERS : Emergency Roadside Service<br>
                                                            ** Smart IVR : Interactive Voice Response
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
                                                <img src="/assets/images/logo/logo-speedmate-e.png" alt="SK speedmate Logo Image">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">Interested in a business proposals or <br class="pc-only">have customer inquiries</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK Speedmate welcome your valuable suggestions and inquires.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://www.speedmate.com/customer/FAQ" target="_blank">
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