<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>SK네트웍스 문의ㆍ제안 &lt; 문의ㆍ제안 &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            input();

            const inquiryForm = document.querySelector(".inquiry-form")
            const radioLabel = inquiryForm.querySelectorAll(".data-item.inquiry-sort .radio-item label")

            radioLabel.forEach(radioLabel => {
                radioLabel.addEventListener("click", () => {
                    const idValue = radioLabel.querySelector("input").getAttribute("id")

                    const businessphForm = inquiryForm.querySelector(".business-ph .form")
                    const businessphInput = inquiryForm.querySelector(".business-ph .form .input-elem")

                    const agree2 = document.getElementById("agree2")
                    const selectInfoForm = agree2.closest(".form")
                    const selectInfoRadio = selectInfoForm.querySelectorAll("input")
                    if(idValue == "proposal") {
                        businessphForm.classList.add("disabled")
                        businessphInput.setAttribute("disabled", "")
                        businessphInput.value = "";
                        businessphForm.querySelector(".remove").style.display = "none";

                        selectInfoForm.classList.add("disabled")
                        selectInfoRadio.forEach(selectInfoRadio => {
                            selectInfoRadio.setAttribute("disabled", "");
                        });
                    } else if(idValue == "inquiry") {
                        businessphForm.classList.remove("disabled")
                        businessphInput.removeAttribute("disabled")

                        selectInfoForm.classList.remove("disabled")
                        selectInfoRadio.forEach(selectInfoRadio => {
                            selectInfoRadio.removeAttribute("disabled");
                        });
                    }
                })
            });
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
    <div class="main etc sk-inquiry" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">문의ㆍ제안</span></li>

                        <li class="data-item"><span class="item-text">SK네트웍스 문의ㆍ제안</span></li>


                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">문의ㆍ제안</h2>
                    </div>
                </div>
                <form name="inquiryForm" method="post">
                    <input type="hidden" id="uid" name="uid" value="<c:out value="${uid}"/>">
                    <input type="hidden" id="status" name="status" value="READY">
                    <input type="hidden" id="lang" name="lang" value="KO">
                    <div class="local-body">
                    <div class="content-head">문의ㆍ제안 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case1 type1 align2">
                            <div class="section-wrap">
                                <div class="section-caption required-caption">
                                    <span class="caption">*필수입력항목</span>
                                </div>
                                <div class="section-body">
                                    <div class="data-display inquiry-form">
                                        <ul class="data-list">
                                            <li class="data-item">
                                                <div class="data-head">
                                                    <strong class="data-name">
                                                        성명<span class="required">*</span>
                                                    </strong>
                                                </div>
                                                <div class="data-body">
                                                    <div class="form input design1 case1 type1" style="width: 100%;">
                                                        <label for="name" class="blind">성명 입력</label>
                                                        <input id="name" name="name" class="input-elem" type="text" placeholder="이름을 입력해 주세요." required>
                                                        <div class="input-icon">
                                                            <button type="button" class="btn icon case3 remove">
                                                                <span class="btn-text blind">삭제</span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div class="form-text error">
                                                        <p class="comment design1">* 이름을 입력해주세요.</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="data-item email">
                                                <div class="data-head">
                                                    <strong class="data-name">
                                                        이메일<span class="required">*</span>
                                                    </strong>
                                                </div>
                                                <div class="data-body">
                                                    <div class="form-bundle">
                                                        <div class="form input design1 case1 type1 email1 pc-only" style="width: 37.3rem;">
                                                            <label for="email1" class="blind">이메일 입력</label>
                                                            <input id="email1" class="input-elem" type="text" placeholder="이메일을 입력해 주세요." required>
                                                            <div class="input-icon">
                                                                <button type="button" class="btn icon case3 remove">
                                                                    <span class="btn-text blind">삭제</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="form input design1 case1 type1 email1 mo-only">
                                                            <label for="email-mo" class="blind mo-only">이메일 입력</label>
                                                            <input id="email-mo" class="input-elem mo-only" type="text" placeholder="이메일 전체입력">
                                                            <div class="input-icon">
                                                                <button type="button" class="btn icon case3 remove">
                                                                    <span class="btn-text blind">삭제</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <span class="sign pc-only">@</span>
                                                        <div class="form input design1 case1 type1 email2 pc-only" style="width: 18.4rem;">
                                                            <label for="email2" class="blind">이메일 도메인 입력</label>
                                                            <input id="email2" class="input-elem" type="text" readonly required>
                                                            <div class="input-icon">
                                                                <button type="button" class="btn icon case3 remove">
                                                                    <span class="btn-text blind">삭제</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="form select design1 case1 type1 pc-only" style="width: 18.3rem;">
                                                            <label for="emailSelectBox" class="blind">이메일 도메인 선택</label>
                                                            <select id="emailSelectBox" onchange="changeEmailAddress(this);">
                                                                <option value="">선택하세요.</option>
                                                                <option value="naver.com">naver.com</option>
                                                                <option value="daum.net">daum.net</option>
                                                                <option value="nate.com">nate.com</option>
                                                                <option value="hotmail.com">hotmail.com</option>
                                                                <option value="yahoo.com">yahoo.com</option>
                                                                <option value="empas.com">empas.com</option>
                                                                <option value="korea.com">korea.com</option>
                                                                <option value="dreamwiz.com">dreamwiz.com</option>
                                                                <option value="gmail.com">gmail.com</option>
                                                                <option value="custom">직접입력</option>
                                                            </select>
                                                            <div class="arrow"><span class="blind">닫힘</span></div>
                                                        </div>
                                                    </div>
                                                    <div class="form-text error">
                                                        <p class="comment design1">* 이메일을 입력해주세요.</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="data-item inquiry-sort">
                                                <div class="data-head">
                                                    <strong class="data-name">
                                                        문의종류<span class="required">*</span>
                                                    </strong>
                                                </div>
                                                <div class="data-body">
                                                    <div class="form radio design1 case2 type1">
                                                        <ul class="radio-list">
                                                            <li class="radio-item">
                                                                <label for="inquiry">
                                                                    <input type="radio" name="inquiry-radio" value="inquiry" id="inquiry" checked="">
                                                                    <span class="option">문의</span>
                                                                </label>
                                                            </li>
                                                            <li class="radio-item">
                                                                <label for="proposal">
                                                                    <input type="radio" name="inquiry-radio" value="proposal" id="proposal">
                                                                    <span class="option">제안</span>
                                                                </label>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <p class="para">SK네트웍스 브랜드에 관한 문의는 각 브랜드의 고객문의 페이지를 이용하시면, 보다 빠른 처리가 가능합니다.</p>
                                                    <div class="btn-display">
                                                        <a class="btn design3 case2 type3 color4 ar-icon-arrow-right2" href="/global/inquiry-form">
                                                            <span class="btn-text">브랜드별 고객문의 바로가기</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="data-item business-ph">
                                                <div class="data-head">
                                                    <strong class="data-name">
                                                        사업장명 및 연락처
                                                    </strong>
                                                </div>
                                                <div class="data-body">
                                                    <div class="form input design1 case1 type1" style="width: 100%;">
                                                        <label for="etcInfo" class="blind">사업장 명 및 연락처 입력</label>
                                                        <input id="etcInfo" name="etcInfo" class="input-elem" type="text" placeholder="사업장 명 및 연락처를 입력해 주세요.">
                                                        <div class="input-icon">
                                                            <button type="button" class="btn icon case3 remove">
                                                                <span class="btn-text blind">삭제</span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div class="bullet-display design1 case1 type1">
                                                        <ul class="data-list">
                                                            <li class="data-item">고객님의 연락처(이메일 주소)와 문의하시는 사업장명을 남겨주시면 더 빠른 처리가 가능합니다.</li>
                                                            <li class="data-item">고객님의 연락처(이메일 주소)는 답변 완료 후 바로 삭제합니다.</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="data-item">
                                                <div class="data-head">
                                                    <strong class="data-name">
                                                        제목<span class="required">*</span>
                                                    </strong>
                                                </div>
                                                <div class="data-body">
                                                    <div class="form input design1 case1 type1" style="width: 100%;">
                                                        <label for="title" class="blind">제목 입력</label>
                                                        <input id="title" name="title" class="input-elem" type="text" placeholder="제목을 입력해 주세요." required>
                                                        <div class="input-icon">
                                                            <button type="button" class="btn icon case3 remove">
                                                                <span class="btn-text blind">삭제</span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div class="form-text error">
                                                        <p class="comment design1">* 제목을 입력해주세요.</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="data-item inquiry-contents">
                                                <div class="data-head">
                                                    <strong class="data-name">
                                                        문의내용<span class="required">*</span>
                                                    </strong>
                                                </div>
                                                <div class="data-body">
                                                    <div class="form textArea">
                                                        <label for="inquiry-content" class="blind">문의내용 입력</label>
                                                        <textarea name="content" class="input-elem" id="inquiry-content" cols="20" rows="4" placeholder="보다 정확한 안내를 위해 문의하실 내용을 구체적으로 작성해 주세요. 단, 고유식별번호나 인증정보 등의 민감한 개인정보는 포함되지 않도록 주의해 주세요." required></textarea>
                                                    </div>
                                                    <div class="form-text error">
                                                        <p class="comment design1">* 문의내용을 입력해주세요.</p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type2 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">
                                            개인정보수집 및 이용 동의
                                        </h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 pc-only">
                                        <table style="min-width: 580px;" class="col-w-1">
                                            <caption>이 표는 개인정보수집 및 이용 동의 정보를 제공하며 구분, 수집항목, 이용목적, 이용 및 보유 기간으로 구성되어 있습니다.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col class="col2">
                                                <col class="col3">
                                                <col class="col4">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">구분</th>
                                                    <th scope="col">수집항목</th>
                                                    <th scope="col">이용목적</th>
                                                    <th scope="col">이용 및 보유 기간</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td rowspan="2">필수</td>
                                                    <td>성명</td>
                                                    <td>서비스 이용에 따른 본인 식별</td>
                                                    <td rowspan="2" class="accent color7">1년 보유 후 파기</td>
                                                </tr>
                                                <tr>
                                                    <td>이메일</td>
                                                    <td>문의사항에 대한 회신</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="data-display onePair-table mo-only">
                                        <div class="data-head">
                                            <strong class="table-title">필수항목</strong>
                                        </div>
                                        <div class="data-list">
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <div class="data-tr">
                                                            <span class="data-th">수집항목</span>
                                                        </div>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="data-tr">
                                                            <span class="data-th">성명</span>
                                                            <span class="data-th">이메일</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="data-list">
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <div class="data-tr">
                                                            <span class="data-th">이용목적</span>
                                                        </div>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="data-tr">
                                                            <span class="data-th">서비스 이용에 따른 본인 식별</span>
                                                            <span class="data-th">문의사항에 대한 회신</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="data-list last">
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <div class="data-tr">
                                                            <span class="data-th">이용 및 보유 기간</span>
                                                        </div>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="data-tr">
                                                            <span class="data-th color1">1년 보유 후 파기</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="data-display design1 type5 consent-use">
                                        <div class="data-list">
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <div class="data-subject">
                                                            <span class="data-split">필수정보 수집 및 이용에</span>
                                                            <div class="form radio design1 case2 type2">
                                                                <ul class="radio-list">
                                                                    <li class="radio-item">
                                                                        <label for="agree1">
                                                                            <input type="radio" name="consentToUse1" value="r1" id="agree1">
                                                                            <span class="option">동의</span>
                                                                        </label>
                                                                    </li>
                                                                    <li class="radio-item">
                                                                        <label for="disagree1">
                                                                            <input type="radio" name="consentToUse1" value="r2" id="disagree1" checked="">
                                                                            <span class="option">미동의</span>
                                                                        </label>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <span class="data-split">합니다.</span>
                                                        </div>
                                                    </div>
                                                    <div class="data-body">
                                                        <p class="comment design1">* 동의 거부의 권리가 있으나, 거부 시 문의사항 등록 및 처리가 불가능합니다.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case5 type2 align1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">
                                            개인정보처리위탁 안내
                                        </h4>
                                        <p class="section-summary">SK네트웍스㈜는 수집된 개인정보의 처리 및 관리 등의 업무를 스스로 수행함을 원칙으로 하나, 원활한 업무처리를 위해 필요한 경우 일부 또는 전부를 선정한 위 개인정보 보유 기간 동안 다음 아래의 업체에 위탁할 수 있음을 안내합니다.</p>
                                    </div>
                                </div>
                                <div class="section-body scroll">
                                    <div class="t-display design1 case1 type1 align3 pc-only">
                                        <table style="min-width: 600px;">
                                            <caption>이 표는 개인정보처리위탁 안내 내용을 제공하며 수탁자, 처리 위탁 업무 내용, 이용기간으로 구성되어 있습니다.</caption>
                                            <colgroup>
                                                <col style="width:33.333%">
                                                <col style="width:33.333%">
                                                <col style="width:33.333%">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">수탁자</th>
                                                    <th scope="col">처리 위탁 업무 내용</th>
                                                    <th scope="col">이용기간</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>SK 주식회사<br>C&amp;C(재수탁사:한국 마이크로소프트)</td>
                                                    <td>전산시스템 유지 관리, 데이터 보관(국내)</td>
                                                    <td rowspan="3">위탁계약 해지 시까지</td>
                                                </tr>
                                                <tr>
                                                    <td>펜타브리드</td>
                                                    <td>홈페이지 운영 관리</td>
                                                </tr>
                                                <tr>
                                                    <td>SK university (mySUNI)</td>
                                                    <td>임직원 교육/시험 및 고용보험 환급업무</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="data-display onePair-table mo-only">
										<div class="data-list">
											<div class="data-item">
												<div class="data-wrap">
													<div class="data-head">
														<div class="data-tr">
															<span class="data-th">수탁자</span>
														</div>
													</div>
													<div class="data-body">
														<div class="data-tr">
															<span class="data-th">SK 주식회사<br> C&amp;C(재수탁사:한국 마이크로소프트)</span>
															<span class="data-th">펜타브리드</span>
															<span class="data-th">SK university (mySUNI)</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="data-list">
											<div class="data-item">
												<div class="data-wrap">
													<div class="data-head">
														<div class="data-tr">
															<span class="data-th">처리 위탁 업무 내용</span>
														</div>
													</div>
													<div class="data-body">
														<div class="data-tr">
															<span class="data-th">SK university (mySUNI)</span>
															<span class="data-th">홈페이지 운영 관리</span>
															<span class="data-th">임직원 교육/시험 및 고용보험 환급업무</span>
														</div>
													</div>
												</div>
											</div>
										</div>
                                        <div class="data-list">
											<div class="data-item">
												<div class="data-wrap">
													<div class="data-head">
														<div class="data-tr">
															<span class="data-th">이용기간</span>
														</div>
													</div>
													<div class="data-body">
														<div class="data-tr">
															<span class="data-th">위탁계약 해지 시까지</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
                                </div>
                            </div>
                        </div>
                        <div class="btn-display case1 type1 align3">
                            <div class="btn-area">
                                <button class="btn design1 case1 type1 color1" onclick="saveInquiry();">
                                    <span class="btn-text">문의하기</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
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
<script>

    function changeEmailAddress(selectBox) {
        let emailInput = document.getElementById('email2');
        let selectedValue = selectBox.value;

        if (selectedValue === 'custom') {
            emailInput.value = '';
            emailInput.removeAttribute('readonly');
        } else {
            emailInput.value = selectedValue;
            emailInput.setAttribute('readonly', 'readonly');
        }
    }

    const uid = document.querySelector('input[name=uid]').value;

    // submit form
    async function saveInquiry() {
        event.preventDefault(); // 기본 동작을 막아 리로드 방지

        if (!validateForm()) {
            return false;
        }

        let email = document.getElementById('email1').value + '@' + document.getElementById('email2').value;

        const inquiryRadioButtons = document.querySelectorAll('input[name="inquiry-radio"]');

        // 초기에 체크된 라디오 버튼의 값을 가져옵니다.
        let checkedValue = '';
        inquiryRadioButtons.forEach(function(button) {
            if (button.checked) {
                checkedValue = button.value;
            }
        });

        let detailUrl = '/global/inquiry';
        let url = '/api/v1'+detailUrl;
        let method = 'POST';

        // formdata to json type
        let formDataObj = {};
        const formData = new FormData(document.inquiryForm);
        formData.append('email', email);
        formData.append('classification', checkedValue);
        formData.forEach((value, key) => {
            formDataObj[key] = value;
        });

        // submit
        const response = await fetch(url, {
            method: method,
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(formDataObj)
        });

        // response
        if(response.ok) { // success
            const res = await response.json();
            console.log(res);
            if(res.result) {
                if (checkedValue == 'inquiry') {
                    location.href = '/global/inquiry-done';
                } else {
                    location.href = '/global/proposal-done';
                }
            }
        } else { // fail
            alert('등록 실패');
        }
    }

    // 가장 위에 있는 유효성 조건을 충족하지 못한 요소에 포커스 설정
    function setFocusToFirstError() {
        const firstErrorElement = document.querySelector('.form-text.error[style="display: block;"]');
        if (firstErrorElement) {
            const inputElem = firstErrorElement.closest('.data-body').querySelector('.input-elem');
            if (inputElem) {
                inputElem.focus();
            }
        }
    }

    function validateForm() {
        let isValidate = true;
        const form = document.inquiryForm;

        form.querySelectorAll('.input-elem[required]').forEach((el) => {
            if (el.type !== 'hidden' && el.type !== 'radio') {
                if (el.id === 'email1' || el.id === 'email2') {
                    if (document.getElementById('email1').value === '' || document.getElementById('email2').value === '') {
                        el.closest('.data-body').querySelector('.form-text.error').style.display = 'block';
                        isValidate = false;
                        el.focus();
                    } else if (!isValidEmail(document.getElementById('email1').value + '@' + document.getElementById('email2').value)) {
                        el.closest('.data-body').querySelector('.form-text.error').children[0].innerHTML = '* 이메일 형식을 확인해주세요.';
                        el.closest('.data-body').querySelector('.form-text.error').style.display = 'block';
                        isValidate = false;
                        el.focus();
                    } else {
                        el.closest('.data-body').querySelector('.form-text.error').style.display = 'none';
                    }
                } else if (el.value === '') {
                    el.closest('.data-body').querySelector('.form-text.error').style.display = 'block';
                    isValidate = false;
                    el.focus();
                } else {
                    el.closest('.data-body').querySelector('.form-text.error').style.display = 'none';
                }
            }
        });

        // form input 체크 후 약관 동의 확인
        if (isValidate) {
            const consentToUse1 = document.querySelector('input[name="consentToUse1"]:checked');
            // r2 : 미동의
            if (consentToUse1.value === 'r2') {
                alert('약관에 동의해주세요.');
                isValidate = false;
                document.querySelector('input[name="consentToUse1"]').focus();
                return isValidate;
            }
        }

        if (!isValidate) {
            setFocusToFirstError(); // 유효성 검사 실패 시 가장 위에 있는 오류 메시지를 가진 입력 요소에 포커스 설정
            return isValidate;
        }

        return isValidate;
    }

    function isValidEmail(email) {
        // 이메일 유효성 검사 정규 표현식
        const emailRegex = /^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~.-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
        return emailRegex.test(email);
    }
</script>
