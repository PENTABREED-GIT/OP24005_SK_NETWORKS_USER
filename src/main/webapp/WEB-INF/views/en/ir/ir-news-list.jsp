<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %><!DOCTYPE html>
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
    <div class="main ir stock-info ir-news" id="main">
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
                        <div class="section design3 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <h4 class="section-name">IR News</h4>
                                    <div class="section-util">
                                        <div class="submit-form design1 case1 align1">
                                            <div class="form-list">
                                                <div class="form-item">
                                                    <div class="form select design1 case1 type1">
                                                        <label for="searchKind" class="blind">Label</label>
                                                        <select name="searchKind" id="searchKind">
                                                            <option value="TITLE" <c:if test="${param.searchKind eq 'TITLE'}">selected</c:if>>Title</option>
                                                            <option value="CONTENT" <c:if test="${param.searchKind eq 'CONTENT'}">selected</c:if>>Content</option>
                                                        </select>
                                                        <div class="arrow"><span class="blind">close</span></div>
                                                    </div>
                                                </div>
                                                <div class="form-item">
                                                    <div class="form search design1 case1 type1">
                                                        <label for="searchWord" class="blind">
                                                            search
                                                        </label>
                                                        <input id="searchWord" name="searchWord" class="input-elem" type="text" placeholder="Please enter keyword(s)." value="<c:out value="${param.searchWord}"/>">
                                                        <div class="input-icon">
                                                            <button class="btn icon case3 remove">
                                                                <span class="btn-text blind">delete</span>
                                                            </button>
                                                            <button class="btn icon case3 search" onclick="searchIrNews();">
                                                                <span class="btn-text blind">search</span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <c:choose>
                                        <c:when test="${not empty irNewsList}">
                                            <div class="post-list design1 case1 type1">
                                                <c:forEach items="${irNewsList}" var="item" varStatus="status">
                                                    <a href="ir-news/${item.uid}" class="post-item">
                                                        <div class="post-wrap">
                                                            <div class="post-figure">
                                                                <c:choose>
                                                                    <c:when test="${not empty item.addedFile}">
                                                                        <img src="<c:out value="${item.addedFile}"/>" alt="<c:out value="${item.description}"/>">
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="디폴트 썸네일 이미지">
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </div>
                                                            <div class="post-head">
                                                                <p class="post-caption"><c:out value="${item.businessAreaNameKo}"/></p>
                                                                <p class="post-subject"><c:out value="${item.title}"/></p>
                                                            </div>
                                                            <p class="post-date" title="등록일">${item.regDate}</p>
                                                        </div>
                                                    </a>
                                                </c:forEach>
                                            </div>
                                            <div class="section-util">
                                                <jsp:include page="/WEB-INF/views/${LANG}/include/paging-inc.jsp" flush="true">
                                                    <jsp:param name="currentPage" value="${ page.currentPage}"/>
                                                    <jsp:param name="startOfPageBlock" value="${ page.startOfPageBlock}"/>
                                                    <jsp:param name="endOfPageBlock" value="${ page.endOfPageBlock}"/>
                                                    <jsp:param name="totalPage" value="${ page.totalPage}"/>
                                                    <jsp:param name="totalCount" value="${ page.totalCount}"/>
                                                    <jsp:param name="listFunction" value="getIrNewsList"/>
                                                </jsp:include>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <!-- 검색결과 없음 -->
                                            <div class="no-result-wrap">
                                                <em class="no-result-title">No results found.</em>
                                            </div>
                                            <!-- //검색결과 없음 -->
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form name="irNewListForm" method="get" action="ir-news">
        <input type="hidden" name="page">
        <input type="hidden" name="searchKind" value="<c:out value="${param.searchKind}"/>">
        <input type="hidden" name="searchWord" value="<c:out value="${param.searchWord}"/>">
    </form>
    <!-- page-foot -->
    <footer id="footer">
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>
<script>
    function getIrNewsList(page) {
        document.irNewListForm.page.value = page;
        document.irNewListForm.submit();
    }

    function searchIrNews() {
        document.irNewListForm.searchKind.value = document.querySelector('select[name=searchKind]').value;
        document.irNewListForm.searchWord.value = document.querySelector('input[name=searchWord]').value;
        getIrNewsList(1);
    }

    // 검색 입력 필드에서 엔터 키를 감지하여 검색 함수 호출
    const searchInput = document.querySelector('#searchWord');
    searchInput.addEventListener('keypress', function(event) {
        if (event.key === 'Enter') {
            searchIrNews();
        }
    });
</script>
</html>