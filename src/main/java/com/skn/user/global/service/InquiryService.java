package com.skn.user.global.service;

import com.skn.user.global.dto.Inquiry;
import com.skn.user.global.mapper.InquiryMapper;
import com.skn.user.util.NTCryptoUtil;
import com.skn.user.util.NTUtil;
import io.swagger.v3.oas.models.examples.Example;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.skn.user.util.NTResult;

@Slf4j
@Service
@RequiredArgsConstructor
public class InquiryService {

    private final InquiryMapper inquiryMapper;
    private final EmailService emailService;
    private static final Logger logger = LoggerFactory.getLogger(Example.class);

    /**
     * 문의/제안 등록
     * * @param Inquiry
     */
    @Transactional
    public NTResult setInquiry(Inquiry inquiry) {
        logger.debug("START insert Inquiry :::::::::::::::::::::::::::");
        NTResult ntResult = new NTResult();
        ntResult.setSuccess();

        try {
            // 이메일과 기타 정보를 암호화
            inquiry.setEmail(NTCryptoUtil.encrypt(inquiry.getEmail(), "EMAIL"));
            inquiry.setEtcInfo(NTCryptoUtil.encrypt(inquiry.getEtcInfo(), "ETC"));

            // 문의 내용 DB에 저장
            int result = inquiryMapper.insertInquiry(inquiry);

            if (result == 0) {
                // 삽입이 실패한 경우
                logger.error("INSERT INQUIRY FAILED, No rows affected.");
                ntResult.setFail();
                ntResult.setResultCode("INSERT_FAIL");
                return ntResult;  // 삽입 실패 시 즉시 반환
            }

            // 이메일 발송
            String date = NTUtil.isNull(inquiryMapper.selectInquiryDate(inquiry.getUid()), "");
            String subject = inquiry.getTitle();
            String body = inquiry.getContent();
            String classification = inquiry.getClassification();


            NTResult emailSent = emailService.sendEmail(classification, date, subject, body);
            // 이메일 발송 성공 여부 체크
            if (!"SUCCESS".equals(emailSent.getResultCode())) {
                logger.error("SEND MAIL ::::::::::::::::::::::::::: FAIL");
                ntResult.setFail();
                ntResult.setResultCode("SEND_FAIL");
                return ntResult;  // 이메일 발송 실패 시 즉시 반환
            }

        } catch (Exception e) {
            // 이메일 발송이나 DB 삽입에서 예외가 발생하면 트랜잭션 롤백
            logger.error("Error during inquiry process: ", e);
            ntResult.setFail();
            ntResult.setResultCode("ERROR_OCCURRED");
            throw new RuntimeException("Inquiry processing failed, transaction rolled back.");
        }

        return ntResult;
    }

}
