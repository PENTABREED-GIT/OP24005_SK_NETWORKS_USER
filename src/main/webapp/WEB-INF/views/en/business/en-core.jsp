<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>En-core &lt; Business &lt; SK Networks</title>
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
    <div class="main business encore" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">En-core</span></li>
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">Accelerate Enterprise<br>AI Transformation</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">En-core</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-encore.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">En-core</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">En-core</h3>
                                            <h4 class="sub-title">A Tech Company Supporting Data Management and Business Innovation Data Business Specialist Enabling Sustainable Data Management and Utilization
                                                </h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                For 27 years, en-core has leveraged its deep understanding of data and ICT to develop proprietary methodologies, providing systematic data management consulting services and integrated management solutions such as DATAWARE™. Our services are utilized across various industries, including manufacturing, services, finance, telecommunications, public sector, distribution, healthcare, and education.
                                            </p>
                                            <p class="para case2">
                                                We offer efficient strategies and professional solutions aligned with technological trends and customer needs. These include data governance, next-generation system construction, data migration and integration, data lake implementation, data portal establishment, cloud, MSA environment adaptation, AI-based data standardization strategies, and IT education.
                                            </p>
                                            <p class="para case2">
                                                In 2024, en-core plans to present data asset strategies and solutions that supports sustainable data management and utilization for companies and institutions, addressing the rapidly changing IT environment and significant technological advancements.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.en-core.com/?language=eng" target="_blank" title="Opens in a new window."><span class="btn-text">Go to the En-core</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/en/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="en-core"/>
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
                                                <div class="data-item back-dataConsulting">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">Data Consulting</strong>
                                                        <p class="para">En-core offers exclusive data consulting services facilitated by specialized data consultants and solution architects who understand different industries such as finance, manufacturing, distribution, telecommunications, and the public sector.</p>
                                                        <p class="para">We provide optimized consulting services that address customer needs based on EDF™ (Enterprise Data Framework), a data consulting methodology developed by accumulated data consulting know-how, including next-generation architecture, data design, integration, migration, performance management, quality control, and governance.</p>
                                                    </div>
                                                </div>
                                                <div class="data-item back-dataware">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">Data Solution: DATAWARE™</strong>
                                                        <p class="para">En-core provides an integrated data management solution called DATAWARE™ as a single platform to maximize data quality in enterprise data management.</p>
                                                        <p class="para">DATAWARE™ is an integrated solution that supports an enterprise-wide data management system from analysis, design, and operation to corporate data management. Comprised of data modeling, meta, quality, flow, impact analysis, data bank, operation, and management, the solution complies with international web standards and is compatible with the e-government framework.</p>
                                                        <p class="para">Service modules are optimized for on-premise or cloud environments, allowing services to be provided without OS and browser dependency. All solutions can be installed separately as plug-ins and are delivered in a unified web-based portal format, enabling an optimal environment for operation and management.
                                                        <br>
                                                        DATAWARE™ contributes to enhanced convenience and productivity for efficient data management in enterprises and institutions.</p>
                                                    </div>
                                                    <div class="contents-figure">
                                                        <picture>
                                                            <source media="(max-width: 1023px)" srcset="/assets/images/business/dataware-figure-01-e-mo.svg">
                                                            <source media="(max-width: 1920px)" srcset="/assets/images/business/dataware-figure-01-e-pc.svg">
                                                            <img src="/assets/images/business/dataware-figure-01-e-pc.svg" alt="1. En-core’s proprietary data consulting framework (EDF) is applied 2. ALL-in-One Data Platform 3. Utilized to build data systems in various industries, such as finance, public sectors, manufacturing, and distribution">
                                                        </picture>
                                                    </div>
                                                </div>
                                                <div class="data-item back-playData">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">PlayData_IT Training for Professionals</strong>
                                                        <p class="para">En-core’s IT training center, PlayData Academy, aims to train IT professionals who will lead the Industry 4.0 era. It offers a curriculum encapsulating En-core’s consulting expertise and comprises top-notch instructors nationwide, providing customized training programs centered around on-site projects.</p>
                                                        <p class="para">Since its opening in 2017, more than 3,000 students and employees have completed En-core PlayData’s training programs.</p>
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
                                                <img src="/assets/images/logo/logo-encore.svg" alt="En-core Logo Image">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">Interested in a business proposals or <br class="pc-only">have customer inquiries</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">En-core welcome your valuable suggestions and inquires.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://www.en-core.com/company/contactus" target="_blank">
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