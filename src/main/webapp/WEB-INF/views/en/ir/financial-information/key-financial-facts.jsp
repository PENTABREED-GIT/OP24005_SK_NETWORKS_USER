<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Financial Status &lt; Finance &lt; IR &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
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

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main ir stock-info financial-status" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>
                        <li class="data-item"><span class="item-text">Finance</span></li>
                        <li class="data-item"><span class="item-text">Financial Status</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">Financial Status</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Financial Status page</div>
                    <div class="content-body ir">
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-title">
                                        <h4 class="section-name">Statements of Financial Position</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="section-table">
                                        <div class="subsection-body">
                                            <div class="data-display onePair-table">
                                                <div class="data-list">
                                                    <div class="data-item" style="min-width: 600px;">
                                                        <div class="data-wrap">
                                                            <div class="data-head">
                                                                <div class="data-tr">
                                                                    <span class="data-th">Category</span>
                                                                    <span class="data-th">2023</span>
                                                                    <span class="data-th">2022</span>
                                                                    <span class="data-th">2021</span>
                                                                </div>
                                                            </div>
                                                            <div class="data-body">
                                                                <div class="accordion-display design1 case1">
                                                                    <div class="accordion-list">
                                                                        <div class="accordion-item">
                                                                            <div class="accordion-head">
                                                                                <div class="data-tr">
                                                                                    <span class="data-th al">
                                                                                        <button type="button" class="btn design3 case4 type1 color8 ar-icon-arrow-down1-line" aria-controls="total-assets"><span class="btn-text">Total Assets</span></button>
                                                                                    </span>
                                                                                    <span class="data-th">91,104 <span class="blind">2023 Total Assets</span></span>
                                                                                    <span class="data-th">94,993 <span class="blind">2022 Total Assets</span></span>
                                                                                    <span class="data-th">94,109 <span class="blind">2021 Total Assets</span></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="accordion-body" id="total-assets">
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">Current Assets</span>
                                                                                    <span class="data-td">23,715 <span class="blind">2023 Current Assets</span></span>
                                                                                    <span class="data-td">27,032 <span class="blind">2022 Current Assets</span></span>
                                                                                    <span class="data-td">30,472 <span class="blind">2021 Current Assets</span></span>
                                                                                </div>
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">Non-Current Assets</span>
                                                                                    <span class="data-td">67,389 <span class="blind">2023 Non-Current Assets</span></span>
                                                                                    <span class="data-td">67,960 <span class="blind">2022 Non-Current Assets</span></span>
                                                                                    <span class="data-td">63,638 <span class="blind">2021 Non-Current Assets</span></span>
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
                                                                                        <button type="button" class="btn design3 case4 type1 color8 ar-icon-arrow-down1-line" aria-controls="total-liabilities"><span class="btn-text">Total Shareholders’ Equity</span></button>
                                                                                    </span>
                                                                                    <span class="data-th">69,545 <span class="blind">2023 Total Shareholders’ Equity</span></span>
                                                                                    <span class="data-th">70,485 <span class="blind">2022 Total Shareholders’ Equity</span></span>
                                                                                    <span class="data-th">70,219 <span class="blind">2021 Total Shareholders’ Equity</span></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="accordion-body" id="total-liabilities">
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">Current Liabilities</span>
                                                                                    <span class="data-td">39,084 <span class="blind">2023 Current Liabilities</span></span>
                                                                                    <span class="data-td">35,678 <span class="blind">2022 Current Liabilities</span></span>
                                                                                    <span class="data-td">38,976 <span class="blind">2021 Current Liabilities</span></span>
                                                                                </div>
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">Non-Current Liabilities</span>
                                                                                    <span class="data-td">30,461 <span class="blind">2023 Non-Current Liabilities</span></span>
                                                                                    <span class="data-td">34,807 <span class="blind">2022 Non-Current Liabilities</span></span>
                                                                                    <span class="data-td">31,244 <span class="blind">2021 Non-Current Liabilities</span></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="data-tr">
                                                                    <span class="data-th">Total Shareholders’ Equity</span>
                                                                    <span class="data-th">21,558 <span class="blind">2023 Total Shareholders’ Equity</span></span>
                                                                    <span class="data-th">24,507 <span class="blind">2022 Total Shareholders’ Equity</span></span>
                                                                    <span class="data-th">23,890 <span class="blind">2021 Total Shareholders’ Equity</span></span>
                                                                </div>
                                                                <div class="data-tr">
                                                                    <span class="data-th">Cash/Short-term Financial Instruments</span>
                                                                    <span class="data-th">6,889 <span class="blind">2023 Cash/Short-term Financial Instruments</span></span>
                                                                    <span class="data-th">8,450 <span class="blind">2022 Cash/Short-term Financial Instruments</span></span>
                                                                    <span class="data-th">8,450 <span class="blind">2021 Cash/Short-term Financial Instruments</span></span>
                                                                </div>
                                                                <div class="accordion-display design1 case1">
                                                                    <div class="accordion-list">
                                                                        <div class="accordion-item">
                                                                            <div class="accordion-head">
                                                                                <div class="data-tr">
                                                                                    <span class="data-th al">
                                                                                        <button type="button" class="btn design3 case4 type1 color8 ar-icon-arrow-down1-line" aria-controls="debt"><span class="btn-text">Borrowings</span></button>
                                                                                    </span>
                                                                                    <span class="data-th">51,625 <span class="blind">2023 Borrowings</span></span>
                                                                                    <span class="data-th">50,395 <span class="blind">2022 Borrowings</span></span>
                                                                                    <span class="data-th">50,562 <span class="blind">2021 Borrowings</span></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="accordion-body" id="debt">
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">Short-term Borrowings</span>
                                                                                    <span class="data-td">10,411 <span class="blind">2023 Short-term Borrowings</span></span>
                                                                                    <span class="data-td">9,631 <span class="blind">2022 Short-term Borrowings</span></span>
                                                                                    <span class="data-td">- <span class="blind">2021 Short-term Borrowings</span></span>
                                                                                </div>
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">Long-term Borrowings</span>
                                                                                    <span class="data-td">34,287 <span class="blind">2023 Long-term Borrowings</span></span>
                                                                                    <span class="data-td">30,475 <span class="blind">2022 Long-term Borrowings</span></span>
                                                                                    <span class="data-td">- <span class="blind">2021 Long-term Borrowings</span></span>
                                                                                </div>
                                                                                <div class="data-tr">
                                                                                    <span class="data-td">Lease Liabilities</span>
                                                                                    <span class="data-td">6,927 <span class="blind">2023 Lease Liabilities</span></span>
                                                                                    <span class="data-td">10,289 <span class="blind">2022 Lease Liabilities</span></span>
                                                                                    <span class="data-td">- <span class="blind">2021 Lease Liabilities</span></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="comment design1"> * K-IFRS consolidated balance sheets since 2010 </p>
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
                                        <h4 class="section-name">Income Statements</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="section-table">
                                        <div class="t-display design1 case1 type1 align3 scroll">
                                            <table style="min-width: 525px;" class="col-w-1">
                                                <caption>Income Statements</caption>
                                                <colgroup>
                                                    <col class="col1">
                                                    <col class="col2">
                                                    <col class="col2">
                                                    <col class="col2">
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Category</th>
                                                        <th scope="col">2023</th>
                                                        <th scope="col">2022</th>
                                                        <th scope="col">2021</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Sales</td>
                                                        <td>91,339</td>
                                                        <td>96,664</td>
                                                        <td>110,181</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Gross profit</td>
                                                        <td>12,322</td>
                                                        <td>11,977</td>
                                                        <td>11,362</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Operating profit</td>
                                                        <td>2,373</td>
                                                        <td>1,542</td>
                                                        <td>1,220</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Earnings before Taxes</td>
                                                        <td>707</td>
                                                        <td>815</td>
                                                        <td>1,071</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Net income</td>
                                                        <td>55</td>
                                                        <td>907</td>
                                                        <td>1,035</td>
                                                    </tr>
                                                    <tr>
                                                        <td>EBITDA</td>
                                                        <td>10,475</td>
                                                        <td>10,070</td>
                                                        <td>9,731</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <p class="comment design1">* K-IFRS consolidated income statements</p>
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
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>