package com.skn.user.career.controller;

import com.skn.user.util.NTUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequiredArgsConstructor
public class CareerController {

    @RequestMapping(value={"/{lang:ko|en}/career/corporate-culture" ,"/career/corporate-culture"})
    public String coporateCulture(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/career/corporate-culture";
    }

    @RequestMapping(value={"/{lang:ko|en}/career/personnel-training" ,"/career/personnel-training"})
    public String personelTraining(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/career/personnel-training";
    }

    @RequestMapping(value={"/{lang:ko|en}/career/evaluation-reward" ,"/career/evaluation-reward"})
    public String evaluationReward(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/career/evaluation-reward";
    }

    @RequestMapping(value={"/{lang:ko|en}/career/job-introduction" ,"/career/job-introduction"})
    public String jobIntroduction(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/career/job-introduction";
    }

    @RequestMapping(value={"/{lang:ko|en}/career/recruitment-process" ,"/career/recruitment-process"})
    public String recruitmentProcess(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/career/recruitment-process";
    }
}
