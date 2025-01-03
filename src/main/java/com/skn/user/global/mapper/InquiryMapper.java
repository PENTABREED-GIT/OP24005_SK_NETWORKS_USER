package com.skn.user.global.mapper;

import com.skn.user.global.dto.Inquiry;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InquiryMapper {
    /**
     * 문의/제안 등록
     * * @param Inquiry
     * * @return
     */
    int insertInquiry(Inquiry inquiry);

    /**
     * 문의/제안 등록일 조회
     * * @param uid
     * * @return
     */
    String selectInquiryDate(String uid);
}
