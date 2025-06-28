<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Sustainability Report and Policy &lt; Data Center &lt; Sustainability &lt; SK Networks</title>
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
            Tab();
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
    <div class="main esg report-st" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Data Center</span></li>
                            <li class="data-item"><span class="item-text">Sustainability Report and Policy</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">
                            Disclosing ESG information<br class="pc-only">
                            Transparently in accordance<br class="pc-only">
                            with international standards.
                        </h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Sustainability Report and Policy</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/sustainability/bg-local-head-esg-reference.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Sustainability Report and Policy</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design2 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Sustainability Report Download</h4>
                                    </div>
                                </div>
                                <div id="oldTd" class="section-body">
                                    <div class="post-list design5 case1 type1">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <img src="/assets/images/sustainability/green-en.jpg" alt="Cover of 2023 Sustainable Management Report">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="data-display design2 case1 type1">
                                        <ul class="data-list network">
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-date">2023 Sustainability Report</p>
                                                    </div>
                                                    <div class="item-util">
                                                        <div class="btn-display design1 case3 align1">
                                                            <div class="btn-area">
                                                                <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/자료실/보고서 및 정책/SK networks_2023 Sustainability Report_(Eng).pdf"><span class="btn-text">Download</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="newTd" class="section-body">
                                    <div class="post-list design5 case1 type1">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <img src="/assets/images/sustainability/sustain-report-thumb-2024-en.jpg" alt="Cover of 2024 Sustainable Management Report">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="data-display design2 case1 type1">
                                        <ul class="data-list network">
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-date">2024 Sustainability Report</p>
                                                    </div>
                                                    <div class="item-util">
                                                        <div class="btn-display design1 case3 align1">
                                                            <div class="btn-area">
                                                                <div class="btn design3 case2 type3 color5" style="pointer-events: none"><span class="btn-text">Available end of June</span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:if test="${not empty reportList}">
                            <div class="section design2 type1">
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">Sustainability Report</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="data-display design2 case6 type1">
                                            <ul class="data-list">
                                                <c:forEach items="${reportList}" var="list" varStatus="status">
                                                    <li class="data-item">
                                                        <div class="item-wrap">
                                                            <div class="item-head">
                                                                <p class="item-date"><c:out value="${list.title}"/></p>
                                                            </div>
                                                            <div class="item-util">
                                                                <div class="btn-display design1 case3 align1">
                                                                    <div class="btn-area">
                                                                        <c:if test="${not empty list.koPdfUid}">
                                                                            <button class="btn design3 case2 type3 color5 ar-icon-download" onclick="fileDownLoad(this)" data-fileuid="${list.koPdfUid}"><span class="btn-text">Kor Download</span></button>
                                                                        </c:if>
                                                                        <c:if test="${not empty list.enPdfUid}">
                                                                            <button class="btn design3 case2 type3 color5 ar-icon-download" onclick="fileDownLoad(this)" data-fileuid="${list.enPdfUid}"><span class="btn-text">Eng Download</span></button>
                                                                        </c:if>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <div class="section design1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Policy</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="data-display design5">
                                        <div class="data-list">
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-body">
                                                        <p class="para">SK Networks discloses environmental, social, and governance (ESG) data in line with sustainability reporting standards such as GRI and SASB. To ensure the accuracy of our data reporting, we conduct internal verification and third-party verification processes. We transparently share our data collection criteria and calculation methods through the ESG Data Manual. In addition, we collect internal policies related to sustainable management and transparently disclose them through the Policy Book.</p>
                                                        <div class="btn-display align3">
                                                            <div class="btn-area">
                                                                <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/자료실/보고서 및 정책/2024_SKN_ESG_Data_Manual.pdf"><span class="btn-text">ESG Policy and Practice <br>Guideline Download</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <em class="subject">Policy</em>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="order-list design2">
                                                            <ul class="list-inner">
                                                                <li class="order-item"><span class="num">03</span>Corporate Governance Charter</li>
                                                                <li class="order-item"><span class="num">13</span>Code of Ethics</li>
                                                                <li class="order-item"><span class="num">15</span>Practice Guidelines for the Code of Ethics</li>
                                                                <li class="order-item"><span class="num">20</span>Corruption Prevention Policy</li>
                                                            </ul>
                                                            <ul class="list-inner">
                                                                <li class="order-item"><span class="num">21 </span>Human Rights Policy</li>
                                                                <li class="order-item"><span class="num">23 </span>Human Rights Commitment Declaration</li>
                                                                <li class="order-item"><span class="num">25 </span>Health and Safety Management Policy</li>
                                                                <li class="order-item"><span class="num">26 </span>Sustainable Supply Chain Policy</li>
                                                            </ul>
                                                            <ul class="list-inner">
                                                                <li class="order-item"><span class="num">29</span>Supplier Code of Conduct</li>
                                                                <li class="order-item"><span class="num">34</span>Supply Chain ESG Guidelines</li>
                                                                <li class="order-item"><span class="num">43</span>Environmental Policy</li>
                                                            </ul>
                                                        </div>
                                                        <div class="btn-display align3">
                                                            <div class="btn-area">
                                                                <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/자료실/보고서 및 정책/SKN_ESG Policy&Guideline_Eng.pdf"><span class="btn-text">Policy Book Download</span></a>
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

<script>
    // 250620 추가 : 0623 텍스트 변경 되도록
    document.addEventListener('DOMContentLoaded', function() {
        newDateChange('2025-06-23 00:00:00');
    });

    function newDateChange(startDateTime) {
        var now = new Date();
        var startDate = new Date(startDateTime);

        var oldTd = document.getElementById('oldTd');
        var newTd = document.getElementById('newTd');

        if (oldTd && newTd) {
            if (now >= startDate) {
                oldTd.style.display = 'none';
                newTd.style.display = 'block';
            } else {
                oldTd.style.display = 'block';
                newTd.style.display = 'none';
            }
        } else {
            // console.error('❌ oldTd 또는 newTd 요소를 찾을 수 없습니다.');
        }
    }
</script>
</html>