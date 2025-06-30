<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>InquiriesㆍSuggestions &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main etc inquiry-proposal" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">InquiriesㆍSuggestions</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">Inquiries<br class="mo-only">ㆍ<br class="mo-only">Suggestions</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">InquiriesㆍSuggestions</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 brand-inquiry">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">
                                            Go to Brand-Specific Inquiry Pages
                                        </h4>
                                        <p class="section-summary">For quicker and more accurate responses, please contact the customer service center of each brand directly.</p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="board-list brand-inquiry">
                                        <li class="board-item walkerhill">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.walkerhill.com/en/customer/VOCForm.wh" target="_blank" title="Opens in a new window.">
                                                    <span class="btn-text pc-only">Go to Customer Service Center<span class="blind">(Walkerhill hotels &amp; resorts)</span></span>
                                                    <span class="btn-text mo-only">Walkerhill hotels &amp; resorts</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="board-item networksService">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.sknservice.com/contact.do?MENUNO=5" target="_blank" title="Opens in a new window.">
                                                    <span class="btn-text pc-only">Go to Customer Service Center<span class="blind">(SKnetworks Service)</span></span>
                                                    <span class="btn-text mo-only">SKnetworks Service</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="board-item magic">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://service.skmagic.com/web/easy/easyMain.do?tabIndex=0#Back" target="_blank" title="Opens in a new window.">
                                                    <span class="btn-text pc-only">Go to Customer Service Center<span class="blind">(SK Magic)</span></span>
                                                    <span class="btn-text mo-only">SK Magic</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="board-item speedmate">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.speedmate.com/customer/FAQ" target="_blank" title="Opens in a new window.">
                                                    <span class="btn-text pc-only">Go to Customer Service Center<span class="blind">(Speedmate)</span></span>
                                                    <span class="btn-text mo-only">Speedmate</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="board-item mintit">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://mintit.co.kr/cscenter/faq" target="_blank" title="Opens in a new window.">
                                                    <span class="btn-text pc-only">Go to Customer Service Center<span class="blind">(Mintit)</span></span>
                                                    <span class="btn-text mo-only">Mintit</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="board-item encore">
                                            <div class="board-wrap">
                                                <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.en-core.com/company/contactus" target="_blank" title="Opens in a new window.">
                                                    <span class="btn-text pc-only">Go to Customer Service Center<span class="blind">(Encore)</span></span>
                                                    <span class="btn-text mo-only">Encore</span>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case3 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">
                                            Go to the Other Inquiries Page for Business Proposals, IR, ESG, etc.
                                        </h4>
                                        <p class="section-summary">For business proposals, IR, ESG, and other inquires, please use the banner below to reach out to us.</p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="banner design1 case1 type1">
                                        <div class="banner-wrap">
                                            <div class="banner-head">
                                                <img src="/assets/images/logo/logo-c1-e.svg" alt="SK networks 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">Do you have a business proposal or customer inquiry?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK Networks is eager to hear your valuable suggestions or proposals.</span>
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