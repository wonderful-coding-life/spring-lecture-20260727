package com.example.demo.controller;

import com.example.demo.entity.Member;
import com.example.demo.repository.MemberRepository;
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

    @PostMapping("/members")
    @ResponseStatus(HttpStatus.CREATED)
    public Member postMembers(@RequestBody Member member) {
        return memberRepository.save(member);
    }

    @GetMapping("/members")
    public List<Member> getMembers() {
        return memberRepository.findAll();
    }

    @GetMapping("/members/{id}")
    public Member getMemberById(@PathVariable("id") Long id) {
        return memberRepository.findById(id).orElseThrow();
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
