package com.example.demo.controller;

import com.example.demo.dto.MemberRequest;
import com.example.demo.dto.MemberResponse;
import com.example.demo.entity.Member;
import com.example.demo.repository.MemberRepository;
import com.example.demo.service.MemberService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

@RestController
@Slf4j
public class MemberController {
    @Autowired
    private MemberRepository memberRepository;
    @Autowired
    private MemberService memberService;

//    @PostMapping("/members")
//    @ResponseStatus(HttpStatus.CREATED)
//    public MemberResponse postMembers(@RequestBody MemberRequest memberRequest) {
//        return memberService.subscribe(memberRequest);
//    }

    @PostMapping("/members")
    @ResponseStatus(HttpStatus.CREATED)
    public List<MemberResponse> postMembers(@RequestBody List<MemberRequest> memberRequests) {
        return memberService.subscribeBatch(memberRequests);
    }

    @GetMapping("/members")
    public List<MemberResponse> getMembers() {
        return memberService.findAll();
    }

    @GetMapping("/members/{id}")
    public MemberResponse getMemberById(@PathVariable("id") Long id) {
        return memberService.findById(id);
    }

    @PutMapping("/members/{id}")
    public Member putMembers(@PathVariable("id") Long id, @RequestBody Member member) {
        memberRepository.findById(id).orElseThrow();
        member.setId(id);
        return memberRepository.save(member);
    }

    @DeleteMapping("/members/{id}")
    public void deleteMembers(@PathVariable("id") Long id) {
        memberRepository.findById(id).orElseThrow();
        memberRepository.deleteById(id);
    }


}
