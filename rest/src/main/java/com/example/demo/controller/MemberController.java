package com.example.demo.controller;

import com.example.demo.entity.Member;
import com.example.demo.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MemberController {
    @Autowired
    private MemberRepository memberRepository;

    @PostMapping("/members")
    public Member postMembers(@RequestBody Member member) {
        return memberRepository.save(member);
    }



}
