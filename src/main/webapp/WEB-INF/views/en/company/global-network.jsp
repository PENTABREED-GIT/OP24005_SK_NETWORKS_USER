<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 5:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Global Networks &lt; Company &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            Tab();
            btnChange();
            attributeChange();
            accordion();

            // URL 문자열 추출 (아코디언 URL 생성)
            // 1. 현재 페이지 URL의 문자열 부분을 반환 후 ?를 제외한 나머지 쿼리 문자열을 추출(?tab=scrollTab1)
            const qr = window.location.search.substring(1, window.location.search.length)

            // 2. = 기준으로 쿼리 문자열을 나눔. [1]: 두 번째 값 가져옴 (scrollTab1)
            const tabId = (qr.split('='))[1]

            // 3. ID로 가진 HTML 요소를 DOM에서 가져옴.
            const scrollTab = document.getElementById(tabId);

            // 4. 자동으로 스크롤
            scrollTab.scrollIntoView()

            // 5. 해당 버튼을 클릭 (아코디언이 열린 상태)
            // scrollTab.querySelector('button').click()
            scrollTab.click();

            window.addEventListener("resize", () => {
                btnChange();
                attributeChange();

                let _width = window.innerWidth
                const boardItem = document.querySelectorAll('.board-item')
                const boardActive = document.querySelectorAll('.board-item.active')

                if(_width < 1024) {
                    if(boardActive) {
                        boardActive.forEach(board => {
                            const boardBody = board.querySelector(".board-body")
                            const boardInner = boardBody.querySelector(".board-inner")
                            boardBody.style.height = boardInner.offsetHeight + "px"
                        })
                    }
                } else {
                    boardItem.forEach(board => {
                        const boardBody = board.querySelector(".board-body")
                        boardBody.style.removeProperty("height");
                        board.classList.remove("active")
                    });
                }
            })

            function btnChange() {
                const _width = window.innerWidth
                const buttons = document.querySelectorAll(".board-body .btn")
                if(_width >= 1024) {
                    buttons.forEach(btn => {
                        btn.className = "btn design1 case1 type1 color1 map"
                    });
                } else {
                    buttons.forEach(btn => {
                        btn.className = "btn design3 case3 type4 color6 ar-icon-arrow-right-up2 map"
                    });
                }
            }

            function attributeChange() {
                let _width = window.innerWidth
                const boardHead = document.querySelectorAll(".board-item .board-head")
                const mapBtn = document.querySelectorAll(".board-item .map")

                if(_width < 1024) {
                    boardHead.forEach(head => {
                        head.setAttribute("role", "button")
                        head.setAttribute("tabindex", "0")
                    });
                    mapBtn.forEach(map => {
                        map.setAttribute("tabindex", "-1")
                    });
                } else {
                    boardHead.forEach(head => {
                        head.removeAttribute("role")
                        head.removeAttribute("tabindex")
                    });
                    mapBtn.forEach(map => {
                        map.setAttribute("tabindex", "0")
                    });
                }
            }

            function accordion() {
                const boardHead = document.querySelectorAll(".board-head")

                const func = (head) => {
                    let _width = window.innerWidth
                    if(_width < 1024) {
                        const boardItem = head.closest(".board-item")
                        const boardBody = boardItem.querySelector(".board-body")
                        const boardInner = boardBody.querySelector(".board-inner")
                        const mapBtn = boardBody.querySelector(".map")

                        if(boardItem.classList.contains("active")) {
                            boardItem.classList.remove("active")
                            boardBody.style.height = "0"
                            mapBtn.setAttribute("tabindex", "-1")
                        } else {
                            boardItem.classList.add("active")
                            boardBody.style.height = boardInner.offsetHeight + "px"
                            mapBtn.setAttribute("tabindex", "0")
                        }
                    }
                }

                boardHead.forEach(head => {
                    head.addEventListener("click", () => func(head));
                    head.addEventListener("keydown", e => {
                        e = event || window.event;
                        let keycode = e.keyCode || e.which;

                        if(!e.shiftKey && (keycode === 13 || keycode === 32)) {
                            func(head);
                        }
                    })
                });
            }

            const mapBtn = document.querySelectorAll(".btn.map")
            mapBtn.forEach(map => {
                map.addEventListener("click", (e) => {
                    e.preventDefault();
                    let _width = window.innerWidth
                    if(_width >= 1024) {
                        const boardFigure = map.closest(".board-item").querySelector(".board-figure")
                        if(boardFigure) {
                            if(boardFigure.classList.contains("active")) {
                                boardFigure.classList.remove("active")
                                boardFigure.style.height = "0"
                            } else {
                                boardFigure.classList.add("active")
                                boardFigure.style.height = boardFigure.querySelector(".map-area").offsetHeight + "px"
                            }
                        }
                    } else {
                        let latitude = map.dataset.latitude;
                        let longitude = map.dataset.longitude;
                        window.location.href = 'https://www.google.com/maps?q=' + latitude + ',' + longitude;
                    }
                });
            })

            const mapToggleButtons = document.querySelectorAll('.btn.map');

            mapToggleButtons.forEach(button => {
                button.addEventListener('click', () => {
                    // 현재 title 값에 따라 title 값을 토글
                    if (button.getAttribute('title') === 'Opens in a new window.') {
                        button.setAttribute('title', 'Close in a new window.');
                    } else {
                        button.setAttribute('title', 'Opens in a new window.');
                    }
                });
            });
        })
    </script>
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main company globalnetwork" id="main">
        <div class="main-inner">
            <div class="local case2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Company</span></li>
                            <li class="data-item"><span class="item-text">Global Networks</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Building Greater<br> Happiness Together</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Global Networks</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/company/bg-local-head-globalnetwork-pc.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head blind">Global Networks</div>
                    <div class="content-body">
                        <div class="tab-display design1 case1 type1">
                            <div class="swiper tab-wrap">
                                <ul class="swiper-wrapper tab-list" role="tablist">
                                    <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                        <button role="tab" class="tab-text" id="domestic">Domestic</button>
                                    </li>
                                    <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                        <button role="tab" class="tab-text" id="overseas">Overseas</button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel-display design1 case1">
                            <div class="panel-list">
                                <div id="tab-panel1" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <c:forEach items="${domesticList}" var="entry" varStatus="entryStatus">
                                            <c:set var="regionName" value="${entry.key}" />
                                            <c:set var="items" value="${entry.value}" />
                                            <div class="section design2 type1">
                                            <div class="section-wrap">
                                                <div class="section-head">
                                                    <div class="section-subject">
                                                        <h4 class="section-name">${regionName}</h4>
                                                    </div>
                                                </div>
                                                <div class="section-body">
                                                    <div class="board-list">
                                                        <c:forEach items="${items}" var="item" varStatus="status">
                                                        <div class="board-item">
                                                            <div class="board-wrap">
                                                                <div class="board-head" role="button" tabindex="0">
                                                                    <strong class="board-subject" style="word-break: break-all;">${item.companyNameEn}</strong>
                                                                </div>
                                                                <div class="board-body">
                                                                    <div class="board-inner">
                                                                        <div class="info-list">
                                                                            <div class="info-item">
                                                                                <strong class="info-title">Nation</strong>
                                                                                <span class="info-content">${item.countryNameEn}</span>
                                                                            </div>
                                                                            <c:if test="${not empty item.addressEn}">
                                                                                <div class="info-item">
                                                                                    <strong class="info-title">Address</strong>
                                                                                    <span class="info-content" style="word-break: break-all;">${item.addressEn}</span>
                                                                                </div>
                                                                            </c:if>
                                                                            <c:if test="${not empty item.phoneNoEn}">
                                                                                <div class="info-item">
                                                                                    <strong class="info-title">Tel</strong>
                                                                                    <span class="info-content">${item.phoneNoEn}</span>
                                                                                </div>
                                                                            </c:if>
                                                                        </div>
                                                                        <div class="btn-display design1 case1">
                                                                            <div class="btn-area">
                                                                                <button class="btn design1 case1 type1 color1 map" title="Opens in a new window." data-latitude="${item.latitude}" data-longitude="${item.longitude}"><span class="btn-text">MAP</span></button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="board-figure">
                                                                    <div class="map-area">
                                                                        <!-- 구글맵 영역 (임시로 이미지 처리) -->
