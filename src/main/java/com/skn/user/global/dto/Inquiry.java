package com.skn.user.global.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Inquiry extends BaseDto {
    /**
    * Table: INQUIRY
    * Column: UID
    * */
    private String uid;

    /**
     * Table: INQUIRY
     * Column: INQUIRY_INDEX 고객문의 인덱스
     * */
    private String inquiryIndex;

    /**
     * * Table: INQUIRY
     * Column: TITLE 문의 제목
     * */
    private String title;

    /**
     * Table: INQUIRY
     * Column: LANG  KO: 국문, EN: 영문
     * */
    private String lang;

    /**
     * Table: INQUIRY
     * Column: CONTENT 문의 내용
     * */
    private String content;

    /**
     * Table: INQUIRY
     * Column: EMAIL 문의자 이메일
     * */
    private String email;

    /**
     * Table: INQUIRY
     * Column: NAME 문의자 이름
     * */
    private String name;

    /**
     * Table: INQUIRY
     * Column: ETC_INFO 사업장 및 연락처
     * */
    private String etcInfo;

    /**
     * Table: INQUIRY
     * Column: CLASSIFICATION 문의 종류
     * */
    private String classification;

    /**
     * Table: INQUIRY
     * Column: STATUS 진행상태(READY: 미확인, ING: 진행중(열람),DONE: 완료, NOANSWERDONE: 미답변완료)
     * */
    private String status;
}
