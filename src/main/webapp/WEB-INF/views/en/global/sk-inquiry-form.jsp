<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SK networks InquiriesㆍSuggestions &lt; InquiriesㆍSuggestions &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
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
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main etc sk-inquiry" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">InquiriesㆍSuggestions</span></li>
                        <li class="data-item"><span class="item-text">SK networks InquiriesㆍSuggestions</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">Inquiries<br class="mo-only">ㆍ<br class="mo-only">Suggestions</h2>
                    </div>
                </div>
                <form name="inquiryForm" method="post">
                    <input type="hidden" id="uid" name="uid" value="<c:out value="${uid}"/>">
                    <input type="hidden" id="status" name="status" value="READY">
                    <input type="hidden" id="lang" name="lang" value="EN">
                    <div class="local-body">
                        <div class="content-head">InquiriesㆍSuggestions</div>
                        <div class="content-body">
                            <div class="section design1 case1 type1 align2">
                                <div class="section-wrap">
                                    <div class="section-caption required-caption">
                                        <span class="caption">*Required Entry Items</span>
                                    </div>
                                    <div class="section-body">
                                        <div class="data-display inquiry-form">
                                            <ul class="data-list">
                                                <li class="data-item">
                                                    <div class="data-head">
                                                        <strong class="data-name">
                                                            Name<span class="required">*</span>
                                                        </strong>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="form input design1 case1 type1" style="width: 100%;">
                                                            <label for="name" class="blind">Enter Name</label>
                                                            <input id="name" name="name" class="input-elem" type="text" placeholder="Please enter your name." required>
                                                            <div class="input-icon">
                                                                <button type="button" class="btn icon case3 remove">
                                                                    <span class="btn-text blind">remove</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="form-text error">
                                                            <p class="comment design1">* Please enter your name.</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="data-item email">
                                                    <div class="data-head">
                                                        <strong class="data-name">
                                                            E-mail<span class="required">*</span>
                                                        </strong>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="form-bundle">
                                                            <div class="form input design1 case1 type1 email1 pc-only" style="width: 37.3rem;">
                                                                <label for="email1" class="blind">Enter E-mail</label>
                                                                <input id="email1" class="input-elem" type="text" placeholder="Please enter your E-mail." required>
                                                                <div class="input-icon">
                                                                    <button type="button" class="btn icon case3 remove">
                                                                        <span class="btn-text blind">remove</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div class="form input design1 case1 type1 email1 mo-only">
                                                                <label for="email-mo" class="blind mo-only">Enter E-mail</label>
                                                                <input id="email-mo" class="input-elem mo-only" type="text" placeholder="Please enter your E-mail.">
                                                                <div class="input-icon">
                                                                    <button type="button" class="btn icon case3 remove">
                                                                        <span class="btn-text blind">remove</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <span class="sign pc-only">@</span>
                                                            <div class="form input design1 case1 type1 email2 pc-only" style="width: 18.4rem;">
                                                                <label for="email2" class="blind">Enter E-mail</label>
                                                                <input id="email2" class="input-elem" type="text" readonly required>
                                                                <div class="input-icon">
                                                                    <button type="button" class="btn icon case3 remove">
                                                                        <span class="btn-text blind">remove</span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div class="form select design1 case1 type1 pc-only" style="width: 18.3rem;">
                                                                <label for="emailSelectBox" class="blind">Label</label>
                                                                <select id="emailSelectBox" onchange="changeEmailAddress(this);">
                                                                    <option value="">select</option>
                                                                    <option value="naver.com">naver.com</option>
                                                                    <option value="daum.net">daum.net</option>
                                                                    <option value="nate.com">nate.com</option>
                                                                    <option value="hotmail.com">hotmail.com</option>
                                                                    <option value="yahoo.com">yahoo.com</option>
                                                                    <option value="empas.com">empas.com</option>
                                                                    <option value="korea.com">korea.com</option>
                                                                    <option value="dreamwiz.com">dreamwiz.com</option>
                                                                    <option value="gmail.com">gmail.com</option>
                                                                    <option value="custom">Other</option>
                                                                </select>
                                                                <div class="arrow"><span class="blind">Close</span></div>
                                                            </div>
                                                        </div>
                                                        <div class="form-text error">
                                                            <p class="comment design1">* Please enter your E-mail.</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="data-item inquiry-sort">
                                                    <div class="data-head">
                                                        <strong class="data-name">
                                                            Inquiry Type<span class="required">*</span>
                                                        </strong>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="form radio design1 case2 type1">
                                                            <ul class="radio-list">
                                                                <li class="radio-item">
                                                                    <label for="inquiry">
                                                                        <input type="radio" name="inquiry-radio" value="inquiry" id="inquiry" checked="">
                                                                        <span class="option">Inquiries</span>
                                                                    </label>
                                                                </li>
                                                                <li class="radio-item">
                                                                    <label for="proposal">
                                                                        <input type="radio" name="inquiry-radio" value="proposal" id="proposal">
                                                                        <span class="option">Suggestions</span>
                                                                    </label>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <p class="para">For faster assistance, please use the Customer Inquiry Page of the relevant brand.</p>
                                                        <div class="btn-display">
                                                            <a class="btn design3 case2 type3 color4 ar-icon-arrow-right2" href="/global/inquiry-form">
                                                                <span class="btn-text">Go to Brand-specific Customer Inquiry</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="data-item business-ph">
                                                    <div class="data-head">
                                                        <strong class="data-name">
                                                            Business Site Name &amp; Contact Info.
                                                        </strong>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="form input design1 case1 type1" style="width: 100%;">
                                                            <label for="etcInfo" class="blind">Enter Business Site Name &amp; Contact Info.</label>
                                                            <input id="etcInfo" name="etcInfo" class="input-elem" type="text" placeholder="Please enter the contents.">
                                                            <div class="input-icon">
                                                                <button type="button" class="btn icon case3 remove">
                                                                    <span class="btn-text blind">remove</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="bullet-display design1 case1 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">To expedite the process, please provide your contact information(E-mail) and the name of the relevant business site.</li>
                                                                <li class="data-item">Your contact information(E-mail) will be deleted immediately after we response to your inquiry.</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="data-item">
                                                    <div class="data-head">
                                                        <strong class="data-name">
                                                            Subject<span class="required">*</span>
                                                        </strong>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="form input design1 case1 type1" style="width: 100%;">
                                                            <label for="title" class="blind">Enter Subject</label>
                                                            <input id="title" name="title" class="input-elem" type="text" placeholder="Please enter the subject." required>
                                                            <div class="input-icon">
                                                                <button type="button" class="btn icon case3 remove">
                                                                    <span class="btn-text blind">remove</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="form-text error">
                                                            <p class="comment design1">* Please enter the subject.</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="data-item inquiry-contents">
                                                    <div class="data-head">
                                                        <strong class="data-name">
                                                            Content<span class="required">*</span>
                                                        </strong>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="form textArea">
                                                            <label for="inquiry-content" class="blind">enter the content of inquiry</label>
                                                            <textarea name="content" class="input-elem" id="inquiry-content" cols="20" rows="4" placeholder="Please enter the content of your inquiry." required></textarea>
                                                        </div>
                                                        <div class="form-text error">
                                                            <p class="comment design1">* Please enter the content of your inquiry.</p>
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
                                                Consent to the Collection &amp; Use of Personal Information
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="t-display design1 case1 type1 align3 pc-only">
                                            <table style="min-width: 580px;" class="col-w-1">
                                                <caption>This table provides personal information collection and consent to use and consists of classification, collection items, purpose of use, use, and retention period.</caption>
                                                <colgroup>
                                                    <col class="col1">
                                                    <col class="col2">
                                                    <col class="col3">
                                                    <col class="col4">
                                                </colgroup>
                                                <thead>
                                                <tr>
                                                    <th scope="col">Type</th>
                                                    <th scope="col">Collection Item</th>
                                                    <th scope="col">Purpose of Use</th>
                                                    <th scope="col">Term of Use &amp; Retention</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td rowspan="2">Required</td>
                                                    <td>Name</td>
                                                    <td>User identification for service use</td>
                                                    <td rowspan="3" class="accent color7">Retain for 1 year, then delete</td>
                                                </tr>
                                                <tr>
                                                    <td>E-mail</td>
                                                    <td>To respond to inquiries</td>
                                                </tr>
                                                <tr>
                                                    <td>Optional</td>
                                                    <td>Contact Info.</td>
                                                    <td>To respond to inquiries</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="data-display onePair-table mo-only">
                                            <div class="data-head">
                                                <strong class="table-title">Required</strong>
                                            </div>
                                            <div class="data-list">
                                                <div class="data-item">
                                                    <div class="data-wrap">
                                                        <div class="data-head">
                                                            <div class="data-tr">
                                                                <span class="data-th">Collection Item</span>
                                                            </div>
                                                        </div>
                                                        <div class="data-body">
                                                            <div class="data-tr">
                                                                <span class="data-th">Name</span>
                                                                <span class="data-th">E-mail</span>
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
                                                                <span class="data-th">Purpose of Use</span>
                                                            </div>
                                                        </div>
                                                        <div class="data-body">
                                                            <div class="data-tr">
                                                                <span class="data-th">User identification for service use</span>
                                                                <span class="data-th">To respond to inquiries</span>
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
                                                                <span class="data-th">Term of Use &amp; Retention</span>
                                                            </div>
                                                        </div>
                                                        <div class="data-body">
                                                            <div class="data-tr">
                                                                <span class="data-th color1">Retain for 1 year, then delete</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="data-display onePair-table mo-only">
                                            <div class="data-head">
                                                <strong class="table-title">Optional</strong>
                                            </div>
                                            <div class="data-list">
                                                <div class="data-item">
                                                    <div class="data-wrap">
                                                        <div class="data-head">
                                                            <div class="data-tr">
                                                                <span class="data-th">Collection Item</span>
                                                            </div>
                                                        </div>
                                                        <div class="data-body">
                                                            <div class="data-tr">
                                                                <span class="data-th">Contact Info.</span>
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
                                                                <span class="data-th">Purpose of Use</span>
                                                            </div>
                                                        </div>
                                                        <div class="data-body">
                                                            <div class="data-tr">
                                                                <span class="data-th">To respond to inquiries</span>
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
                                                                <span class="data-th">Term of Use &amp; Retention</span>
                                                            </div>
                                                        </div>
                                                        <div class="data-body">
                                                            <div class="data-tr">
                                                                <span class="data-th color1">Retain for 1 year, then delete</span>
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
                                                                <span class="data-split">I</span>
                                                                <div class="form radio design1 case2 type2">
                                                                    <ul class="radio-list">
                                                                        <li class="radio-item">
                                                                            <label for="agree1">
                                                                                <input type="radio" name="consentToUse1" value="r1" id="agree1">
                                                                                <span class="option">consent</span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="radio-item">
                                                                            <label for="disagree1">
                                                                                <input type="radio" name="consentToUse1" value="r2" id="disagree1" checked="">
                                                                                <span class="option">do not consent</span>
                                                                            </label>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <span class="data-split">to the collection and use of required information.</span>
                                                            </div>
                                                        </div>
                                                        <div class="data-body">
                                                            <p class="comment design1">* You have the right to refuse to consent; however, refusal will prevent the registration and processing of your inquiry.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="data-item">
                                                    <div class="data-wrap">
                                                        <div class="data-head">
                                                            <div class="data-subject">
                                                                <span class="data-split">I</span>
                                                                <div class="form radio design1 case2 type2">
                                                                    <ul class="radio-list">
                                                                        <li class="radio-item">
                                                                            <label for="agree2">
                                                                                <input type="radio" name="consentToUse2" value="r1" id="agree2">
                                                                                <span class="option">consent</span>
                                                                            </label>
                                                                        </li>
                                                                        <li class="radio-item">
                                                                            <label for="disagree2">
                                                                                <input type="radio" name="consentToUse2" value="r2" id="disagree2" checked="">
                                                                                <span class="option">do not consent</span>
                                                                            </label>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <span class="data-split">to the collection and use of optional information.</span>
                                                            </div>
                                                        </div>
                                                        <div class="data-body">
                                                            <p class="comment design1">* You have the right to refuse to consent; refusal will not affect your ability to register and process your inquiry.</p>
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
                                                Notice on Outsourcing of Personal Information Handling
                                            </h4>
                                            <p class="section-summary">SK Networks Co., Ltd. Primarily manages and handles the collected personal information in-house. However, to ensure efficient business operations, we may outsource all or part of these tasks to the companies listed below during the specified retention period.</p>
                                        </div>
                                    </div>
                                    <div class="section-body scroll">
                                        <div class="t-display design1 case1 type1 align3 pc-only">
                                            <table style="min-width: 390px;" class="col-w-2">
                                                <caption>This table provides information on personal information handling consignment and consists of trustees and processing consignment tasks.</caption>
                                                <colgroup>
                                                    <col class="col1">
                                                    <col class="col2">
                                                </colgroup>
                                                <thead>
                                                <tr>
                                                    <th scope="col">Outsourcing Contractors</th>
                                                    <th scope="col">Outsourced Task Description</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>SK C&amp;C</td>
                                                    <td>Information system processing and maintenance</td>
                                                </tr>
                                                <tr>
                                                    <td>PENTABREED</td>
                                                    <td>Website operation and management</td>
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
                                                                <span class="data-th">Outsourcing Contractors</span>
                                                            </div>
                                                        </div>
                                                        <div class="data-body">
                                                            <div class="data-tr">
                                                                <span class="data-th">SK C&amp;C</span>
                                                                <span class="data-th">PENTABREED</span>
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
                                                                <span class="data-th">Outsourced Task Description</span>
                                                            </div>
                                                        </div>
                                                        <div class="data-body">
                                                            <div class="data-tr">
                                                                <span class="data-th">Information system processing and maintenance</span>
                                                                <span class="data-th">Website operation and management</span>
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
                                        <span class="btn-text">Go to Inquiry</span>
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
        <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
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

        if (!validateForm()) {
            return;
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
                    location.href = '/${LANG}/global/inquiry-done';
                } else {
                    location.href = '/${LANG}/global/proposal-done';
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
            const consentToUse2 = document.querySelector('input[name="consentToUse2"]:checked');
            if (document.querySelector('input[name="inquiry-radio"]:checked').value == 'proposal') {
                if (consentToUse1.value === 'r2') {
                    alert('Please agree to the terms and conditions.');
                    isValidate = false;
                    document.querySelector('input[name="consentToUse1"]').focus();
                    return isValidate;
                }
            } else {
                if (consentToUse1.value === 'r2' || consentToUse2.value === 'r2') {
                    alert('Please agree to the terms and conditions.');
                    isValidate = false;
                    document.querySelector('input[name="consentToUse1"]').focus();
                    return isValidate;
                }
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
