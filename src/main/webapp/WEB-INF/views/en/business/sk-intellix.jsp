<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>
        SK Intellix &lt; Business &lt; SK Networks</title>
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
    <div class="main business skmagic" id="main">
        <div class="main-inner">
            <input type="hidden" name="businessType" value="magic">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">SK Intellix</span></li>
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">Your Everyday Wellness Partner</h2></div>
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
                    <div class="content-head">SK Intellix</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">SK Intellix</h3>
                                            <h4 class="sub-title">AI Wellness Platform Company</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                SK Intellix has established an integrated brand system that goes beyond the existing image of SK Magic—once limited to environmental home appliances—to embrace the innovation and forward-looking brand values of its newly launched wellness robotics brand, NAMUH<sup>X</sup>.
                                            </p>
                                            <p class="para case2">
                                                As a health platform brand, SK Magic aims to become a trusted name in the wellness industry by leveraging its strengths in environmental appliance manufacturing, sales, and rental services, along with its established brand equity, to create a new category of innovative products.
Meanwhile, the wellness robotics brand NAMUH<sup>X</sup> aspires to lead the way in wellness innovation by building an open ecosystem and continuously expanding its technological capabilities.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://company.skmagic.com/en/" target="_blank" title="Opens in a new window."><span class="btn-text">Go to the SK Intellix</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/en/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="sk-intellix"/>
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
                                                <div class="data-item back-wellness">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">SK Magic</strong>
                                                        <p class="para">
                                                            <strong>Health Platform</strong>
                                                        </p>
                                                        <p class="para">SK Magic's home appliance rental business is continually evolving, having launched several industry-first products in Korea. Thanks to its pioneering technological innovations, we have developed groundbreaking products such as the first tankless water purifier, tankless ice water purifier, stainless steel direct water pipe, UV LED nozzle sterilization, and 6-stage sterilization bidet. These advancements have earned us numerous accolades, including the InnoStar, GreenStar, and CES Innovation Awards, and have significantly enhanced customer convenience.</p>
                                                        <p class="para">Additionally, our rental products come with the Reassuring OK Service brand, providing customers receive hygienically clean water and air, backed by our top-notch service.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://company.skmagic.com/en/" target="_blank" title="Opens in a new window.">
                                                            <span class="btn-text">Go to the SK Magic</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="data-item">
                                                    <div class="contents">
                                                        <div class="data-display wellness">
                                                            <ul class="data-list">
                                                                <li class="data-item wellness01">
                                                                    <div class="data-head">
                                                                        <strong class="data-name">One-cock Plus ice-dispensing water purifier</strong>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <p class="para">Korea’s first water purifier to dispense ice and water simultaneously from a single tap, ensuring cleanness of both water and ice through an all-tankless system and self-cleaning system.</p>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item wellness02">
                                                                    <div class="data-head">
                                                                        <strong class="data-name">Ultra-compact plus tankless water purifier</strong>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <p class="para">An eco-friendly water purifier, winner of the CES Innovation Award, characterized by its compact and slim design alongside a range of convenient features including warm water dispensing. Committed to ESG values, it emphasizes.</p>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item wellness03">
                                                                    <div class="data-head">
                                                                        <strong class="data-name">All-clean the Art air purifier</strong>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <p class="para">The ‘Separable and washable’ architecture ensures that the product remains as clean as new at all times. The three-step clean pop-up system automatically adjusts outlet elevation in response to air contamination levels, swiftly detecting spatial contamination and purifying the air in the affected area intensively.</p>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item wellness04">
                                                                    <div class="data-head">
                                                                        <strong class="data-name">All-clean bubble-sanitizing bidet</strong>
                                                                    </div>
                                                                    <div class="data-body">
                                                                        <p class="para">Simply press the one-touch button to cleanse the bowels with bidet-exclusive detergent. The four-fold electrolyzed water sterilization process eliminates germs from the bowels, water tank, drain pipe and nozzle.</p>
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
                                                            Wellness Innovation through Robotics<br><br>
                                                            Unlike conventional utility robots that focus solely on functionality,<br>
we pursue wellness robots that elevate the user experience.<br><br>
                                                            Rooted in the philosophy of enhancing humanity,<br>
                                                            we seamlessly integrate this vision with advanced robotics technology and an open ecosystem,
positioning ourselves as a first mover in the wellness robotics market.<br><br>
                                                            This is the very essence of NAMUH<sup>X</sup>: Innovation for Humanity.
                                                        </p>
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
                                                <img src="/assets/images/logo/logo_skintellix_e.svg" alt="SK Intellix Logo Image">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">Interested in a business proposals or <br class="pc-only">have customer inquiries</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK Intellix welcome your valuable suggestions and inquires.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/en/global/sk-inquiry-form" target="_blank">
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
                                                                    <img src="<c:out value="${item.addedFile}"/>" alt="${item.description}">
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