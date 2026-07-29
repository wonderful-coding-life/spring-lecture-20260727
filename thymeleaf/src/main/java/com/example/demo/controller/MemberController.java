package com.example.demo.controller;

import com.example.demo.model.Member;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.time.LocalDateTime;
import java.util.List;

@Controller
public class MemberController {
    @GetMapping("/model")
    public String getModel(Model model) {
        model.addAttribute("greeting", "안녕하세요?");

        var member = Member.builder()
                .id(1L)
                .name("김희선")
                .email("HeesunKim@hanbit.co.kr")
                .age(18).build();
        model.addAttribute("me", member);

        var members = List.of(Member.builder().name("윤서준").email("SeojunYoon@hanbit.co.kr").age(10).build(),
                Member.builder().name("윤광철").email("KwangcheolYoon@hanbit.co.kr").age(43).build(),
                Member.builder().name("공미영").email("MiyeongKong@hanbit.co.kr").age(23).build(),
                Member.builder().name("김도윤").email("DoyunKim@hanbit.co.kr").age(10).build());
        model.addAttribute("members", members);

        var now = LocalDateTime.now();
        model.addAttribute("now", now);

        return "model";
    }

}
