<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>보고서 및 정책 &lt; 자료실 &lt; Sustainability &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
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

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main esg report-st" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">자료실</span></li>
                            <li class="data-item"><span class="item-text">보고서 및 정책</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">국제 표준에 맞추어<br>
                            ESG 정보를 투명하게 공개합니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">보고서 및 정책</h3>
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
                    <div class="content-head">보고서 및 정책</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design2 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">지속가능경영보고서</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="post-list design5 case1 type1">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <img src="/assets/images/sustainability/sustain-report-thumb-2024.jpg" alt="2024년 지속가능경영 보고서 표지">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="data-display design2 case1 type1">
                                        <ul class="data-list network">
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-date">2024 지속가능경영보고서</p>
                                                    </div>
                                                    <div class="item-util">
                                                        <div class="btn-display design1 case3 align1">
                                                            <div class="btn-area">
                                                                <a class="btn design3 case2 type3 color5 ar-icon-download" href="/assets/upload/public/data/ko/sustainability/reference_room/Sustainability_Report_and_Policy/FY2024_SK네트웍스_국문.pdf"><span class="btn-text">국문 <span class="pc-only">&nbsp;다운로드</span></span></a>
                                                                <a class="btn design3 case2 type3 color5 ar-icon-download" href="/assets/upload/public/data/en/sustainability/reference_room/Sustainability_Report_and_Policy/FY2024 SK네트웍스_영문_Final.pdf"><span class="btn-text">영문 <span class="pc-only">&nbsp;다운로드</span></span></a>
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
                                            <h4 class="section-name">연도별 <br>지속가능경영보고서</h4>
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
                                                                            <button class="btn design3 case2 type3 color5 ar-icon-download" onclick="fileDownLoad(this)" data-fileuid="${list.koPdfUid}"><span class="btn-text">국문 <span class="pc-only">&nbsp;다운로드</span></span></button>
                                                                        </c:if>
                                                                        <c:if test="${not empty list.enPdfUid}">
                                                                            <button class="btn design3 case2 type3 color5 ar-icon-download" onclick="fileDownLoad(this)" data-fileuid="${list.enPdfUid}"><span class="btn-text">영문 <span class="pc-only">&nbsp;다운로드</span></span></button>
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
                                                        <p class="para">SK네트웍스는 GRI, SASB 등의 지속가능경영 보고 기준에 따라 환경, 사회, 지배구조 Data를 공개하고 있습니다. Data 보고의 정확성 제고를 위해 사전 내부 검증 및 제3자 기관의 검증 프로세스를 거치며, Data 수집 기준, 산정 방식 등을 ESG Data 수집 매뉴얼을 통해 외부에 투명하게 공개하고 있습니다.
                                                            또한, 지속가능경영과 관련된 내부 정책을 수집하여 정책북을 통해 투명하게 공개하고 있습니다.</p>
                                                        <div class="btn-display align3">
                                                            <div class="btn-area">
                                                                <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/자료실/보고서 및 정책/2024_SKN_ESG_Data_Manual.pdf"><span class="btn-text">ESG Data 수집 매뉴얼</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <em class="subject">정책</em>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="order-list design2">
                                                            <ul class="list-inner">
                                                                <li class="order-item"><span class="num">03</span>기업지배구조 헌장</li>
                                                                <li class="order-item"><span class="num">13</span>윤리규범</li>
                                                                <li class="order-item"><span class="num">15</span>윤리규범 실천 가이드라인</li>
                                                                <li class="order-item"><span class="num">20</span>부패방지방침</li>
                                                            </ul>
                                                            <ul class="list-inner">
                                                                <li class="order-item"><span class="num">21 </span>인권 정책</li>
                                                                <li class="order-item"><span class="num">23 </span>인권경영선언</li>
                                                                <li class="order-item"><span class="num">25 </span>안전 및 보건에 관한 경영방침</li>
                                                                <li class="order-item"><span class="num">26 </span>공급망 지속 가능성 정책</li>
                                                            </ul>
                                                            <ul class="list-inner">
                                                                <li class="order-item"><span class="num">29</span>협력사 행동규범</li>
                                                                <li class="order-item"><span class="num">34</span>공급망 ESG 가이드라인</li>
                                                                <li class="order-item"><span class="num">43</span>환경방침</li>
                                                            </ul>
                                                        </div>
                                                        <div class="btn-display align3">
                                                            <div class="btn-area">
                                                                <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/자료실/보고서 및 정책/SKN_ESG Policy&Guideline_Kor.pdf"><span class="btn-text">정책 북 다운로드</span></a>
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
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>
</html>
