<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>IR Event &lt; IR Information &lt; IR &lt; SK Networks</title>
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
    <div class="main ir stock-info ir-schedule" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>
                        <li class="data-item"><span class="item-text">IR Information</span></li>
                        <li class="data-item"><span class="item-text">IR Event</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">IR Event</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">IR Event page</div>
                    <div class="content-body bg-color">
                        <div class="section design2 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Upcoming Event</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list design4 case1 type1" id="upcomingSchedule">
                                    </div>
                                    <div class="btn-display" id="btnUpcoming">
                                        <a class="btn design3 case1 type1 color2 ar-icon-plus-bg" href="javascript:getUpcomingSchedule();"><span class="btn-text">View More</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design2 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Past Event</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="board-list design4 case1 type1" id="pastSchedule">
                                    </div>
                                    <div class="btn-display" id="btnPast">
                                        <a class="btn design3 case1 type1 color2 ar-icon-plus-bg" href="javascript:getPastSchedule();"><span class="btn-text">View More</span></a>
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
<script>
    let upcomingPage = 0;
    let upcomingLastPage = 0;
    let pastPage = 0;
    let pastLastPage = 0;

    document.addEventListener("DOMContentLoaded", () => {
        getUpcomingSchedule();
        getPastSchedule();
    })

    async function getUpcomingSchedule() {
        upcomingPage++;
        let content = await fetch('/${LANG}/ir/ir-schedule-list-inc?period=upcoming&page=' + upcomingPage, {
            method: 'GET',
            contentType: 'text/html'
        })
            .then((response) => {
                if (response.ok) {
                    return response.text();
                } else {
                    alert('죄송합니다.\n데이터 처리 도중 오류가 발생했습니다.\n잠시후 다시 시도해주세요.');
                    return '';
                }
            })
            .catch((err) => {
                alert('죄송합니다.\n데이터 처리 도중 오류가 발생했습니다.\n잠시후 다시 시도해주세요.');
                console.log(err);
                return '';
            });

        document.getElementById('upcomingSchedule').innerHTML += content;

        // class가 'no-result-wrap'인 요소가 있는지 확인
        let noResultWrap = document.querySelectorAll('.no-result-wrap')[0];
        if (noResultWrap) {
            noResultWrap.innerHTML = '<em class="no-result-title">There is no upcoming event.</em>';
        }

        upcomingLastPage = document.getElementById('upcomingSchedule').querySelector('div[data-total-page]')?.dataset.totalPage;
        if (upcomingLastPage !== undefined) {
            if (upcomingPage >= upcomingLastPage) document.getElementById('btnUpcoming').style.display = 'none';
        } else {
            document.getElementById('btnUpcoming').style.display = 'none';
        }
    }

    async function getPastSchedule() {
        pastPage++;
        let content = await fetch('/${LANG}/ir/ir-schedule-list-inc?period=past&page=' + pastPage, {
            method: 'GET',
            contentType: 'text/html'
        })
            .then((response) => {
                if (response.ok) {
                    return response.text();
                } else {
                    alert('죄송합니다.\n데이터 처리 도중 오류가 발생했습니다.\n잠시후 다시 시도해주세요.');
                    return '';
                }
            })
            .catch((err) => {
                alert('죄송합니다.\n데이터 처리 도중 오류가 발생했습니다.\n잠시후 다시 시도해주세요.');
                console.log(err);
                return '';
            });

        document.getElementById('pastSchedule').innerHTML += content;

        // class가 'no-result-wrap'인 요소가 있는지 확인
        let noResultWrap = document.querySelectorAll('.no-result-wrap')[1];
        if (noResultWrap) {
            noResultWrap.innerHTML = '<em class="no-result-title">There is no previous event.</em>';
        }

        pastLastPage = document.getElementById('pastSchedule').querySelector('div[data-total-page]')?.dataset.totalPage;
        if (pastLastPage !== undefined) {
            if (pastPage >= pastLastPage) document.getElementById('btnPast').style.display = 'none';
        } else {
            document.getElementById('btnPast').style.display = 'none';
        }
    }
</script>
</html>