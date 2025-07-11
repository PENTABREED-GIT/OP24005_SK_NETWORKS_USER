<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Newsroom &lt; PR &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            frontCommon.Html.reset();

            Tab();

            // URL 문자열 추출 (아코디언 URL 생성)
            // 1. 현재 페이지 URL의 문자열 부분을 반환 후 ?를 제외한 나머지 쿼리 문자열을 추출(?tab=scrollTab1)
            const qr = window.location.search.substring(1, window.location.search.length)

            // 2. = 기준으로 쿼리 문자열을 나눔. [1]: 두 번째 값 가져옴 (scrollTab1)
            const tabId = (qr.split('='))[1]

            console.log("tabID : " + tabId);

            // 3. ID로 가진 HTML 요소를 DOM에서 가져옴.
            const scrollTab = document.getElementById(tabId);

            // 4. 자동으로 스크롤
            if(tabId != null){
                scrollTab.scrollIntoView()

                // 5. 해당 버튼을 클릭 (아코디언이 열린 상태)
                // scrollTab.querySelector('button').click()
                scrollTab.click();
            }

            //인트로 슬라이드
            new Swiper(".pr-swiper2", {
            effect: "fade",
            fadeEffect: {
                crossFade: true
            },
            // loop: true,
            a11y: true,
            allowTouchMove: false,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });

            //영상 라이브러리 슬라이드
            var prSwiper1 = new Swiper(".pr-swiper1", {
                slidesPerView: 2,
                slidesPerColumn: 2,
                spaceBetween: 15,
                loop: false,
                centeredSlides: false,
                a11y: true,
                navigation: {
                    nextEl: ".pr-swiper-area .swiper-button-next",
                    prevEl: ".pr-swiper-area .swiper-button-prev",
                },
                breakpoints: {
                    280: {
                        slidesPerView: 2,
                        slidesPerColumn: 2,
                        spaceBetween: 15,
                        loop: false,
                        centeredSlides: false,
                        allowTouchMove: true,
                    },
                    1024: {
                        slidesPerView: 3,
                        spaceBetween: 24,
                        loop: true,
                        centeredSlides: true,
                        allowTouchMove: false,
                    },
                }
            });

            document.querySelector('.pr-swiper-area').addEventListener('click', function(e) {
                if(e.target.closest(".swiper-slide-next")) {
                    prSwiper1.slideNext();
                } else if(e.target.closest(".swiper-slide-prev")) {
                    prSwiper1.slidePrev();
                }
            });

            const params = new URLSearchParams(window.location.search);
            const tabValue = params.get('tab');

            // tab 파라미터 값이 1인 경우 #tab1 > button 클릭
            const tab1Button = document.querySelector('#tab' + tabValue + ' > button');
            if (tab1Button) {
                tab1Button.click();
            }

            // 메인 비디오 업데이트 함수
            function updateMainVideo() {

                let targetVideo = document.querySelector("a.swiper-slide.video-item.swiper-slide-active");

                if (targetVideo) {
                    const youtubeUid = targetVideo.getAttribute('data-youtube-uid');
                    const title = targetVideo.getAttribute('data-title');
                    const script = targetVideo.getAttribute('data-script');

                    // 메인 비디오 영역 업데이트
                    const mainVideoFrame = document.querySelector('#active-video iframe');
                    const mainVideoTitle = document.querySelector('.data-script .head');
                    const mainVideoScript = document.querySelector('.data-script .body .para');

                    mainVideoFrame.src = `https://www.youtube.com/embed/` + youtubeUid;
                    mainVideoFrame.title = title;
                    mainVideoTitle.textContent = title;
                    mainVideoScript.textContent = script;
                }
            }

            // 모든 비디오 아이템을 선택
            const videoItems = document.querySelectorAll('.video-item');

            // 각 비디오 아이템에 클릭 이벤트 리스너 추가
            videoItems.forEach(item => {
                item.addEventListener('click', function () {
                    // 데이터 속성에서 유튜브 UID, 타이틀 및 스크립트 가져오기
                    const youtubeUid = this.getAttribute('data-youtube-uid');
                    const title = this.getAttribute('data-title');
                    const script = this.getAttribute('data-script');

                    // 메인 비디오 영역 업데이트
                    const mainVideoFrame = document.querySelector('#active-video iframe');
                    const mainVideoTitle = document.querySelector('.data-script .head');
                    const mainVideoScript = document.querySelector('.data-script .body .para');

                    mainVideoFrame.src = `https://www.youtube.com/embed/` + youtubeUid;
                    mainVideoFrame.title = title;
                    mainVideoTitle.textContent = title;
                    mainVideoScript.textContent = script;
                });
            });

            // 이전 및 다음 버튼 클릭 시 메인 비디오 업데이트
            document.querySelector("#tab-panel3 .swiper-button-prev").addEventListener('click', function() {
                updateMainVideo();
            });

            document.querySelector("#tab-panel3 .swiper-button-next").addEventListener('click', function() {
                updateMainVideo();
            });
        });
    </script>
    <script>
        // [25.03.27] 탭 클릭 시, 탭별로 url 변경
        function tabClickEvent(e){
            let tabId = e.target.id;
            let url = window.location.href.split('?')[0];
            if(url == null){
                url = window.location.href;
            }
            let newUrl = url;
            if(tabId != ""){
                newUrl += `?tabId=` + tabId;
            }
            history.pushState(null, null, newUrl);
        }
    </script>
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main pr news-room" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">PR</span></li>
                        <li class="data-item"><span class="item-text">Newsroom</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">Newsroom</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Newsroom page</div>
                    <div class="content-body">
                        <input type="hidden" id="totalCountTemp" value="<c:out value="${totalCount}"/>"/>
                        <div class="section">
                            <div class="section-body">
                                <div class="swiper-display swiper pr-swiper2">
                                    <ul class="swiper-wrapper">
                                        <c:forEach items="${pressList}" var="item" varStatus="status">
                                            <li class="swiper-slide">
                                                <a href="/${LANG}/pr/news-room/<c:out value="${item.uid}"/>" target="_self">
                                                    <div class="figure-wrap">
                                                        <c:choose>
                                                            <c:when test="${not empty item.addedFile}">
                                                                <img src="<c:out value="${item.addedFile}"/>" alt="<c:out value="${item.description}"/>">
                                                            </c:when>
                                                            <c:otherwise>
                                                                <img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="ir news thumbnail image">
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                    <div class="text-wrap">
                                                        <div class="slide-head">
                                                            <span class="cate"><c:out value="${item.businessAreaNameEn}"/></span>
                                                            <h3 class="tit"><c:out value="${item.title}"/></h3>
                                                        </div>
                                                        <div class="slide-body">
                                                            <p class="des"><c:out value="${ntUtil:toBr(ntUtil:removeHtml(item.content))}"/></p>
                                                            <span class="date"><c:out value="${item.regDate}"/></span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                    <div class="swiper-control">
                                        <button class="btn icon case1 arrow-left2-bg swiper-button-prev"><span class="btn-text blind">PREV</span></button>
                                        <button class="btn icon case1 arrow-right2-bg swiper-button-next"><span class="btn-text blind">NEXT</span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section">
                            <div class="section-body">
                                <div class="tab-display design1 case1 type1">
                                    <div class="swiper tab-wrap">
                                        <ul class="swiper-wrapper tab-list" role="tablist">
                                            <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                                <button role="tab" class="tab-text" onclick="tabClickEvent(event)">Press Release</button>
                                            </li>
                                            <li id="tab3" class="swiper-slide tab-item" aria-controls="tab-panel3">
                                                <button role="tab" class="tab-text" id="media-library" onclick="tabClickEvent(event)">Media Library</button>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="panel-display design1 case1">
                                    <div class="panel-list">
                                        <!-- 보도자료 -->
                                        <div id="tab-panel1" class="panel-item" role="tabpanel">
                                            <div class="panel-wrap">
                                                <div class="submit-form design1 case1 align2">
                                                    <div class="form-list">
                                                        <div class="form-item">
                                                            <div class="form search design1 case1 type1">
                                                                <label for="resultSearchWord" class="blind">
                                                                    search
                                                                </label>
                                                                <input id="resultSearchWord" name="searchWord" class="input-elem" type="text" placeholder="Please enter keyword(s)." value="<c:out value="${search.searchWord}"/>">
                                                                <div class="input-icon">
                                                                    <button class="btn icon case3 remove">
                                                                        <span class="btn-text blind">delete</span>
                                                                    </button>
                                                                    <button type="button" class="btn icon case3 search" onclick="searchPrPress();">
                                                                        <span class="btn-text blind">search</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="pressListDiv" class="post-list design2 case1 type1">
                                                </div>
                                                <div id="moreLoadDiv" class="btn-display case1 align3">
                                                    <div class="btn-area" id="moreBtn">
                                                        <button id="moreLoad" class="btn design3 case1 type1 color2 ar-icon-plus-bg" onclick="getPressList(2)">
                                                            <span class="btn-text">View more</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //보도자료 -->
                                        <!-- 영상 라이브러리 -->
                                        <div id="tab-panel3" class="panel-item" role="tabpanel">
                                            <div class="panel-wrap">
                                                <div class="data-display video-layout">
                                                    <div class="data-list">
                                                        <div class="data-item">
                                                            <div class="data-wrap">
                                                                <div id="active-video" class="data-figure">
                                                                    <iframe width="560" height="315" loading="lazy" src="https://www.youtube.com/embed/dcDCrAvMFm4" title="비대면으로 편리하게 중고폰 ATM, 민팃" aria-label="YouTube video: 비대면으로 편리하게 중고폰 ATM, 민팃" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen lang="en"></iframe>
                                                                </div>
                                                                <div class="data-script">
                                                                    <p class="head"><c:out value="${mainVideo.title}"/></p>
                                                                    <div class="body">
                                                                        <p class="para">
                                                                            ${mainVideo.videoScript}
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <div class="data-swiper pr-swiper-area">
                                                                    <div class="swiper-display swiper pr-swiper1">
                                                                        <div class="swiper-wrapper">
                                                                            <c:forEach items="${videoList}" var="item" varStatus="status">
                                                                            <a href="javascript:void(0);" class="swiper-slide video-item" data-youtube-uid="${item.youtubeUid}" data-title="${item.title}" data-script="${item.videoScript}">
                                                                                <div class="img">
                                                                                    <iframe width="560" height="315" loading="lazy" src="https://www.youtube.com/embed/${item.youtubeUid}" title="${item.title}" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen lang="en"></iframe>
                                                                                    <img src="${item.thumbnailUrl}" alt="${item.description}">
                                                                                </div>
                                                                                <p class="para">${item.title}</p>
                                                                            </a>
                                                                        </c:forEach>
                                                                        </div>
                                                                    </div>
                                                                    <div class="swiper-control">
                                                                        <button class="btn icon case1 arrow-left2-bg swiper-button-prev"><span class="btn-text blind">PREV</span></button>
                                                                        <button class="btn icon case1 arrow-right2-bg swiper-button-next"><span class="btn-text blind">NEXT</span></button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //영상 라이브러리 -->
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
<script>

    let urlParams = new URLSearchParams(window.location.search);
    let curPage = urlParams.get('currentPage');
    let sWord = urlParams.get('searchWord');
    // resultSearchWord
    console.log('sWord', sWord)

    if(sWord)  document.getElementById('resultSearchWord').value = sWord;

    document.addEventListener("DOMContentLoaded", () => {
        /*
        // 쿼리 파라미터를 사용하여 초기 검색어 및 페이지 설정
        if (curPage || sWord) {
            document.querySelector('#resultSearchWord').value = sWord;
            detailToList(curPage, sWord);
        } else {
            // 보도자료 게시판 호출
            getPressList(1, '');
        }
        */
        getPressList(1);
    })

    let currentPage = 1;
    let searchWord = '';
    let upcomingPage = 0;
    let totalCount;
    let upcomingLastPage = 0;

    /**
     * 게시물 목록 갱신
     * @param page
     * @returns {Promise<void>}
     */
    async function getPressList(currentPage = 1) {

        const searchWord = fnGetValueById('resultSearchWord');
        console.log({searchWord});

        const url = '/en/pr/news-room-inc2?page=' + currentPage + '&searchWord=' + searchWord;
        const {data, metaData} = await fnAsyncGet(url);

        console.log({data, metaData});
        const {totalCount, limit, reqMap} = metaData;
        console.log({totalCount, limit, reqMap});

        const htmlArr = [];

        data.forEach((obj) => {

            const {
                uid,                    //  "ZcjsLbcI3G5rWX1x",
                adminId,                //  null,
                adminIndex,             //  null,
                adminName,              //  null,
                modDate,                //  null,
                regDate,                //  "2025.06.27",
                rowNumber,              //  null,
                lang,                   //  "KO",
                pressIndex,             //  "129",
                businessAreaIndex,      //  null,
                isPress,                //  null,
                isBusiness,             //  null,
                title,                  //  "ㄴㅇㅎㄴㅇ",
                content,                //  "ㄴㅇㅎㅎㄴㄴㅇㅎ",
                addedFile,              //  null,
                businessAreaNameKo,     //  "글로벌 투자",
                businessAreaNameEn,     //  "Global Investment",
                description,            //  null
            } = obj;


            <%--htmlArr.push(`<a href="/pr/news-room/${uid}?currentPage=${page.currentPage}&searchWord=${searchWord}>" class="post-item" data-total-page="${totalPage}">`);--%>
            //htmlArr.push(`<a href="/pr/news-room/\${uid}?currentPage=\${currentPage}&searchWord=\${searchWord}" class="post-item">`);
            htmlArr.push(`<a href="/pr/news-room/\${uid}?currentPage=\${currentPage}" class="post-item" data-uid=\${uid}>`);
            htmlArr.push(`    <div class="post-wrap">`);
            htmlArr.push(`        <div class="post-figure">`);
            if (addedFile) {
                htmlArr.push(`                    <img src="\${addedFile}" alt="\${description}">`);
            } else {
                htmlArr.push(`                    <img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="Press now 썸네일 이미지">`);
            }
            htmlArr.push(`        </div>`);
            htmlArr.push(`        <div class="post-inform base-board-detail">`);
            htmlArr.push(`            <div class="post-head">`);
            htmlArr.push(`                <p class="post-caption">\${businessAreaNameEn}</p>`);
            htmlArr.push(`                <p class="post-subject">\${title}</p>`);
            htmlArr.push(`                <p class="post-summary ">\${content}</p>`);
            htmlArr.push(`            </div>`);
            htmlArr.push(`            <p class="post-date" title="등록일">\${regDate}</p>`);
            htmlArr.push(`        </div>`);
            htmlArr.push(`    </div>`);
            htmlArr.push(`</a>`);

        });

        fnAppend('pressListDiv', htmlArr);

        // 더보기 X
        if(Array.isArray(data) && data.length < limit || totalCount < limit) {
            fnRemoveById('moreBtn');
        // 더보기 O
        } else {
            const moreHtml = `
                <button id="moreLoad" class="btn design3 case1 type1 color2 ar-icon-plus-bg" onclick="getPressList(\${currentPage+1}, \${searchWord})">
                    <span class="btn-text">더보기</span>
                </button>
            `;

            fnHtml('moreBtn', [moreHtml])

        }

/*

        upcomingPage ++;

        if (sWord === undefined && searchWord === '') {
            searchWord = '';
        } else if ((sWord !== undefined && sWord !== '') && searchWord === '') {
            searchWord = sWord;
        }
        if (page == 1) {
            currentPage = 1;
            upcomingPage = 1;
        }
        let content = await fetch('/${LANG}/pr/news-room-inc?page=' + currentPage + '&searchWord=' + searchWord, {
            method: 'GET',
            contentType: 'text/html'
        }).then((response) => {
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

        let content2 = await fetch('/${LANG}/pr/news-room?page=' + currentPage + '&searchWord=' + searchWord, {
            method: 'GET',
            contentType: 'text/html'
        });

        console.log('---------------------------------------------');
        console.log(content);
        console.log(`page = ${page}`);
        console.log(`currentPage = ${currentPage}`);
        console.log(`searchWord = ${searchWord}`);

        if (page == 1 && searchWord !== '') {
            document.getElementById('pressListDiv').innerHTML = '';
            if (document.getElementById('no-result')) {
                document.getElementById('no-result').style.display = 'none';
            }
        }

        document.getElementById('pressListDiv').innerHTML += content;

        if (content.trim().includes('검색된 결과가 없습니다.')) {
            document.getElementById('moreLoad').style.display = 'none'; // 더 이상 데이터가 없으면 버튼 숨기기
        } else {
            currentPage++; // 페이지 증가
        }

        upcomingLastPage = parseInt(document.querySelectorAll('#pressListDiv .post-item')[document.querySelectorAll('#pressListDiv .post-item').length-1].dataset.totalPage);
        totalCount = document.getElementById('totalCount').value;
        if (upcomingLastPage !== undefined) {
            if (page != 1 && totalCount > 10) {
                if (upcomingPage >= upcomingLastPage-1) document.getElementById('moreLoad').style.display = 'none';
                else document.getElementById('moreLoad').style.display = 'block';
            } else {
                if (upcomingPage >= upcomingLastPage) document.getElementById('moreLoad').style.display = 'none';
                else document.getElementById('moreLoad').style.display = 'block';
            }
        }
*/
    }

    function searchPrPress() {
        searchWord = document.querySelector('#resultSearchWord').value.trim();
        // getPressList(1, searchWord);
        location.href = '/${LANG}/pr/news-room?currentPage=1&searchWord=' + searchWord;
    }

    async function detailToList(pageNo, sWord) {
        totalCount = document.getElementById('totalCountTemp').value;
        if (totalCount > 10) {
            await getPressList(1, sWord);
            for (let i = 0; i < pageNo-1; i++) {
                await getPressList(2, sWord);
            }
        } else {
            await getPressList(1, sWord);
        }
    }

    // 검색 입력 필드에서 엔터 키를 감지하여 검색 함수 호출
    const searchInput = document.querySelector('#resultSearchWord');
    searchInput.addEventListener('keypress', function(event) {
        if (event.key === 'Enter') {
            searchPrPress();
        }
    });
</script>
