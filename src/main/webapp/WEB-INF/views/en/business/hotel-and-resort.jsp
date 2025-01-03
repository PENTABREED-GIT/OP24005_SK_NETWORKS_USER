<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Hotels & Resorts &lt; Business &lt; SK Networks</title>
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
    <div class="main business hotel" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">Walkerhill Hotels &amp; Resorts</span></li>
                        </ul>
                    </div>
                    <div class="local-subject"><h2 class="local-name">Beyond Entertainment,<br>Elevating Excitement</h2></div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">Walkerhill Hotels &amp; Resorts</h2>
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
                    <div class="content-head">Walkerhill Hotels &amp; Resorts</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h3 class="title">Walkerhill Hotels &amp; Resorts</h3>
                                            <h4 class="sub-title">All Around Destination where everything is possible: lodging, exhibitions, experiences, performances and more</h4>
                                        </div>
                                        <div class="article-body">
                                            <p class="para case2">
                                                Walkerhill Hotels &amp; Resorts, a leader in the Korean hotel industry, offers premier experiences across leisure, culture, gastronomy, and lifestyle in an urban natural setting.
                                            </p>
                                            <p class="para case2">
                                                Our diverse brands, including Grand Walkerhill Seoul, Vista Walkerhill Seoul, Douglas House, and Darakhyu, each provide a unique ambiance that caters to various customer preferences and needs.
                                            </p>
                                            <p class="para case2">
                                                Our services also include gourmet cuisine from top chefs, restaurants and bars that provide varied dining experiences, and 7 banquet venues where top-notch services are available with the touch of experts. Our unique facilities, like the Théâtre des Lumières, Forest Park, Riverpark, and TENEZ Park, ensure ultimate enjoyment and inspiration.
                                            </p>
                                            <p class="para case2">
                                                Since announcing our commitment to being an Eco-Friendly Hotel in 2021, we have achieved the Eco-Friendly Hotel Certification and introduced innovative business models for authentic ESG management. We are dedicated to realizing ESG values in partnership with our customers.
                                                Moreover, Walkerhill Hotels &amp; Resorts is set to evolve into an AI Hotel through innovation in both Culture and Technology.
                                            </p>
                                        </div>
                                        <div class="article-util">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/en" target="_blank" title="Opens in a new window."><span class="btn-text">Go to the Walkerhill Hotels &amp; Resorts</span></a>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/en/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="hotel-and-resort"/>
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
                                                <div class="data-item back-grand">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">Grand Walkerhill Seoul</strong>
                                                        <p class="para">Surrounded by the beautiful Hangang River and lush Achasan Mountain, Grand Walkerhill Seoul is the ultimate urban resort, providing comfort and relaxation with prestigious facilities and impressive services.</p>
                                                        <p class="para">A variety of facilities are available at the resort, including walking paths where guests can enjoy the charm of the four seasons, an outdoor swimming pool overlooking the Hangang River, a Forest Park for picnics, and the Walkerhill Library for reading and relaxing. Additionally, activity programs with Walkerhill’s leisure specialists (WALKEE) and an immersive art exhibition, Théâtre des Lumières, will keep the guests entertained as well.</p>
                                                        <p class="para">The resort also hosts luxurious and private banquets and weddings at the convention center composed of 7 multipurpose banquet halls and Aston House, providing top-notch services for high-end occasions.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/grandwalkerhillseoul/en/" target="_blank" title="Opens in a new window.">
                                                            <span class="btn-text">Go to the Grand Walkerhill Seoul</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="data-item back-vista">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">VISTA Walkerhill Seoul</strong>
                                                        <p class="para">Vista Walkerhill Seoul rejuvenates and energizes guests through original and unique relaxation based on the latest trends. The hotel offers fresh stimuli and unconventional experiences under the slogan “REFRESHING. VIVIDLY.”</p>
                                                        <p class="para">Different facilities available at the hotel include SKYARD, an outdoor rooftop garden with a panoramic view of the Hangang River, an indoor swimming pool with a cityscape view through large windows, and SPACE WALKERHILL introducing the latest trends and cultural content. Each guest room is equipped with state-of-the-art services, offering a whole new lodging experience. In addition, various programs offered by the WELLNESS CLUB help customers create a healthy lifestyle and infuse their lives with vitality and new energy.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/vistawalkerhillseoul/en/" target="_blank" title="Opens in a new window.">
                                                            <span class="btn-text">Go to the VISTA Walkerhill Seoul
                                                            </span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="data-item back-douglas">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">Douglas House</strong>
                                                        <p class="para">A solitary querencia* in a quiet forest, Douglas House features nature-friendly décor and carefully selected services that allow guests to enjoy the ultimate healing journey. Operating as an adult-only property, it has been well received as the perfect location for guests who seek quiet contemplation amid nature in the city.</p>
                                                        <p class="para">Facilities offered at Douglas House include a private lounge offering a light breakfast and happy hour, a library furnished with the latest books selected by Choi In-ah Bookstore, and an exclusive garden where one can fill their heart with nature. The warmth and composure of nature will bring relaxation while enjoying a tranquil stroll on the car-free walking path.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/grandwalkerhillseoul/en/douglas/Intro" target="_blank" title="Opens in a new window.">
                                                            <span class="btn-text">Go to the Douglas House</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="data-item back-outside">
                                                    <div class="contents">
                                                        <strong class="contents-name type1">External Businesses</strong>
                                                        <p class="para">n addition to Incheon Airport Transit Hotel and premium Matina Lounge, Walkerhill Hotels &amp; Resorts operates DARAKHYU, South Korea’s first capsule hotel and a resting place for discerning travelers, at Incheon Airport and Yeosu. It also has a strong F&B presence with Golden Dragon Chinese restaurant at Samil Building and five golf club houses at major domestic country clubs in South Korea, as well as outside catering services for international events such as the 2015 Presidents Cup.</p>
                                                        <p class="para">Recently, various PB products utilizing the Walkerhill brand have been launched to deliver the unique service know-how and brand value of Walkerhill Hotels &amp; Resorts to a wide range of customers.</p>
                                                    </div>
                                                    <div class="contents-util">
                                                        <a class="btn design3 case3 type4 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/en/about/CustomerService" target="_blank" title="Opens in a new window.">
                                                            <span class="btn-text">Walkerhill External Business</span>
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
                                                <img src="/assets/images/logo/logo-walkerhill.svg" alt="Walkerhill logo Image">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">Interested in a business proposals or <br class="pc-only">have customer inquiries</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">Walkerhill hotels &amp; resorts welcome your valuable suggestions and inquires.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="https://www.walkerhill.com/en/customer/VOCForm.wh" target="_blank">
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