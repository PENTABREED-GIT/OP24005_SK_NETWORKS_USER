package com.skn.user.global.service;

import io.swagger.v3.oas.models.examples.Example;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import com.skn.user.util.NTResult;

@Profile("!local")
@Slf4j
@Service
@RequiredArgsConstructor
public class EmailService {
    private final JavaMailSender javaMailSender;
    private final Environment env;
    private static final Logger logger = LoggerFactory.getLogger(Example.class);

    @Value("${skn.mail.send.address}")
    private String replyAddress;


    /**
     * Utility method to send simple HTML email
     * @param subject
     * @param body
     */
    public NTResult sendEmail(String classification, String date, String subject, String body) {
        logger.debug("START sendEmail SERVICE  :::::::::::::::::::::::::::");
        NTResult ntResult = new NTResult();
        try {
            MimeMessage message = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

            if ("proposal".equals(classification)) {
                classification = "제안";
            } else {
                classification = "문의";
            }
            String contentBody = "분류: " + classification + "\n" + "제목: " + subject + "\n" + "일시: " + date + "\n" + "내용: " + body;

            // 수신자 주소 설정
            helper.setTo("ybjun@sk.com");
            // 발신자 주소 설정
            helper.setFrom(replyAddress);
            // 이메일 제목 설정
            helper.setSubject("고객문의가 등록되었습니다");
            // 이메일 본문 설정
            helper.setText(contentBody, false);


            // [25.05.15] 고객문의 접수 시 >> 이전 관리자한테 메일 전송 X
//            javaMailSender.send(message);

            logger.debug("EMail Sent Successfully!!  :::::::::::::::::::::::::::");
            ntResult.setSuccess();
        } catch (Exception e) {
            // 예외 처리: 예외 로그 및 NTResult에 실패 상태 설정
            logger.error("Error while sending email to {}: {}", replyAddress, e.getMessage(), e);
            ntResult.setFail();
            ntResult.setResultCode("SEND_FAIL");
            ntResult.setMsg("Failed to send email due to: " + e.getMessage());
        }

        return ntResult;
    }
}
