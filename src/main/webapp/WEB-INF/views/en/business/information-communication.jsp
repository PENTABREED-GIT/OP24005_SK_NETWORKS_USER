<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>ICT Marketing &lt; Business &lt; SK Networks</title>
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
    <div class="main business infocom" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
    
                            <li class="data-item"><span class="item-text">ICT Marketing</span></li>
    
    
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">Connecting people and <br>AI through ICT devices</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">ICT Marketing</h2>
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
                    <div class="content-head">ICT Marketing</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">ICT Marketing</h3>
                                            <h4 class="sub-title">Korea’s No. 1 mobile device distributor</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                SK Networks sells approximately 4.33 million mobile devices a year largely in wholesale distribution and distributes various ICT devices such as laptops, tablet PCs, and ICT accessories through collaboration with manufacturers.
                                            </p>
                                            <p class="para case2">
                                                In addition, we provide integrated distribution services to customers through our nationwide infrastructure. Through SK Networks Service, one of our subsidiaries, we offer a variety of services, including operation of the SK Telecom and SK Broadband’s networks and provision of IT solutions and communication system equipment.
                                            </p>
                                            <p class="para case2">
                                                We are currently expanding our recycling business sector by operating a resource circulation center that handles a variety of waste products including unused assets and waste generated within the IT industry.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/en/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="information-communication"/>
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
                                                <div class="data-item back-wholesale">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">WHOLESALE OF MOBILE DEVICES</strong>
                                                        <p class="para">SK Networks, as the biggest mobile phone distributor in Korea, supplies mobile devices demanded by customers through the nationwide logistics infrastructure and purchase platform-based distribution network.</p>
                                                        <p class="para">Based on the partnerships with SK telecom, the Korea’s largest mobile communication service provider, and other manufacturers over the world, we accomplished to sell 3.89 million mobile phone devices in 2024.</p>
                                                        <p class="para">Even in the gradually stagnating market environment, we have provided loan/payment services and purchase system to improve agencies’ purchase convenience and strengthened the business model through sales consulting to develop together with 1,041 agencies nationwide.</p>
                                                        <p class="para">The Mobile Device Business will expand the role of SK Networks in the mobile phone distribution market through a continuous value creation for its clients, thereby securing significant profits and stable growth.</p>
                                                    </div>
                                                </div>
                                                <div class="data-item back-logiService">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">Logistics Service</strong>
                                                        <p class="para">SK Networks offers an integrated shipping service to customers through the nationwide logistics infrastructure and system capacities. With the logistics experience in mobile devices, we are expanding our services from ICT devices to various areas such as a third-party logistics and warehousing. We are also in the process of moving to a bigger distribution center in the Seoul Capital Area (SCA) to satisfy customers’ shipping demands.</p>
                                                        <p class="para">Starting in 2021, we will establish the integrated logistics system based on the new SCA distribution center, thereby growing into the Korea’s top logistics service provider with SCM* capacity.</p>
                                                        <span class="comment design1">* SCM: Supply Chain Management</span>
                                                    </div>
                                                </div>
                                                <div class="data-item back-dist">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">ICT Device / Accessory B2B Distribution</strong>
                                                        <p class="para">Major ICT devices such as laptop, tablet, etc. are sourced from global manufacturers (Apple, Samsung) and such services aligned to varying customer needs as solution customization, shipping and installation are offered. Furthermore, various ICT accessories are planned and supplied to on/offline distribution channels to help B2B customers boost smartphone sales and enrich mobile user experience.</p>
                                                    </div>
                                                </div>
                                                <div class="data-item back-subsidiary">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">Network infrastructure administration management and global IT HW/SW distribution businesses<br>(SK Networks Service)</strong>
                                                        <p class="para">Drawing upon long years of excellence in ICT technology, SK Networks Service engages in network infrastructure administration management and global IT HW/SW distribution businesses. Our business presence has been recently expanded to cover environment-friendly businesses including solar power generation and *EPC projects, EV charging infrastructure deployment/maintenance, resource recycling business, etc. in a bid to bolster sustainability. SK Networks Service vows to remain competitive with change and innovation and promote shared prosperity by opening up new possibilities and creating value for customers.</p>
                                                        <p class="comment design1">* EPC: Engineering Procurement Construction</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.sknservice.com/en/index.do" target="_blank"><span class="btn-text">Go to the SK Networks Service</span></a>
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
                                                <img src="/assets/images/logo/logo-c1-e.svg" alt="SK networks Logo Image">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">Interested in a business proposals or <br class="pc-only">have customer inquiries</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK Networks welcome your valuable suggestions and inquires.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/${LANG}/global/sk-inquiry-form">
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
