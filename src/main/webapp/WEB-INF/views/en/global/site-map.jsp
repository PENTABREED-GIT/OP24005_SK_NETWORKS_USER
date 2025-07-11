<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 4:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Sitemap &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
</head>

<body class="kr">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main etc sitemap" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">Sitemap</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">Sitemap</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Sitemap</div>
                    <div class="content-body">
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            Company
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/company/summary" class="sitemap">Company Overview</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/company/ceo" class="sitemap">CEO Message</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/company/history" class="sitemap">History</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/company/global-network" class="sitemap">Global Networks</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            Business
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/business/summary" class="sitemap">Business Overview</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/business/global-investment" class="sitemap">Walkerhill Hotels &amp; Resorts</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/business/information-communication" class="sitemap">ICT Marketing</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/business/hotel-and-resort" class="sitemap">Hotels &amp; Resorts</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/business/sk-intellix" class="sitemap">SK Magic</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/business/skspeedmate" class="sitemap">SK Speedmate</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/business/sk-eleclink" class="sitemap">SK Electlink</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/business/glowide" class="sitemap">Glowide</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/business/mintit" class="sitemap">MINTIT</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/business/en-core" class="sitemap">En-core</a>
                                        </li>
                                        <!-- 히든처리 추후에 반영 -->
                                        <!-- <li class="sitemap-item">
                                            <a href="/${LANG}/business/phnyx-lab" class="sitemap">PhnyX Lab</a>
                                        </li> -->
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            Sustainability
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/sustainability/summary" class="sitemap">Overview of<br class="pc-only">Sustainable <br class="pc-only">Management</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/sustainability/social-value/double-botoom-line" class="sitemap">Social Value</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/social-value/double-botoom-line" class="sitemap-depth2">Double Bottom Line</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/social-value/result" class="sitemap-depth2">Social Value Performance</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/sustainability/environment/management" class="sitemap">Environment</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/environment/management" class="sitemap-depth2">Environmental Management</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/environment/climate-change" class="sitemap-depth2">Climate Change</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/sustainability/society/human-rights-management" class="sitemap">Society</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/society/member-happiness" class="sitemap-depth2">Employee Happiness</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/society/safety-and-health" class="sitemap-depth2">Safety &amp; Health</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/society/stake-holder-happiness" class="sitemap-depth2">Stakeholder Happiness</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/society/information-protection-and-security" target="_self" class="sitemap-depth2">Information Protection and Security</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/sustainability/governance/structure" target="_self" class="sitemap">Governance</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/governance/structure" target="_self" class="sitemap-depth2">Governance</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/governance/ethical-management" target="_self" class="sitemap-depth2">Ethical Management</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/governance/investment-management" target="_self" class="sitemap-depth2">Investment Management</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/sustainability/reference-room/reports-and-policies" target="_self" class="sitemap">Data Center</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/reference-room/reports-and-policies" target="_self" class="sitemap-depth2">Sustainability Report and Policy</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/sustainability/reference-room/awards-and-certifications" target="_self" class="sitemap-depth2">Certifications</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            IR
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/ir/stock/stock-price-information" target="_self" class="sitemap">Stocks</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/ir/stock/stock-price-information" target="_self" class="sitemap-depth2">Stock Prices</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/ir/stock/shareholder-return" target="_self" class="sitemap-depth2">Shareholder Return</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/ir/financial-information/key-financial-facts" target="_self" class="sitemap">Finance</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/ir/financial-information/key-financial-facts" target="_self" class="sitemap-depth2">Financial Status</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/ir/financial-information/audit-report" target="_self" class="sitemap-depth2">Audit Report</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/ir/financial-information/credit-rating" target="_self" class="sitemap-depth2">Credit Ratings</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/ir/ir-schedule" target="_self" class="sitemap">IR Information</a>
                                            <ul class="sitemap-list-depth2">
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/ir/ir-schedule" target="_self" class="sitemap-depth2">IR Event</a>
                                                </li>
                                                <li class="sitemap-item-depth2">
                                                    <a href="/${LANG}/ir/ir-data" target="_self" class="sitemap-depth2">IR Materials</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            PR
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/pr/news-room" target="_self" class="sitemap">Newsroom</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/pr/brand" target="_self" class="sitemap">Brand</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            Career
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/career/corporate-culture" target="_self" class="sitemap">Business Culture</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/career/personnel-training" target="_self" class="sitemap">Human Resource Development</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/career/evaluation-reward" target="_self" class="sitemap">Appraisal/Remuneration</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/career/job-introduction" target="_self" class="sitemap">Recruitment information</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="https://www.skcareers.com/" target="_blank" title="Opens in a new window.">
                                                <span class="btn-text">Job Openings</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h3 class="section-name">
                                            Contact / SNS
                                        </h3>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <ul class="sitemap-list">
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/global/inquiry-form" target="_self" class="sitemap">Contact</a>
                                        </li>
                                        <li class="sitemap-item">
                                            <a href="/${LANG}/global/privacy-policy" target="_self" class="sitemap">Privacy Policy</a>
                                        </li>
                                    </ul>
                                    <div class="sitemap-util btn-display design1 case3">
                                        <div class="btn-area">
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2 blog" href="https://blog.sknetworks.co.kr/?_ga=2.226815837.1728627398.1563336670-980524045.1557883331" target="_blank" title="Opens in a new window.">
                                                <span class="btn-text">Blog</span>
                                            </a>
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2 post" href="https://m.post.naver.com/my.nhn?memberNo=43457791" target="_blank" title="Opens in a new window.">
                                                <span class="btn-text">Post</span>
                                            </a>
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2 facebook" href="https://www.facebook.com/official.sknetworks" target="_blank" title="Opens in a new window.">
                                                <span class="btn-text">Facebook</span>
                                            </a>
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2 youtube" href="https://www.youtube.com/channel/UCMQo25JGe40HNs6kK7LyphQ" target="_blank" title="Opens in a new window.">
                                                <span class="btn-text">Youtube</span>
                                            </a>
                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2 insta" href="https://www.instagram.com/sknetworks_official/" target="_blank" title="Opens in a new window.">
                                                <span class="btn-text">Instagram</span>
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
    <!-- page-foot -->
    <footer id="footer">
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>