<%--                                                                        <img src="https://place-hold.it/713x384" alt="">--%>
                                                                        <div class="map-area mapIndex-${entryStatus.index} map-${status.index}"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div id="tab-panel2" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <c:forEach items="${overseasList}" var="entry" varStatus="entryStatus">
                                            <c:set var="regionName" value="${entry.key}" />
                                            <c:set var="items" value="${entry.value}" />
                                            <div class="section design2 type1">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <div class="section-subject">
                                                            <h4 class="section-name"><c:out value="${regionName}"/></h4>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <div class="board-list">
                                                            <c:forEach items="${items}" var="item" varStatus="status">
                                                                <div class="board-item">
                                                                    <div class="board-wrap">
                                                                        <div class="board-head" role="button" tabindex="0">
                                                                            <strong class="board-subject"><c:out value="${item.companyNameEn}"/></strong>
                                                                        </div>
                                                                        <div class="board-body">
                                                                            <div class="board-inner">
                                                                                <div class="info-list">
                                                                                    <div class="info-item">
                                                                                        <strong class="info-title">Nation</strong>
                                                                                        <span class="info-content"><c:out value="${item.countryNameEn}"/></span>
                                                                                    </div>
                                                                                    <c:if test="${not empty item.addressEn}">
                                                                                        <div class="info-item">
                                                                                            <strong class="info-title">Address</strong>
                                                                                            <span class="info-content" style="word-break: break-all;">${item.addressEn}</span>
                                                                                        </div>
                                                                                    </c:if>
                                                                                    <c:if test="${not empty item.phoneNoEn}">
                                                                                        <div class="info-item">
                                                                                            <strong class="info-title">Tel</strong>
                                                                                            <span class="info-content">${item.phoneNoEn}</span>
                                                                                        </div>
                                                                                    </c:if>
                                                                                </div>
                                                                                <div class="btn-display design1 case1">
                                                                                    <div class="btn-area">
                                                                                        <button class="btn design1 case1 type1 color1 map" title="Opens in a new window." data-latitude="${item.latitude}" data-longitude="${item.longitude}"><span class="btn-text">MAP</span></button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="board-figure">
                                                                            <div class="map-area">
                                                                                <!-- 구글맵 영역 (임시로 이미지 처리) -->
