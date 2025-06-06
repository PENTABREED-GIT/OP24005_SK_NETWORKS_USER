<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>환경경영 &lt; 환경 &lt; Sustainability &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            localAnimations_Case02();
            // showPop 파라미터가 있을 경우 페이지 접근 시 팝업창을 띄워주는 기능
            // https://www.sknetworks.co.kr/sustainability/environment/management?showPop << 해당 url
            const urlPrarams = new URLSearchParams(window.location.search);
            const showPop = urlPrarams.get('showPop'); 
            if(showPop != null) {
                setTimeout(() => {
                    const popSection = document.querySelector(".popSection");
                    const distanceFromTop = popSection.getBoundingClientRect().top;
                    window.scrollTo({
                        top: distanceFromTop - 377.375,
                        behavior: 'smooth',
                        duration: 300
                    });
                    setTimeout(() => {
                        document.querySelector('button[data-bs-target="#modalLaw"]').click();
                    }, 700);
                }, 100);
            }
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
    <div class="main esg environmental" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">환경</span></li>
                            <li class="data-item"><span class="item-text">환경경영</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">지속가능한 지구를 위한<br>
                            경영을 하겠습니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">환경경영</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/sustainability/bg-local-head-esg-natural.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">환경경영</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design1 case2 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">목적 및 범위</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">SK네트웍스는 기후위기에 따른 환경규제에 효과적으로 대응하고 환경영향을 효율적으로 관리하기 위해 ISO14001 : 2015 기준에 의거하여 본사의 모든 업무를 대상 범위로 한 환경경영시스템을 구축 및 관리하고 있습니다. 환경 관련 법규 파악 및 환경규제 관리 방안을 마련하고, 대내외 다양한 이해관계자의 요구사항 파악 및 체계적 대응으로 환경사고를 예방하며, 환경경영에 대한 전 구성원의 참여를 통해 환경경영시스템의 적극적인 반영과 개선을 진행하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type1 popSection">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">운영 프로세스</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">환경경영의 문서화 체계를 구축하고 효율적으로 관리하기 위해 환경경영시스템 관리규정과 기획/운영/성과 지침을 수립하였고, 해당 규정 1종과 지침 3종을 SK네트웍스 전사 사규로 등록하여 전 구성원 대상 공유 프로세스를 마련하였습니다. 특히, ISO14001 : 2015 요구사항의 PDCA(Plan/Do/Check/Action)를 기반으로 환경경영시스템 운영 프로세스를 구축하였고, 환경방침 수립, 환경측면 파악 및 영향 평가, 환경이슈 파악 및 리스크 평가 그리고 <button data-bs-toggle="modal" data-bs-target="#modalLaw">환경법규 파악 및 준수 평가</button> 등을 실시하여 환경 목표와 추진 계획을 수립하였습니다.</p>
                                    <p class="para">목표 달성 및 성과에 대한 정기적 모니터링을 시행하고 있으며, 매년 내부심사와 대외인증기관의 갱신심사를 통해 ISO14001 : 2015의 요구사항에 대한 충족여부를 평가하고 부적합 또는 권고사항 발생 시 즉각적이고 지속적인 개선을 실천할 계획입니다.</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type2 table">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">* 환경경영시스템 교육</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 960px;" class="col-w-1">
                                            <caption>이 표는 환경경영시스템 교육 정보를 제공하며 교육일자, 교육명, 교육대상, 장소, 목적, 교육 내용으로 구성되어 있습니다.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col class="col2">
                                                <col class="col3">
                                                <col class="col4">
                                                <col class="col5">
                                                <col class="col6">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">교육일자</th>
                                                    <th scope="col">교육명</th>
                                                    <th scope="col">교육대상</th>
                                                    <th scope="col">장소</th>
                                                    <th scope="col">목적</th>
                                                    <th scope="col">교육 내용</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>2022.06.20</td>
                                                    <td>ISO14001<br>소개</td>
                                                    <td>본사 업무 대상<br>조직별 구성원</td>
                                                    <td>SK네트웍스 본사</td>
                                                    <td>환경경영시스템 이해</td>
                                                    <td>환경경영 인증<br>소개 및 설명</td>
                                                </tr>
                                                <tr>
                                                    <td>2022.07.28</td>
                                                    <td>ISO14001<br>내부심사원 교육</td>
                                                    <td>ISO14001<br>내부심사원</td>
                                                    <td>온라인 교육 실시</td>
                                                    <td>환경경영시스템<br>시행 및 성과 공유</td>
                                                    <td>ISO14001 기획/운영/<br>성과 결과 공유</td>
                                                </tr>
                                                <tr>
                                                    <td>2023.09.08</td>
                                                    <td>ISO14001<br>내부심사원 교육</td>
                                                    <td>ISO14001<br>내부심사원</td>
                                                    <td>온라인 교육 실시</td>
                                                    <td>환경경영시스템<br>성과 및 적격성 제고</td>
                                                    <td>ISO14001 기획/운영/<br>성과 및 요구사항</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type2">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="post-list design5 case1 type1">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <img src="/assets/images/sustainability/env-policy.jpg" alt="SK네트웍스 주식회사 환경방침 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요.">
                                                </div>
                                                <div class="blind">
                                                    <strong>환경방침</strong>
                                                    <p>SK네트웍스 주식회사는 ESG 경영을 기반으로 고객과 사회 문제를 해결하며 지속 가능한 가치 창출을 추구합니다.</p>
                                                    <p>특히, 기후변화로 인한 환경문제 해결에 적극 동참하고 친환경 경영을 추구함으로써 기업에 요구되는 사회적 책임을 다하기 위해 다음을 실천합니다.</p>
                                                    <ol>
                                                        <li>1.기업 활동에 적용되는 환경 관련 국제 협약 및 국내 법규를 준수하고, 이해관계자 합의사항의 이행을 통해 사회가 요구하는 기업의 책임을 다하겠습니다.</li>
                                                        <li>2.친환경 경영을 추구하고 문화를 조성하여 KS I ISO 14001에 적합한 환경경영시스템을 구축하며 지속적인 이행과 개선을 통해 환경적 책임을 적극 실천하겠습니다.</li>
                                                        <li>3.기후변화를 포함한 환경 관련 이슈에 적극 대응하고 개선하기 위해, "Net Zero 2040"이라는 온실가스 감축목표 수립하고 달성 방안을 이행하도록 하겠습니다.</li>
                                                        <li>4.SK네트웍스 주식회사의 모든 구성원은 친환경 경영을 이행하는 주체로서, commitment를 기반으로 한 환경방침의 내재화와 실천을 도모할 수 있도록 하겠습니다.</li>
                                                        <li>5.대외 이해관계자에게 정확하고 진정성이 담긴 환경정보를 공개하고, 지역사회와의 상생을 통한 친환경 활동에 적극 참여하겠습니다.</li>
                                                    </ol>
                                                    <p>SK네트웍스 주식회사</p>
                                                    <p>대표이사 사장 이호정</p>
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
        <!-- Modal -->
        <div class="modal design1 medium" id="modalLaw" tabindex="-1" aria-labelledby="modalLawLabel" aria-hidden="true">
            <div class="modal-inner modal-dialog">
                <div class="modal-area">
                    <div class="modal-wrap">
                        <div class="modal-list">
                            <div class="modal-item">
                                <div class="modal-head" id="modalLawLabel">
                                    <em class="modal-subjec"><span class="modal-name">법/규제 관리 체계 및 대응 전략</span></em>
                                </div>
                                <div class="modal-body">
                                    <div class="section design1 case7 type4 align1">
                                        <div class="section-wrap">
                                            <div class="section-body">
                                                <p class="para">
                                                    ISO 14001에서 규정한 PDCA 사이클을 기반으로 환경 법/규제 관리 체계를 구축 및 운영하고 있습니다.<br>
                                                    환경법규 준수평가표 작성 및 최소 년 1회 이상 모니터링을 통해 적합성 평가 및 부적합 선정 시 시정조치 관리 등 대응 전략을 수립하고 있습니다.
                                                </p>
                                                <p class="para">
                                                    2023년 주요 경영활동 기준 총 7개의 환경법규 조항에 대한 준수평가를 실시하였고, 모두 적합 판정을 받았습니다.<br>
                                                    매년 환경법규 준수평가를 통해 평가 결과 및 시정조치에 대한 유효성을 보장하고 지속 관리 대응해 나갈 계획입니다.
                                                </p>
                                            </div>

                                            <div class="t-display design2 case1 type1 align1 scroll">
                                                <table class="col-w-2">
                                                    <caption>이 표는 환경 법/규제 관리 체계 및 대응 전략 정보를 제공합니다.</caption>
                                                    <colgroup>
                                                        <col class="col1">
                                                        <col class="col2">
                                                        <col class="col3">
                                                        <col class="col4">
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col" colspan="4">환경 법/규제 관리 체계 및 대응 전략</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <th scope="row" rowspan="9" class="t-bg">Plan</th>
                                                            <td rowspan="4" class="align3">조직 상황</td>
                                                            <td>조직과 조직 상황의 이해</td>
                                                            <td>조직/조직상황의 이해를 위해 내/외부 주요 이슈 사항을 규명하고 활동, 제품 및 서비스에 관련된 환경 법규 및 요구사항을 파악</td>
                                                        </tr>
                                                        <tr>
                                                            <td>이해관계자의 니즈와 기대 이해</td>
                                                            <td>환경법규 기반 내/외부 이해관계자 관련 의무준수사항을 파악 (관련 법규 내 변경 및 신규 제정 여부 확인(최소 연 1회 이상))</td>
                                                        </tr>
                                                        <tr>
                                                            <td>환경경영시스템의 적용 범위 결정</td>
                                                            <td rowspan="2">파악된 의무준수사항을 환경경영시스템 내 포함하여 조직별 적용 여부를 결정하고 문서화 관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td>환경경영시스템</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="3" class="align3">리더십</td>
                                                            <td>리더십과 의지표명</td>
                                                            <td rowspan="3">관련 환경 법규 내 요구사항을 충족할 수 있는 환경방침을 수립하고 조직별 역할 및 책임과 권한을 명기</td>
                                                        </tr>
                                                        <tr>
                                                            <td>조직의 역할, 책임 및 권한</td>
                                                        </tr>
                                                        <tr>
                                                            <td>환경방침</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="2" class="align3">기획</td>
                                                            <td>리스크와 기회를 다루는 조치</td>
                                                            <td rowspan="2">1.환경 측면 파악 및 영향 평가 실시<br>
                                                                2.환경 이슈 파악 및 리스크 평가 실시<br>
                                                                3.환경 법규 파악 및 법규 준수 평가 실시*</td>
                                                        </tr>
                                                        <tr>
                                                            <td>환경방침</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" rowspan="7" class="t-bg">Do</th>
                                                            <td rowspan="5" class="align3">지원</td>
                                                            <td>자원</td>
                                                            <td rowspan="2">환경 법규 기반 물적/인적 자원의 적격성 및 역량을 평가 관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td>역량</td>
                                                        </tr>
                                                        <tr>
                                                            <td>인식</td>
                                                            <td>환경 법규 등에 대한 업무 수행 구성원에 대한 교육훈련 등을 통해 인식 및 이해도 개선 관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td>의사소통</td>
                                                            <td rowspan="4">1.환경 측면 파악 및 영향 평가 실시<br>
                                                                2.환경 이슈 파악 및 리스크 평가 실시<br>
                                                                3.환경 법규 파악 및 법규 준수 평가 실시*</td>
                                                        </tr>
                                                        <tr>
                                                            <td>문서화된 정보</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="2" class="align3">운용</td>
                                                            <td>운용기획 및 관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td>비상사태 대비 및 대응</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" rowspan="3" class="t-bg">Check</th>
                                                            <td rowspan="3" class="align3">성과 평가</td>
                                                            <td>조직과 조직 상황의 이해</td>
                                                            <td rowspan="3">조직/조직상황의 이해를 위해 내/외부 주요 이슈 사항을 규명하고 활동, 제품 및 서비스에 관련된 환경 법규 및 요구사항을 파악</td>
                                                        </tr>
                                                        <tr>
                                                            <td>환경방침</td>
                                                        </tr>
                                                        <tr>
                                                            <td>조직의 역할, 책임 및 권한</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" rowspan="3" class="t-bg">Action</th>
                                                            <td rowspan="3" class="align3">개선</td>
                                                            <td>일반사항</td>
                                                            <td rowspan="3">
                                                                1.법규에 대한 준수의무사항 위반시 시정조치 대상으로 선정<br>
                                                                2.시정조치 대상 검토 및 개선 요구사항 발행을 통해 시정 조치 실시<br>
                                                                3.시정조치결과 확인 및 시정조치 관리 대장 작성을 통해 완료 여부 평가<br>
                                                                4.결과에 대한 지속적인 유효성 보장을 위해 내부심사(년 1회) 또는 모니터링을 통해 관리
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>부적합 및 시정 조치</td>
                                                        </tr>
                                                        <tr>
                                                            <td>지속적 개선</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <p class="comment design1">* 법규 준수평가 실시<br>
                                                1.주관부서장은 회사에 적용되는 환경 관련 법규 및 그 밖의 요구사항에 대한 준수 여부를 평가하기 위한 계획을 수립 함.<br>
                                                2.주관부서장은 준수평가 대상 법규 및 그 밖의 요구사항 내용을 기초로 환경법규 등록부를 작성하고, 점검 기준 수립이 포함된 환경법규 준수평가표를 작성하여 준수평가 실시 담당자 선임 및 평가를 실시 함.<br>
                                                3.주관부서장은 준수평가결과를 환경경영책임자에게 제출하고, 환경경영책임자는 최종 결과를 검토하고 중요한 위반사항이 발생한 경우 이를 대표이사에게 보고 함.준수평가 결과가 법규 등의 준수의무사항을 충족시키지 못할 경우, 이에 대한 적절한 시정조치를 실시 함.<br>
                                                4.주관부서장은 준수평가 결과를 유지하고 개선 관리 함.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-item">
                                <div class="modal-head">
                                    <div class="modal-subjec">
                                        <span class="modal-name">환경 법/규제 관리 체계 및 대응 전략</span>
                                        <div class="modal-caption">2023년 환경법규 준수 평가표</div>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="section design1 case7 type4 align1">
                                        <div class="section-wrap">
                                            <div class="section-body">
                                                <div class="t-display design3 case1 type1 align1 scroll">
                                                    <table style="min-width: 343px;" class="col-w-3">
                                                        <caption>이 표는 환경법규 준수 평가표 정보를 제공하며 법령, 관리번호로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col" colspan="2">환경법규 준수평가표</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row" class="t-bg align3">법령</th>
                                                                <td class="align3">폐기물법 등</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row" class="t-bg align3">관리번호</th>
                                                                <td class="align3">환경-01</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table style="min-width: 361px;" class="col-w-3">
                                                        <caption>이 표는 환경법규 준수 평가표 정보를 제공하며 점검일자, 점검부서, 점검자로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col3">
                                                            <col class="col4">
                                                        </colgroup>
                                                        <thead class="blind">
                                                            <tr>
                                                                <th scope="col">구분</th>
                                                                <th scope="col">내용</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row" class="align3 bl-bg">점검일자</th>
                                                                <td class="align3">2023.10.30</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row" class="align3 bl-bg">점검부서</th>
                                                                <td class="align3">SV추진팀</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row" class="align3 bl-bg">점검자</th>
                                                                <td class="align3">ㅇㅇㅇ</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div class="t-display design4 case1 type1 align1 scroll">
                                                    <table style="min-width: 704px;" class="col-w-4">
                                                        <caption>이 표는 환경법규 준수 평가표 정보를 제공하며 법 조항 및 항목, 점검내용, 준수평가(적합, 부적합, 해당사항 없음), 조치사항으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                            <col class="col6">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col" rowspan="2">법 조항 및 항목</th>
                                                                <th scope="col" rowspan="2">점검내용</th>
                                                                <th scope="col" colspan="3">준수평가</th>
                                                                <th scope="col" rowspan="2">조치<br class="mo-only">사항</th>
                                                            </tr>
                                                            <tr>
                                                                <th scope="col" class="t-bg">적합</th>
                                                                <th scope="col" class="t-bg">부적합</th>
                                                                <th scope="col" class="t-bg">해당사항<br> 없음</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>제15조<br>(생활폐기물 배출자의 처리 협조 등)</td>
                                                                <td>생활폐기물 보관 시설 설치 및 사업장폐기물 중 생활폐기물을 종류, 성상별로 구분</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good1">
                                                                                    <input type="radio" name="suit" value="s1" id="good1">
                                                                                    <span class="option blind">적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad1">
                                                                                    <input type="radio" name="suit" value="s2" id="bad1" checked>
                                                                                    <span class="option blind">부적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none1">
                                                                                    <input type="radio" name="suit" value="s3" id="none1">
                                                                                    <span class="option blind">해당사항 없음</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>제15조의2<br>(음식물류 폐기물 배출자의 의무)</td>
                                                                <td>음식물류 폐기물은 조례에 따라 발생 억제 및 적정처리 계획을 신고</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good2">
                                                                                    <input type="radio" name="suit1" value="s4" id="good2" checked>
                                                                                    <span class="option blind">적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad2">
                                                                                    <input type="radio" name="suit1" value="s5" id="bad2">
                                                                                    <span class="option blind">부적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none2">
                                                                                    <input type="radio" name="suit1" value="s6" id="none2">
                                                                                    <span class="option blind">해당사항 없음</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>제15조의2<br>(음식물류 폐기물 배출자의 의무)</td>
                                                                <td>위탁처리시 위탁처리 계약 신고</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good3">
                                                                                    <input type="radio" name="suit2" value="s7" id="good3" checked>
                                                                                    <span class="option blind">적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad3">
                                                                                    <input type="radio" name="suit2" value="s8" id="bad3">
                                                                                    <span class="option blind">부적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none3">
                                                                                    <input type="radio" name="suit2" value="s9" id="none3">
                                                                                    <span class="option blind">해당사항 없음</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>자원의 절약과 재활용촉진에 관한 법률 제12조<br>(폐기물 부담금)</td>
                                                                <td>제조업자의 폐기물 부담금 산정, 부과 등<br>(플라스틱(합성수지)를 함유하는 상품 제조업체, 주문자 상표 제작 업체, 수입업체 대상)</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good4">
                                                                                    <input type="radio" name="suit3" value="s10" id="good4" checked>
                                                                                    <span class="option blind">적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad4">
                                                                                    <input type="radio" name="suit3" value="s11" id="bad4">
                                                                                    <span class="option blind">부적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none4">
                                                                                    <input type="radio" name="suit3" value="s12" id="none4">
                                                                                    <span class="option blind">해당사항 없음</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>자원의 절약과 재활용촉진에 관한 법률 제16조(제조업자 등의 재활용의무)</td>
                                                                <td>재활용의무생산자 대상<br>(타이어, 수입차 부품 및 PB부품 합성복합 필름 대상)</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good5">
                                                                                    <input type="radio" name="suit4" value="s13" id="good5" checked>
                                                                                    <span class="option blind">적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad5">
                                                                                    <input type="radio" name="suit4" value="s14" id="bad5">
                                                                                    <span class="option blind">부적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none5">
                                                                                    <input type="radio" name="suit4" value="s15" id="none5">
                                                                                    <span class="option blind">해당사항 없음</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>전기ㆍ전자제품 및 자동차의 자원순환에 관한 법률 제16조의4(전기ㆍ전자제품 판매업자의 회수 및 인계의무 등)</td>
                                                                <td>한국전자제품자원순환공제조합에 가입 후 위탁 회수<br> (정보통신기기 유통 판매업자 대상)</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good6">
                                                                                    <input type="radio" name="suit5" value="s16" id="good6" checked>
                                                                                    <span class="option blind">적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad6">
                                                                                    <input type="radio" name="suit5" value="s17" id="bad6">
                                                                                    <span class="option blind">부적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none6">
                                                                                    <input type="radio" name="suit5" value="s18" id="none6">
                                                                                    <span class="option blind">해당사항 없음</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>환경기술및환경산업지원법(제16조의 8)</td>
                                                                <td>환경정보공개 작성 공개(매년 6월 30일)</td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="good7">
                                                                                    <input type="radio" name="suit6" value="s19" id="good7" checked>
                                                                                    <span class="option blind">적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="bad7">
                                                                                    <input type="radio" name="suit6" value="s20" id="bad7">
                                                                                    <span class="option blind">부적합</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form radio design1 case1 type1">
                                                                        <ul class="radio-list">
                                                                            <li class="radio-item">
                                                                                <label for="none7">
                                                                                    <input type="radio" name="suit6" value="s21" id="none7">
                                                                                    <span class="option blind">해당사항 없음</span>
                                                                                </label>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-fuc">
                        <button type="button" data-bs-dismiss="modal" class="btn icon case1 modal-close"><span class="btn-text blind">닫기</span></button>
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
