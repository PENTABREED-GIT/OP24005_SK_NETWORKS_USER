<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<c:if test="${not empty achievementsList}">
    <div class="article major">
        <div class="article-wrap">
            <div class="article-head">
                <c:choose>
                    <c:when test="${param.pageTitle eq 'global-investment'}">
                        <c:set value="투자 영역" var="title"/>
                        <c:set value="type1" var="type"/>
                    </c:when>
                    <c:otherwise>
                        <c:set value="주요 성과" var="title"/>
                        <c:set value="type2" var="type"/>
                    </c:otherwise>
                </c:choose>
                <h4 class="title">${title}</h4>
            </div>
            <div class="article-body">
                <ul class="board-list design7 case1 ${type}"> <!-- 글로벌 투자 페이지에서만 클래스 네임을 type2 -> type1로 분기 처리 -->
                    <c:forEach items="${achievementsList}" var="list" varStatus="status">
                        <li class="board-item">
                            <div class="board-wrap">
                                <div class="board-figure">
                                    <img src="<c:out value="${list.addedFile}"/>" alt="">
                                </div>
                                <div class="board-info">
                                    <% pageContext.setAttribute("CRLF", "\r\n"); %>
                                    <% pageContext.setAttribute("LF", "\n"); %>
                                    <strong class="board-name">
                                        ${fn:replace(fn:replace(fn:escapeXml(list.title), CRLF, '<br/>'), LF, '<br/>')}
                                    </strong>
                                    <p class="para">
                                        ${fn:replace(fn:replace(fn:escapeXml(list.content), CRLF, '<br/>'), LF, '<br/>')}
                                    </p>
                                    <span class="note"><c:out value="${list.additionalContent}"/></span>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</c:if>