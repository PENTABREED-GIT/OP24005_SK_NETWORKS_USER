<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.skn.user.util.*" %>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>

<c:forEach items="${pressList}" var="item" varStatus="status">
    <input type="hidden" id="totalCount" value="<c:out value='${totalCount}'/>"/>

    <c:url var="prLink" value="/${LANG}/pr/news-room/${item.uid}">
        <c:param name="currentPage" value="${page.currentPage}" />
        <c:param name="searchWord" value="${search.searchWord}" />
    </c:url>

    <a href="${prLink}" class="post-item" data-total-page="${page.totalPage}">
        <div class="post-wrap">
            <div class="post-figure">
                <c:choose>
                    <c:when test="${not empty item.addedFile}">
                        <img src="<c:out value='${item.addedFile}'/>" alt="<c:out value='${item.description}'/>">
                    </c:when>
                    <c:otherwise>
                        <img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="ir news thumbnail image">
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="post-inform">
                <div class="post-head">
<%--                            <p class="post-caption"><c:out value="${item.businessAreaNameEn}" escapeXml="false"/></p>--%>
                    <p class="post-caption">
                      <c:choose>
                        <c:when test="${item.businessAreaNameEn == 'NAMUHx'}">
                          NAMUH<sup>x</sup>
                        </c:when>
                        <c:otherwise>
                          <c:out value="${item.businessAreaNameEn}" />
                        </c:otherwise>
                      </c:choose>
                    </p>
                    <p class="post-subject"><c:out value="${item.title}"/></p>
                    <p class="post-summary"><c:out value="${ntUtil:toBr(ntUtil:removeHtml(item.content))}"/></p>
                </div>
                <p class="post-date" title="date"><c:out value="${item.regDate}"/></p>
            </div>
        </div>
    </a>
</c:forEach>
