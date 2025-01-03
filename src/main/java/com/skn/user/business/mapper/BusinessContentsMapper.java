package com.skn.user.business.mapper;

import com.skn.user.business.dto.BusinessContents;

import java.util.List;
import java.util.Map;

public interface BusinessContentsMapper {
    /**
     * 사업별 콘텐츠
     * * @param reqMap 언어 (KO, EN), 사업 분야 영문명
     * * @return
     */
    List<BusinessContents> selectBusinessContentsList(Map reqMap);
}
