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
    <title>Notice &lt; Disclosure Information &lt; IR &lt; SK Networks</title>
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
    <div class="main ir stock-info elect-not" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>
                        <li class="data-item"><span class="item-text">Disclosure Information</span></li>
                        <li class="data-item"><span class="item-text">Notice</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">Notice</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Notice</div>
                    <div class="content-body">
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Notice</h4>
                                        <form name="announcementForm" method="get" action="announcement">
                                            <input type="hidden" name="page">
                                            <div class="submit-form design1 case1 align1">
                                                <div class="form-list">
                                                    <div class="form-item">
                                                        <div class="form select design1 case1 type1">
                                                            <label for="searchType" class="blind">Select</label>
                                                            <select name="searchType" id="searchType">
                                                                <option value="title">Title</option>
                                                                <option value="content">Content</option>
                                                            </select>
                                                            <div class="arrow"><span class="blind">Close</span></div>
                                                        </div>
                                                    </div>
                                                    <div class="form-item">
                                                        <div class="form search design1 case1 type1">
                                                            <label for="searchWord" class="blind">
                                                                Search
                                                            </label>
                                                            <input id="searchWord" name="searchWord" class="input-elem" type="text" placeholder="Please enter keywords">
                                                            <div class="input-icon">
                                                                <button class="btn icon case3 remove">
                                                                    <span class="btn-text blind">delete</span>
                                                                </button>
                                                                <button class="btn icon case3 search" onclick="searchAnnouncement()">
                                                                    <span class="btn-text blind">Search</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <c:choose>
                                        <c:when test="${not empty announcementList}">
                                            <div class="t-display design1 case1 type1 align3 mo-layout1">
                                                <table class="col-w-1">
                                                    <caption>This table provides electronic announcement information and consists of numbers, titles, and announcement dates.</caption>
                                                    <colgroup>
                                                        <col class="col1">
                                                        <col class="col2">
                                                        <col class="col3">
                                                    </colgroup>
                                                    <thead>
                                                    <tr>
                                                        <th scope="col">No.</th>
                                                        <th scope="col">Title</th>
                                                        <th scope="col">Date</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${announcementList}" var="item" varStatus="status">
                                                        <tr>
                                                            <td>${page.listStartNo - status.index}</td>
                                                            <td><a href="/${LANG}/ir/announcement/<c:out value="${item.uid}"/>" class="link"><c:out value="${item.title}"/></a></td>
                                                            <td><c:out value="${item.openDate}"/></td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <!-- 검색결과 없음 -->
                                            <div class="no-result-wrap">
                                                <em class="no-result-title">No event found.</em>
                                            </div>
                                            <!-- //검색결과 없음 -->
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="section-util">
                                    <jsp:include page="/WEB-INF/views/${LANG}/include/paging-inc.jsp" flush="true" >
                                        <jsp:param name="currentPage" value="${ page.currentPage}"/>
                                        <jsp:param name="startOfPageBlock" value="${ page.startOfPageBlock}"/>
                                        <jsp:param name="endOfPageBlock" value="${ page.endOfPageBlock}"/>
                                        <jsp:param name="totalPage" value="${ page.totalPage}"/>
                                        <jsp:param name="totalCount" value="${ page.totalCount}"/>
                                        <jsp:param name="listFunction" value="getAnnouncementList"/>
                                    </jsp:include>
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
<script>

    function getAnnouncementList(page) {
        document.announcementForm.page.value = page;
        document.announcementForm.submit();
    }

    function searchAnnouncement() {
        let searchWord = document.querySelector('#searchWord').value.trim();
        let searchType = document.querySelector('#searchType').value;
        location.href = '/${LANG}/ir/announcement?currentPage=1&searchType=' + searchType + '&searchWord=' + searchWord;
    }

    // 검색 입력 필드에서 엔터 키를 감지하여 검색 함수 호출
    const searchInput = document.querySelector('#searchWord');
    searchInput.addEventListener('keypress', function(event) {
        if (event.key === 'Enter') {
            searchAnnouncement();
        }
    });
</script>