<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>감사보고서 &lt; 재무정보 &lt; IR &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
</head>

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main ir stock-info audit-report" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>
                        <li class="data-item"><span class="item-text">재무정보</span></li>
                        <li class="data-item"><span class="item-text">감사보고서</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">감사보고서</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">감사보고서 페이지</div>
                    <div class="content-body">
                        <div class="section design2 type1 current">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">외부감사인 현황</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">법인명 : 삼정회계법인 I 선임일 : 2022.11.29 I 계약기간 : 2023~2025 I 최근 감사 의견 : 적정</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design2 type1 report">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">감사보고서 자료</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list design1 case1 type1 ">
                                        <c:forEach items="${mainReportList}" var="mainReport" varStatus="status">
                                            <c:if test="${not empty mainReport.consolidationFile}">
                                                <div class="board-item">
                                                    <div class="board-wrap">
                                                        <div class="board-head">
                                                            <p class="board-subject">연결 감사보고서</p>
                                                            <p class="board-date">${mainReport.year}</p>
                                                        </div>
                                                        <div class="board-util">
                                                            <div class="btn-display align2">
                                                                <div class="btn-area">
                                                                    <c:if test="${not empty mainReport.consolidationFileUid}">
                                                                        <button class="btn design3 case1 type1 color2 ar-icon-download-bg" onclick="fileDownLoad(this)" data-fileuid="${mainReport.consolidationFileUid}"><span class="btn-text">다운로드</span></button>
                                                                    </c:if>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                        <c:forEach items="${mainReportList}" var="mainReport" varStatus="status">
                                            <c:if test="${not empty mainReport.separationFile}">
                                                <div class="board-item">
                                                    <div class="board-wrap">
                                                        <div class="board-head">
                                                            <p class="board-subject">별도 감사보고서</p>
                                                            <p class="board-date">${mainReport.year}</p>
                                                        </div>
                                                        <div class="board-util">
                                                            <div class="btn-display align2">
                                                                <div class="btn-area">
                                                                    <c:if test="${not empty mainReport.separationFileUid}">
                                                                        <button class="btn design3 case1 type1 color2 ar-icon-download-bg" onclick="fileDownLoad(this)" data-fileuid="${mainReport.separationFileUid}"><span class="btn-text">다운로드</span></button>
                                                                    </c:if>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design2 type1 report">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">연도별 감사보고서</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="data-display design2 case6 type1">
                                        <ul class="data-list">
                                            <c:forEach items="${irAuditReportList}" var="list" varStatus="status">
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-date"><c:out value="${list.year}"/></p>
                                                    </div>
                                                    <div class="item-util">
                                                        <div class="btn-display design1 case3 align1">
                                                            <div class="btn-area">
                                                                <c:if test="${not empty list.consolidationFile}">
                                                                    <button class="btn design3 case2 type3 color5 ar-icon-download" onclick="fileDownLoad(this)" data-fileuid="${list.consolidationFileUid}"><span class="btn-text">연결 기준</span></button>
                                                                </c:if>
                                                                <c:if test="${not empty list.separationFile}">
                                                                    <button class="btn design3 case2 type3 color5 ar-icon-download" onclick="fileDownLoad(this)" data-fileuid="${list.separationFileUid}"><span class="btn-text">별도 기준</span></button>
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