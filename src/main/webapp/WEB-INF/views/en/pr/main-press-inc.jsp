<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<c:forEach items="${pressList}" var="item" varStatus="status">
    <input type="hidden" id="totalCount" value="<c:out value="${totalCount}"/>"/>
    <a href="/${LANG}/pr/news-room/${item.uid}?currentPage=${page.currentPage}&searchWord=<c:out value="${search.searchWord}"/>" class="post-item" data-total-page="${page.totalPage}">
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
                        <c:if test="${item.businessAreaNameKo == 'NAMUHx'}">
                            <p class="post-caption">NAMUH<sup>x</sup></p>
                        </c:if>
                        <c:if test="${item.businessAreaNameKo != 'NAMUHx'}">
                            <p class="post-caption"><c:out value="${item.businessAreaNameEn}"/></p>
                        </c:if>

<%--                        <p class="post-caption"><c:out value="${item.businessAreaNameEn}"/></p>--%>
                        <p class="post-subject"><c:out value="${item.title}"/></p>
                        <p class="post-summary"><c:out value="${ntUtil:toBr(ntUtil:removeHtml(item.content))}"/></p>
                    </div>
                    <p class="post-date" title="date"><c:out value="${item.regDate}"/></p>
                </div>
            </div>
        </a>
    </c:forEach>
