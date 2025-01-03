package com.skn.user.business.service;

import com.skn.user.business.dto.BusinessContents;
import com.skn.user.business.mapper.BusinessContentsMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class BusinessContentsService {

    private final BusinessContentsMapper businessContentsMapper;

    /**
     * 사업별 콘텐츠 주요 성과 목록 조회
     * * @param reqMap 언어 (KO, EN), 사업 분야 영문명
     */
    public List<BusinessContents> getBusinessContentsList(Map reqMap) {
        return businessContentsMapper.selectBusinessContentsList(reqMap);
    }
}
