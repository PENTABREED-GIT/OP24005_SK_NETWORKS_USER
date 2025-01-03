package com.skn.user.global.controller;

import com.skn.user.config.annotation.Operation;
import com.skn.user.util.NTUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequiredArgsConstructor
public class GlobalController {

    @Operation("ETC > 사이트맵")
    @RequestMapping(value={"/{lang:ko|en}/global/site-map" ,"/global/site-map"})
    public String siteMap(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/global/site-map";
    }

    @Operation("ETC > 개인정보 처리방침")
    @RequestMapping(value={"/{lang:ko|en}/global/privacy-policy" ,"/global/privacy-policy"})
    public String privacyPolicy(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/global/privacy-policy";
    }

    @Operation("ETC > 채용공고")
    @RequestMapping(value={"/{lang:ko|en}/global/job-postings" ,"/global/job-postings"})
    public String jobPostings(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/global/site-map";
    }

    @Operation("ETC > 문의제안")
    @RequestMapping(value={"/{lang:ko|en}/global/inquiry-form" ,"/global/inquiry-form"})
    public String inquiryForm(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        model.addAttribute("uid", RandomStringUtils.randomAlphanumeric(16));
        return lang + "/global/inquiry-form";
    }

    @Operation("ETC > 문의제안폼(SK)")
    @RequestMapping(value={"/{lang:ko|en}/global/sk-inquiry-form" ,"/global/sk-inquiry-form"})
    public String skInquiryForm(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        model.addAttribute("uid", RandomStringUtils.randomAlphanumeric(16));
        return lang + "/global/sk-inquiry-form";
    }

    @Operation("ETC > 문의 접수 완료")
    @RequestMapping(value={"/{lang:ko|en}/global/inquiry-done" ,"/global/inquiry-done"})
    public String inquiryDone(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/global/inquiry-done";
    }

    @Operation("ETC > 제안 접수 완료")
    @RequestMapping(value={"/{lang:ko|en}/global/proposal-done" ,"/global/proposal-done"})
    public String proposalDone(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/global/proposal-done";
    }
}
