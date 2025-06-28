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
    <title>주요재무현황 &lt; 재무정보 &lt; IR &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            Accordion();
        });
    </script>
</head>

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main ir stock-info financial-status" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>
                        <li class="data-item"><span class="item-text">재무정보</span></li>
                        <li class="data-item"><span class="item-text">주요재무현황</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">주요재무현황</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">주요재무현황 페이지</div>
                    <div class="content-body ir">
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-title">
                                        <h4 class="section-name">재무상태표</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="section-table">
                                        <div class="subsection-body">
                                            <div class="data-display onePair-table">
                                                <div class="data-list">
                                                    <div class="data-item" style="min-width: 572px;">
                                                        <div class="data-wrap">
                                                            <div class="data-head">
                                                                <p class="blind">이 표는 재무상태표 정보를 제공하며 구분(자산총계(유동자산,비유동자산), 부채총계(유동부채,비유동부채), 자본총계, 현금 단기금융상품, 차입금(단기차입금,장기차입금,리스부채)), 2024년, 2023년, 2022년 으로 구성되어 있습니다.</p>
                                                                <div class="data-tr">
                                                                    <span class="data-th">구분</span>
                                                                    <span class="data-th">2024</span>
                                                                    <span class="data-th">2023</span>
                                                                    <span class="data-th">2022</span>
                                                                </div>
                                                            </div>
                                                            <div class="data-body">
                                                                <div class="accordion-display design1 case1">
                                                                    <div class="accordion-list">
                                                                        <div class="accordion-item">
                                                                            <div class="accordion-head">
                                                                                <div class="data-tr">
                                                                                    <span class="data-th al">
                                                                                        <button type="button" class="btn design3 case4 type1 color8 ar-icon-arrow-down1-line" title="열기" aria-controls="total-assets"><span class="btn-text">자산총계</span></button>
                                                                                    </span>
                                                                                    <span class="data-th"><span class="blind">2024년 자산총계</span> 51,571</span>
                                                                                    <span class="data-th"><span class="blind">2023년 자산총계</span> 91,104</span>
                                                                                    <span class="data-th"><span class="blind">2022년 자산총계</span> 94,993</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="accordion-body" id="total-assets">
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">유동자산</span>
                                                                                    <span class="data-td"><span class="blind">2024년 유동자산</span> 20,067</span>
                                                                                    <span class="data-td"><span class="blind">2023년 유동자산</span> 23,715</span>
                                                                                    <span class="data-td"><span class="blind">2022년 유동자산</span> 27,032</span>
                                                                                </div>
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">비유동자산</span>
                                                                                    <span class="data-td"><span class="blind">2024년 비유동자산</span> 31,505</span>
                                                                                    <span class="data-td"><span class="blind">2023년 비유동자산</span> 67,389</span>
                                                                                    <span class="data-td"><span class="blind">2022년 비유동자산</span> 67,960</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="accordion-display design1 case1">
                                                                    <div class="accordion-list">
                                                                        <div class="accordion-item">
                                                                            <div class="accordion-head">
                                                                                <div class="data-tr">
                                                                                    <span class="data-th al">
                                                                                        <button type="button" class="btn design3 case4 type1 color8 ar-icon-arrow-down1-line" title="열기" aria-controls="total-liabilities"><span class="btn-text">부채총계</span></button>
                                                                                    </span>
                                                                                    <span class="data-th"><span class="blind">2024년 부채총계</span> 31,038</span>
                                                                                    <span class="data-th"><span class="blind">2023년 부채총계</span> 69,545</span>
                                                                                    <span class="data-th"><span class="blind">2022년 부채총계</span> 70,485</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="accordion-body" id="total-liabilities">
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">유동부채</span>
                                                                                    <span class="data-td"><span class="blind">2024년 유동부채</span> 19,645</span>
                                                                                    <span class="data-td"><span class="blind">2023년 유동부채</span> 39,084</span>
                                                                                    <span class="data-td"><span class="blind">2022년 유동부채</span> 35,678</span>
                                                                                </div>
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">비유동부채</span>
                                                                                    <span class="data-td"><span class="blind">2024년 비유동부채</span> 11,393</span>
                                                                                    <span class="data-td"><span class="blind">2023년 비유동부채</span> 30,461</span>
                                                                                    <span class="data-td"><span class="blind">2022년 비유동부채</span> 34,807</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="data-tr">
                                                                    <span class="data-th">자본총계</span>
                                                                    <span class="data-th"><span class="blind">2024년 자본총계</span> 20,533</span>
                                                                    <span class="data-th"><span class="blind">2023년 자본총계</span> 21,558</span>
                                                                    <span class="data-th"><span class="blind">2022년 자본총계</span> 24,507</span>
                                                                </div>
                                                                <div class="data-tr">
                                                                    <span class="data-th">현금ㆍ단기금융상품</span>
                                                                    <span class="data-th"><span class="blind">2024년 현금ㆍ단기금융상품</span> 6,887</span>
                                                                    <span class="data-th"><span class="blind">2023년 현금ㆍ단기금융상품</span> 6,889</span>
                                                                    <span class="data-th"><span class="blind">2022년 현금ㆍ단기금융상품</span> 8,450</span>
                                                                </div>
                                                                <div class="accordion-display design1 case1">
                                                                    <div class="accordion-list">
                                                                        <div class="accordion-item">
                                                                            <div class="accordion-head">
                                                                                <div class="data-tr">
                                                                                    <span class="data-th al">
                                                                                        <button type="button" class="btn design3 case4 type1 color8 ar-icon-arrow-down1-line" title="열기" aria-controls="debt"><span class="btn-text">차입금</span></button>
                                                                                    </span>
                                                                                    <span class="data-th"><span class="blind">2024년 차입금</span> 20,473</span>
                                                                                    <span class="data-th"><span class="blind">2023년 차입금</span> 51,625</span>
                                                                                    <span class="data-th"><span class="blind">2022년 차입금</span> 50,395</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="accordion-body" id="debt">
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">단기차입금</span>
                                                                                    <span class="data-td"><span class="blind">2024년 단기차입금</span> 4,737</span>
                                                                                    <span class="data-td"><span class="blind">2023년 단기차입금</span> 10,411</span>
                                                                                    <span class="data-td"><span class="blind">2022년 단기차입금</span> 9,631</span>
                                                                                </div>
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">장기차입금</span>
                                                                                    <span class="data-td"><span class="blind">2024년 장기차입금</span> 14,062</span>
                                                                                    <span class="data-td"><span class="blind">2023년 장기차입금</span> 34,287</span>
                                                                                    <span class="data-td"><span class="blind">2022년 장기차입금</span> 30,475</span>
                                                                                </div>
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">리스부채</span>
                                                                                    <span class="data-td"><span class="blind">2024년 리스부채</span> 1,674</span>
                                                                                    <span class="data-td"><span class="blind">2023년 리스부채</span> 6,927</span>
                                                                                    <span class="data-td"><span class="blind">2022년 리스부채</span> 10,289</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="comment design1">* K-IFRS연결대차대조표 기준</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-title">
                                        <h4 class="section-name">손익계산서</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="section-table">
                                        <div class="t-display design1 case1 type1 align3 scroll">
                                            <table style="min-width: 625px;" class="col-w-1">
                                                <caption>이 표는 손익계산서 정보를 제공하며 구분(매출액, 매출 총이익, 영업이익, 법인세 비용 차감전 순이익, 당기 순이익, EBITDA), 2024년, 2023년, 2022년, 2021년으로 구성되어 있습니다.</caption>
                                                <colgroup>
                                                    <col class="col1">
                                                    <col class="col2">
                                                    <col class="col2">
                                                    <col class="col2">
                                                    <col class="col2">
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th scope="col">구분</th>
                                                        <th scope="col">2024</th>
                                                        <th scope="col">2023</th>
                                                        <th scope="col">2022</th>
                                                        <th scope="col">2021</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>매출액</td>
                                                        <td>76,573</td>
                                                        <td>91,339</td>
                                                        <td>96,664</td>
                                                        <td>110,181</td>
                                                    </tr>
                                                    <tr>
                                                        <td>매출 총이익</td>
                                                        <td>8,599</td>
                                                        <td>12,322</td>
                                                        <td>11,977</td>
                                                        <td>11,362</td>
                                                    </tr>
                                                    <tr>
                                                        <td>영업이익</td>
                                                        <td>1,139</td>
                                                        <td>2,373</td>
                                                        <td>1,542</td>
                                                        <td>1,220</td>
                                                    </tr>
                                                    <tr>
                                                        <td>법인세 비용 차감전 순이익</td>
                                                        <td>292</td>
                                                        <td>707</td>
                                                        <td>815</td>
                                                        <td>1,071</td>
                                                    </tr>
                                                    <tr>
                                                        <td>당기 순이익</td>
                                                        <td>463</td>
                                                        <td>55</td>
                                                        <td>907</td>
                                                        <td>1,035</td>
                                                    </tr>
                                                    <tr>
                                                        <td>EBITDA</td>
                                                        <td>2,966</td>
                                                        <td>10,475</td>
                                                        <td>10,070</td>
                                                        <td>9,731</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <p class="comment design1">* K-IFRS연결대차대조표 기준</p>
                                    </div>
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
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>