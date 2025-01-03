package com.skn.user.main.controller;

import com.skn.user.common.Page;
import com.skn.user.pr.dto.Press;
import com.skn.user.pr.service.MediaService;
import com.skn.user.pr.service.PressService;
import com.skn.user.util.NTUtil;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequiredArgsConstructor
public class MainController {

    private final PressService pressService;
    private final MediaService mediaService;

    @Operation(description = "초기화면")
    @GetMapping(value={"/", "/{lang:ko|en}"})
    public String main(HttpSession session, @PathVariable(required = false) String lang, Model model) {

        Map<String, Object> reqMap = new HashMap<>();
        lang = NTUtil.isNull(lang, "ko");
        reqMap.put("lang", lang.toUpperCase());
        String userId = null;
        String result = "";

        Page page = new Page(5, 1, 10, 7);
        List<Press> pressList = pressService.getPrPressList(reqMap, page);

        model.addAttribute("pressList", pressList);
        model.addAttribute("mediaList", mediaService.getMediaList(reqMap));

        return lang + "/main";
    }
}

