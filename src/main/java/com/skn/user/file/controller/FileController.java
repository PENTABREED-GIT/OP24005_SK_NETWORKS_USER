package com.skn.user.file.controller;

import com.skn.user.file.service.FileInfoService;
import com.skn.user.util.NTUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequiredArgsConstructor
public class FileController {

    private final FileInfoService fileService;

    @RequestMapping(value = "/FileFormINC")
    public String fileForm(HttpServletRequest request, Model model) {
        String parentTable = request.getParameter("parentTable");
        String parentUid = NTUtil.isNull(request.getParameter("parentUid"), "");
        String parentType = NTUtil.isNull(request.getParameter("parentType"), "");

        if(!parentUid.equals("")) {

            model.addAttribute("fileList", fileService.getFileInfoList(parentTable, parentUid, parentType));
        }

        return "/common/inc/FileFormINC";

    }
}

