package com.koreait.email;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class BasicController {

    @GetMapping("/mypage")
    public void mypage() {

    }

    @GetMapping("/join")
    public void join() {}

    @GetMapping("/email")
    public void email() {}
}
