<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>IR자료 &lt; IR정보 &lt; IR &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            Tab();
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
    <div class="main ir stock-info ir-document" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>
                        <li class="data-item"><span class="item-text">IR정보</span></li>
                        <li class="data-item"><span class="item-text">IR 자료</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">IR 자료${lang}</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">IR 자료 페이지</div>
                    <div class="content-body">
                        <div class="section design1 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="tab-display design1 case1 type1">
                                        <div class="swiper tab-wrap">
                                            <ul class="swiper-wrapper tab-list" role="tablist">
                                                <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                                    <button role="tab" class="tab-text" onclick="selectList('RESULT')">경영실적발표</button>
                                                </li>
                                                <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                                    <button role="tab" class="tab-text" onclick="selectList('DATA')">IR 자료</button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="panel-display design1 case1">
                                        <div class="panel-list">
                                            <div id="tab-panel1" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <div class="panel-head">
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">경영실적 발표자료</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="submit-form design1 case1 align1">
                                                                                <div class="form-list">
                                                                                    <div class="form-item">
                                                                                        <div class="form search design1 case1 type1">
                                                                                            <label for="resultSearchWord" class="blind">
                                                                                                검색어 입력
                                                                                            </label>
                                                                                            <input id="resultSearchWord" class="input-elem" type="text" placeholder="검색어를 입력하세요.">
                                                                                            <div class="input-icon">
                                                                                                <button class="btn icon case3 remove">
                                                                                                    <span class="btn-text blind">삭제</span>
                                                                                                </button>
                                                                                                <button class="btn icon case3 search" onclick="searchIrPerformance();">
                                                                                                    <span class="btn-text blind">검색</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="panel-body" id="irDataListResult">

                                                    </div>
                                                </div>
                                            </div>
                                            <div id="tab-panel2" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <div class="panel-head">
                                                        <div class="data-display design2 case4 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">IR 자료</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="submit-form design1 case1 align1">
                                                                                <div class="form-list">
                                                                                    <div class="form-item">
                                                                                        <div class="form search design1 case1 type1">
                                                                                            <label for="dataSearchWord" class="blind">
                                                                                                검색어 입력
                                                                                            </label>
                                                                                            <input id="dataSearchWord" class="input-elem" type="text" placeholder="검색어를 입력하세요.">
                                                                                            <div class="input-icon">
                                                                                                <button class="btn icon case3 remove">
                                                                                                    <span class="btn-text blind">삭제</span>
                                                                                                </button>
                                                                                                <button class="btn icon case3 search" onclick="searchIrData();">
                                                                                                    <span class="btn-text blind">검색</span>
                                                                                                </button>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="panel-body" id="irDataListData">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
<script>
let classification = 'RESULT';
let searchWord = '';
let searchDataWord = '';

document.addEventListener("DOMContentLoaded", () => {
    // IR 자료 게시판 호출
    getIrDataList(1);
});

function selectList(val) {
    classification = val;
    getIrDataList(1);
}

function searchIrPerformance() {
    searchWord = document.querySelector('#resultSearchWord').value.trim();
    getIrDataList(1);
}

function searchIrData() {
    searchDataWord = document.querySelector('#dataSearchWord').value.trim();
    getIrDataList(1);
}
/**
 * 게시물 목록 갱신
 * @param page
 * @returns {Promise<void>}
 */
async function getIrDataList(page) {
    let panelId = '';
    let type = '';
    let searchType = searchWord;
    if (classification === 'RESULT') {
        panelId = 'irDataListResult';
        type = 'searchWord';
        searchType = searchWord;
    } else if (classification === 'DATA') {
        panelId = 'irDataListData';
        type = 'searchDataWord';
        searchType = searchDataWord;
    }
    let content = await fetch('/${LANG}/ir/ir-data-inc?classification=' + classification + '&page=' + page + '&' + type + '=' + searchType, {
        method: 'GET',
        contentType: 'text/html'
    })
        .then((response) => {
            if (response.ok) {
                return response.text();
            } else {
                alert('죄송합니다.\n데이터 처리 도중 오류가 발생했습니다.\n잠시후 다시 시도해주세요.');
            }
        })
        .catch((err) => {
            alert('죄송합니다.\n데이터 처리 도중 오류가 발생했습니다.\n잠시후 다시 시도해주세요.');
            console.log(err);
        });

    document.getElementById(panelId).innerHTML = content;
}

// 검색 입력 필드에서 엔터 키를 감지하여 검색 함수 호출
const searchInput = document.querySelector('#resultSearchWord');
searchInput.addEventListener('keypress', function(event) {
    if (event.key === 'Enter') {
        searchIrPerformance();
    }
});

const searchDataInput = document.querySelector('#dataSearchWord');
searchDataInput.addEventListener('keypress', function(event) {
    if (event.key === 'Enter') {
        searchIrData();
    }
});
</script>
</html>