<%--                                                                            <img src="https://place-hold.it/713x384" alt="">--%>
                                                                                <div class="map-area oversea-map-${entryStatus.index} map-${status.index}"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
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
<script src="//maps.googleapis.com/maps/api/js?region=KR&key=AIzaSyCidnNnDUM7vVJbcck31yUsKoMVNMTGm1w&callback=initMap" async defer></script>
<style>
    .map-area {
        width: 100%;
        height: 300px; /* 원하는 높이로 조정 */
    }
</style>
<%
    java.util.Map<String, java.util.List<com.skn.user.company.dto.GlobalNetwork>> domesticList = (java.util.Map<String, java.util.List<com.skn.user.company.dto.GlobalNetwork>>)request.getAttribute("domesticList");
    java.util.Map<String, java.util.List<com.skn.user.company.dto.GlobalNetwork>> overseasList = (java.util.Map<String, java.util.List<com.skn.user.company.dto.GlobalNetwork>>)request.getAttribute("overseasList");
    com.google.gson.Gson gson = new com.google.gson.Gson();
    String domestic = gson.toJson(domesticList);
    String oversea = gson.toJson(overseasList);
%>
<script>
    $(document).ready(function() {
        localAnimations_Case02();
    });

    var domestic = <%= domestic %>;
    var oversea = <%= oversea %>;

    function initMapDomestic() {
        var idx = 0;
        Object.keys(domestic).forEach(function(regionName) {
            var regionItems = domestic[regionName];
            regionItems.forEach(function(item, index) {
                var mapElement = document.querySelector('.mapIndex-' + idx + '.map-' + index);
                if (mapElement) {
                    var mapOptions = {
                        center: new google.maps.LatLng(item.latitude, item.longitude),
                        zoom: 18,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                    };
                    var map = new google.maps.Map(mapElement, mapOptions);
                    var marker = new google.maps.Marker({
                        position: new google.maps.LatLng(item.latitude, item.longitude),
                        map: map,
                        title: item.companyNameEn
                    });
                }
            });
            idx++;
        });
    }

    function initMapOversea() {
        var idx = 0;
        Object.keys(oversea).forEach(function(regionName) {
            var regionItems = oversea[regionName];
            regionItems.forEach(function(item, index) {
                var mapElement = document.querySelector('.oversea-map-' + idx + '.map-' + index);
                if (mapElement) {
                    var mapOptions = {
                        center: new google.maps.LatLng(item.latitude, item.longitude),
                        zoom: 18,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                    };
                    var map = new google.maps.Map(mapElement, mapOptions);
                    var marker = new google.maps.Marker({
                        position: new google.maps.LatLng(item.latitude, item.longitude),
                        map: map,
                        title: item.companyNameEn
                    });
                }
            });
            idx++;
        });
    }

    function initMaps() {
        initMapDomestic();
        initMapOversea();
    }

    // 페이지가 로드되면 지도 초기화
    window.onload = initMaps;
</script>
</body>

</html>