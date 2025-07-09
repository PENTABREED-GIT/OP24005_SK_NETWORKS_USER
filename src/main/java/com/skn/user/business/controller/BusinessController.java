package com.skn.user.business.controller;

import com.skn.user.business.service.BusinessContentsService;
import com.skn.user.pr.dto.Press;
import com.skn.user.pr.service.PressService;
import com.skn.user.util.NTUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class BusinessController {

    private final PressService pressService;
    private final BusinessContentsService businessContentsService;

    @RequestMapping(value={"/business", "/{lang:ko|en}/business", "/business/summary", "/{lang:ko|en}/business/summary"})
    public String summary(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/business/summary";
    }

    @RequestMapping(value={"/business/global-investment", "/{lang:ko|en}/business/global-investment"})
    public String globalInvestment(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "investment");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/global-investment";
    }

    @RequestMapping(value={"/business/information-communication", "/{lang:ko|en}/business/information-communication"})
    public String informationCommunication(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "ICT");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/information-communication";
    }

    @RequestMapping(value={"/business/hotel-and-resort", "/{lang:ko|en}/business/hotel-and-resort"})
    public String hotelAndResort(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "hotel");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/hotel-and-resort";
    }

    @RequestMapping(value={"/business/sk-intellix", "/{lang:ko|en}/business/sk-intellix"})
    public String skMagic(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "magic");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/sk-intellix";
    }

    @RequestMapping(value={"/business/sk-rental-car", "/{lang:ko|en}/business/sk-rental-car"})
    public String skRentalCar(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "rent");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/sk-rental-car";
    }

    @RequestMapping(value={"/business/sk-eleclink", "/{lang:ko|en}/business/sk-eleclink"})
    public String skEleclink(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "link");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/sk-eleclink";
    }

    @RequestMapping(value={"/business/skspeedmate", "/{lang:ko|en}/business/skspeedmate"})
    public String speedmate(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "speedmate");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/skspeedmate";
    }

    @RequestMapping(value={"/business/glowide", "/{lang:ko|en}/business/glowide"})
    public String globalTrading(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "trading");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/glowide";
    }

    @RequestMapping(value={"/business/mintit", "/{lang:ko|en}/business/mintit"})
    public String mintit(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "mintit");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/mintit";
    }

    @RequestMapping(value={"/business/en-core", "/{lang:ko|en}/business/en-core"})
    public String enCore(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "en-core");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/en-core";
    }

    @RequestMapping(value={"/business/phnyx-lab", "/{lang:ko|en}/business/phnyx-lab"})
    public String phnyxLab(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("businessEnName", "phnyx-lab");

        model.addAttribute("pressList", pressService.getBusinessPressList(reqMap));
        model.addAttribute("achievementsList", businessContentsService.getBusinessContentsList(reqMap));

        return lang + "/business/phnyx-lab";
    }
}
