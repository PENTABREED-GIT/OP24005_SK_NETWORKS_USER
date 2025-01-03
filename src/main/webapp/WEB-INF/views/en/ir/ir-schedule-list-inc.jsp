<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.skn.user.util.*" %>
<c:choose>
    <c:when test="${not empty irScheduleList}">
        <c:forEach items="${irScheduleList}" var="item" varStatus="status">
            <div class="board-item" data-total-page="${page.totalPage}">
                <div class="board-wrap">
                    <div class="board-info">
                        <p class="board-caption">${item.irScheduleType}</p>
                        <p class="board-name">${item.title}</p>
                    </div>
                    <div class="board-util">
                        <div class="mark-display case3">
                            <div class="mark-list">
                                <div class="mark design2 case1 al-icon-location">
                                    <div class="mark-text-area case1">
                                        <span class="mark-text">${item.classificationName}</span>
                                    </div>
                                </div>
                                <div class="mark design2 case1 al-icon-calendar">
                                    <div class="mark-text-area case1">
                                        <span class="mark-text">${item.openDate}</span>
                                        <span class="mark-text accent case2 color3">${item.openTime}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <div class="section-body">
            <!-- 검색결과 없음 -->
            <div class="no-result-wrap">
                <em class="no-result-title"></em>
            </div>
            <!-- //검색결과 없음 -->
        </div>
    </c:otherwise>
</c:choose>