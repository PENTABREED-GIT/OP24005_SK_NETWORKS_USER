<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.skn.user.util.*" %>
<div class="t-display design1 case1 type1 align3 mo-layout1">
    <table>
        <caption>이 표는 경영실적 발표자료 정보를 제공하며 번호, 제목, 언어, 다운로드로 구성되어 있습니다.</caption>
        <colgroup>
            <col style="width: 8%;">
            <col style="width: 53%;">
            <col>
            <col>
        </colgroup>
        <thead>
        <tr>
            <th scope="col">번호</th>
            <th scope="col">제목</th>
            <th scope="col">언어</th>
            <th scope="col">다운로드</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${irDataList}" var="item" varStatus="status">
            <tr>
                <td>${page.listStartNo - status.index}</td>
                <td><c:out value="${item.title}"/></td>
                <td><c:out value="${item.dataLang}"/></td>
                <td class="fs-0">
                    <c:if test="${not empty item.fileUid}">
                        <button class="btn design3 case4 type3 color5 ar-icon-download" style="cursor: pointer;" onclick="fileDownLoad(this)" data-fileuid="${item.fileUid}"><span class="btn-text">다운로드</span></button>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<jsp:include page="/WEB-INF/views/${LANG}/include/paging-inc.jsp" flush="true" >
    <jsp:param name="currentPage" value="${ page.currentPage}"/>
    <jsp:param name="startOfPageBlock" value="${ page.startOfPageBlock}"/>
    <jsp:param name="endOfPageBlock" value="${ page.endOfPageBlock}"/>
    <jsp:param name="totalPage" value="${ page.totalPage}"/>
    <jsp:param name="totalCount" value="${ page.totalCount}"/>
    <jsp:param name="listFunction" value="getIrDataList"/>
</jsp:include>
