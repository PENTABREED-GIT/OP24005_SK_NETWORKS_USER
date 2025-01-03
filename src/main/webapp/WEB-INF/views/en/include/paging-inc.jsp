<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${param.totalCount > 0}">
    <fmt:parseNumber var="currentPage" type="number" value="${param.currentPage}" />
    <fmt:parseNumber var="totalPage" type="number" value="${param.totalPage}" />
<!-- 페이지네이션 -->
<div class="pagination design1 case1">
    <span class="page-util">
        <span class="util-item <c:if test="${currentPage <= 1}">disabled</c:if>">
            <a class="btn icon case1 arrow-left2-bg" href="javascript:${param.listFunction}('${currentPage - 1}')"><span class="btn-text blind">이전</span></a>
        </span>
    </span>
    <span class="page-list">
        <c:forEach
                var="i"
                begin="${param.startOfPageBlock}"
                end="${param.endOfPageBlock}"
                step="1" >
            <a class="page-item <c:if test="${i eq currentPage}">current</c:if> " href="javascript:${param.listFunction}('${i}')">${i}</a>
        </c:forEach>
    </span>
    <span class="page-util">
        <span class="util-item <c:if test="${currentPage >= totalPage}">disabled</c:if>">
            <a class="btn icon case1 arrow-right2-bg" href="javascript:${param.listFunction}('${currentPage + 1}')"><span class="btn-text blind">다음</span></a>
        </span>
    </span>
</div>
</c:if>