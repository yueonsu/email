package com.koreait.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.mail.internet.MimeMessage;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

@Controller
@RequestMapping("/email")
public class EmailController {
    @Autowired
    private JavaMailSenderImpl mailSender;

    @PostMapping("/send")
    @ResponseBody
    public Map<String, Integer> prepare(@RequestBody EmailVo email) throws Exception {
        MimeMessage mm = mailSender.createMimeMessage();
        String from = "yueonsu@gmail.com";
        String to = email.getEmail();
        String subject = "이메일인증";

        Random random = new Random();
        String ctnt = "";
        for(int i=0; i<6; i++) {
            String ran = Integer.toString(random.nextInt(10));
            ctnt += ran;
        }

        MimeMessageHelper helper = new MimeMessageHelper(mm,"UTF-8");
        helper.setFrom(from);
        helper.setTo(to);
        helper.setSubject(subject);
        helper.setText(ctnt);

        mailSender.send(mm);
        Map<String, Integer> result = new HashMap<>();
        result.put("result", Integer.parseInt(ctnt));
        return result;
    }
}
