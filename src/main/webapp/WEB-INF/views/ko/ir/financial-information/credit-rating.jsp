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
    <title>신용등급 &lt; 재무정보 &lt; IR &lt; SK Networks</title>
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
        <div class="main ir stock-info credit-rating" id="main">
            <div class="main-inner">
                <div class="local design1">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case1 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">IR</span></li>
                            <li class="data-item"><span class="item-text">재무정보 </span></li>
                            <li class="data-item"><span class="item-text">신용등급</span></li>
                        </ul>
                    </div>
                    <div class="local-head design3">
                        <div class="local-subject">
                            <h2 class="local-name">신용등급</h2>
                        </div>
                    </div>
                    <div class="local-body">
                        <div class="content-head">신용등급 페이지</div>
                        <div class="content-body">
                            <div class="section credit-year">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name accent color4">년도를 선택해주세요.</h4>
                                        <div class="section-summary">
                                            <div class="submit-form design1 case1 align3">
                                                <div class="form-list">
                                                    <div class="form-item">
                                                        <div class="form select design1 case1 type1">
                                                            <label for="yearbox" class="blind">년도 선택</label>
                                                            <select id="yearbox" name="selectYear" onchange="changeYearSelect()">
                                                                <option value="2023">2023</option>
                                                                <option value="2022">2022</option>
                                                                <option value="2021">2021</option>
                                                                <option value="2020">2020</option>
                                                                <option value="2019">2019</option>
                                                            </select>
                                                            <div class="arrow"><span class="blind">닫힘</span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="section-body">
                                </div>
                            </div>
                            <!-- 2023 -->
                            <div class="section credit-area design2 type1 dataCont" id="2023Data">
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">회사채</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="board-list design6 case1 type1 scroll">
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">NICE 신용평가</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2023.04.03</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국신용평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2023.03.31</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국기업평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2023.04.04</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 신용평가등급의 범위 : AAA ~ D</p>
                                    </div>
                                </div>
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">기업어음</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="board-list design6 case1 type1 scroll">
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">NICE 신용평가</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2023.04.03</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="section-util"></div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국신용평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2023.03.31</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국기업평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2023.04.04</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 신용평가등급의 범위 : A1 ~ D</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 2022 -->
                            <div class="section credit-area design2 type1 dataCont" id="2022Data">
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">회사채</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="board-list design6 case1 type1 scroll">
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">NICE 신용평가</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2022.04.01</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국신용평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2022.04.01</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국기업평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2022.04.04</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 신용평가등급의 범위 : AAA ~ D</p>
                                    </div>
                                </div>
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">기업어음</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="board-list design6 case1 type1 scroll">
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">NICE 신용평가</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2022.04.01</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="section-util"></div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국신용평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2022.04.01</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국기업평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2022.04.04</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 신용평가등급의 범위 : A1 ~ D</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 2021 -->
                            <div class="section credit-area design2 type1 dataCont" id="2021Data">
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">회사채</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="board-list design6 case1 type1 scroll">
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">NICE 신용평가</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2021.04.06</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국신용평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2021.04.05</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국기업평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2021.04.02</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 신용평가등급의 범위 : AAA ~ D</p>
                                    </div>
                                </div>
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">기업어음</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="board-list design6 case1 type1 scroll">
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">NICE 신용평가</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2021.04.06</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국신용평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2021.04.05</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국기업평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2021.04.02</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 신용평가등급의 범위 : A1 ~ D</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 2020 -->
                            <div class="section credit-area design2 type1 dataCont" id="2020Data">
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">회사채</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="board-list design6 case1 type1 scroll">
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">NICE 신용평가</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2020.04.17</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국신용평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2020.04.17</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국기업평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2020.04.17</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 신용평가등급의 범위 : AAA ~ D</p>
                                    </div>
                                </div>
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">기업어음</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="board-list design6 case1 type1 scroll">
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">NICE 신용평가</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2020.04.17</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국신용평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2020.04.17</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국기업평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2020.04.17</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 신용평가등급의 범위 : A1 ~ D</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 2019 -->
                            <div class="section credit-area design2 type1 dataCont" id="2019Data">
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">회사채</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="board-list design6 case1 type1 scroll">
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">NICE 신용평가</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2019.04.05</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국신용평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2019.04.04</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">AA-</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국기업평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2019.04.04</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 신용평가등급의 범위 : AAA ~ D</p>
                                    </div>
                                </div>
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">기업어음</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="board-list design6 case1 type1 scroll">
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">NICE 신용평가</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2019.04.05</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국신용평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2019.04.04</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-item">
                                                <div class="board-wrap">
                                                    <div class="board-head">
                                                        <p class="board-rank">A1</p>
                                                    </div>
                                                    <div class="board-info">
                                                        <div class="data-head">
                                                            <p class="data-subject">한국기업평가㈜</p>
                                                        </div>
                                                        <div class="data-body">
                                                            <span class="head">평가일</span>
                                                            <span class="body">2019.04.04</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 신용평가등급의 범위 : A1 ~ D</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function changeYearSelect() {
                var selectedValue = $("#yearbox").val();

                $(".dataCont").hide();
                if (selectedValue) {
                    $("#" + selectedValue + "Data").show();
                }
            }

            function resetyearbox() {
                $(".dataCont").hide();
            }

            $(document).ready(function() {
                changeYearSelect();
            });
        </script>
        <!-- page-foot -->
        <footer id="footer">
            <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
        </footer>
        <!-- //page-foot -->
        </div>
    </body>
</html>