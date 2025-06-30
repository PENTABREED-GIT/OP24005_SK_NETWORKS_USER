package com.skn.user.global.controller;

import com.skn.user.config.annotation.Operation;
import com.skn.user.config.api.apidto.APIDataResponse;
import com.skn.user.global.dto.Inquiry;
import com.skn.user.global.service.InquiryService;
import com.skn.user.util.NTResult;
import io.swagger.v3.oas.models.examples.Example;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Profile;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@Profile("!local")
@RestController
@Slf4j
@RequiredArgsConstructor
public class GlobalApiController {
    private final InquiryService inquiryService;
    private final Logger logger = LoggerFactory.getLogger(Example.class);

    @Operation("ETC > 문의등록")
    @PostMapping(value={"/{lang:ko|en}/api/v1/global/inquiry" ,"/api/v1/global/inquiry"})
    public APIDataResponse<String> insertInquiry(@Valid @RequestBody Inquiry data) {
        try {
            NTResult result = inquiryService.setInquiry(data);
            return APIDataResponse.of(result.getResultCode());
        } catch (Exception e) {
            // 예외 처리: 문의 등록 실패
            logger.error("Error while inserting inquiry: ", e);
            return APIDataResponse.of("FAIL", "INQUIRY_INSERT_FAILED");
        }
    }
}
