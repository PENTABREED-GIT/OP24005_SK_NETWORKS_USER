<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Mintit &lt; Business &lt; SK Networks</title>
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
    <div class="main business mintit" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">Mintit</span></li>
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">Accessible and Convenient, <br>Anytime, Anywhere</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">Mintit</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-mintit.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Mintit</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">Mintit</h3>
                                            <h4 class="sub-title">A Hassle-Free and Reliable Platform for Recycling Secondhand ICT Devices</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                MINTIT is creating an environment where anyone can easily and conveniently trade used phones through the ‘MINTIT ATM,’ Korea’s first AI-based unmanned used phone purchasing machine.
                                            </p>
                                            <p class="para case2">
                                                Additionally, the machine is equipped with internationally certified technology that completely erases personal information and data stored on second-hand mobile devices, alleviating concerns and increasing the reliability of used phone transactions.
                                            </p>
                                            <p class="para case2">
                                                Beyond second-hand phone trading services, MINTIT is also leading in ESG management. It helps individuals easily recycle resources and protect the environment in their daily lives. <br>
                                                MINTIT continues various ESG activities each year, such as the Eco Campaign and the “Planting Three Red Trees” campaign.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://mintit.co.kr/" target="_blank" title="Opens in a new window."><span class="btn-text">Go to the Mintit</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/en/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="mintit"/>
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
                                                <div class="data-item back-mintitBusi">
                                                    <div class="contents">
                                                        <div class="contents-item">
                                                            <strong class="contents-name type1">AI-based Diagnosis and Price Appraisal</strong>
                                                            <p class="para">Utilizing AI machine learning-based technology for phone exterior evaluation, our ATM provides real-time appraisal results, improving transparency in the secondhand phone market.</p>
                                                        </div>
                                                        <div class="contents-item">
                                                            <strong class="contents-name type1">Non-Face-to-Face ATM</strong>
                                                            <p class="para">With over 6,600 locations nationwide, our non-face-to-face ATM system simplifies the secondhand phone trading process, making it more convenient for users.</p>
                                                        </div>
                                                        <div class="contents-item">
                                                            <strong class="contents-name type1">Complete Data Deletion</strong>
                                                            <p class="para">MINTIT’s proprietary data deletion app, certified by the international certification ADISA, along with Korea’s first patented data deletion technology, ensures the complete removal of personal information, preventing data leakage.</p>
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
                                            <strong class="data-name">Social Value</strong>
                                        </div>
                                        <div class="data-body">
                                            <div class="data-list">
                                                <div class="data-item back-socialValues">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">We create social value together with our customers.</strong>
                                                        <p class="para">Second-hand phones sold through MINTIT are recycled to reduce waste and contribute to saving resources and protecting the environment by lowering greenhouse gas emissions during the manufacturing process of new smartphones.</p>
                                                        <p class="para">Furthermore, MINTIT helps create a better society through the ‘Donate’ option. When customers choose to donate the value of their used phones, we have provided electronic devices, learning materials, and education expenses for children from IT-disadvantaged groups. We will continue to strive to create social value through our used phone business.</p>
                                                        <p class="para">Since 2021, we have planted a total of 4,000 trees in Yeoui Saetgang Ecological Park and have engaged in environmental cleanup activities every Arbor Day, working toward achieving Net Zero.</p>
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
                                                <img src="/assets/images/logo/logo-mintit.svg" alt="mintit Logo Image">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">Interested in a business proposals or <br class="pc-only">have customer inquiries</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">Mintit welcome your valuable suggestions and inquires.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://www.mintit.co.kr/inquiry/partnership" target="_blank">
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