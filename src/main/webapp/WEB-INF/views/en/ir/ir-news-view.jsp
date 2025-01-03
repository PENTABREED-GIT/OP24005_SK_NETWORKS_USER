<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>IR News &lt; IR Information &lt; IR &lt; SK Networks</title>
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
    <div class="main ir" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>
                        <li class="data-item"><span class="item-text">IR Information</span></li>
                        <li class="data-item"><span class="item-text">IR News</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">IR News</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">IR News page</div>
                    <div class="content-body">
                        <div class="section detail-layout design1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name"><c:out value="${prPress.title}"/></h4>
                                        <div class="section-summary">
                                            <div class="data-display design2 case2 type2">
                                                <ul class="data-list">
                                                    <li class="data-item">
                                                        <div class="item-wrap">
                                                            <div class="item-head">
                                                                <p class="item-date"><c:out value="${prPress.regDate}"/></p>
                                                            </div>
                                                            <div class="item-util">
                                                                <div class="btn-display design1 case3 align1">
                                                                    <div class="btn-area">
                                                                        <button class="btn design3 case2 type3 color5 al-icon-printer pc-only" onclick="printSection()"><span class="btn-text">Print</span></button>
                                                                        <button class="btn design3 case2 type3 color5 al-icon-share" onclick="copyURL()"><span class="btn-text">Share</span></button>
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
                                <div class="section-body" style="font-size: 18px;">
                                    <!-- 에디터 영역 -->
                                    ${prPress.content}
                                    <!-- //에디터 영역 -->
                                </div>
                                <div class="section-util">
                                    <div class="btn-display">
                                        <a href="/${LANG}/ir/ir-news?currentPage=${param.currentPage}&searchWord=${param.searchWord}" class="btn design1 case1 type1 color1"><span class="btn-text">List</span></a>
                                    </div>
                                    <div class="board-dipslay">
                                        <div class="board-list design2 case1 type1">
                                            <div class="board-item">
                                                <c:if test="${not empty previousPrPress}">
                                                    <a href="/${LANG}/ir/ir-news/<c:out value="${previousPrPress.uid}"/>?currentPage=${param.currentPage}&searchWord=${param.searchWord}" class="board-info">
                                                        <span class="board-name">PREV</span>
                                                        <span class="board-caption"><c:out value="${previousPrPress.title}"/></span>
                                                    </a>
                                                </c:if>
                                                <c:if test="${not empty nextPrPress}">
                                                    <a href="/${LANG}/ir/ir-news/<c:out value="${nextPrPress.uid}"/>?currentPage=${param.currentPage}&searchWord=${param.searchWord}" class="board-info">
                                                        <span class="board-name">NEXT</span>
                                                        <span class="board-caption"><c:out value="${nextPrPress.title}"/></span>
                                                    </a>
                                                </c:if>
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
    <script>
        function printSection() {
            var content = document.querySelector('.section-body').innerHTML;
            var printWindow = window.open('', '', 'height=500, width=800');
            printWindow.document.write('<html><head><title>Print Section</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(content);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        }

        function copyURL() {
            var url = window.location.href;
            var tempInput = document.createElement('input');
            tempInput.value = url;
            document.body.appendChild(tempInput);
            tempInput.select();
            document.execCommand('copy');
            document.body.removeChild(tempInput);
            alert('URL has been copied.');
        }
    </script>
    <!-- page-foot -->
    <footer id="footer">
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>