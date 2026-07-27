package com.example.demo;

import com.example.demo.mapper.MemberMapper;
import com.example.demo.model.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Slf4j
public class MyBatisApplication implements ApplicationRunner {
    @Autowired
    private MemberMapper memberMapper;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        List<Member> members = memberMapper.findAll();
        for (Member member : members) {
            log.info("회원 {}", member);
        }

        Member member = memberMapper.findById(3L);
        log.info("회원 {}", member);
    }
}
