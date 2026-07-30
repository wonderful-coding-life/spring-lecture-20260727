package com.example.demo.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
public class HomeController {
    @GetMapping
    public String getHome(Model model) {
        model.addAttribute("memberId", 12);
        model.addAttribute("keyword", "김");
        return "home";
    }

    @GetMapping("/member/info/{id}")
    public String getMember(
            @PathVariable("id") Long id,
            @RequestParam("keyword") String keyword) {

        log.info("조회할 회원 아이디 {}", id);
        log.info("키워드 {}", keyword);

        return "home";
    }
}
