package com.example.demo;

import com.example.demo.mapper.MemberMapper;
import com.example.demo.model.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.List;

//@Component
@Slf4j
public class MemberApplication implements ApplicationRunner {
    @Autowired
    private MemberMapper memberMapper;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        Member me = Member.builder().name("김희선").contact("heesunkim@hanbit.co.kr").age(18).build();
        int count = memberMapper.save(me);
        log.info("count = {}", count);
        log.info("me = {}", me);

//        me.setEmail("heesunkim@multicampus.com");
//        me.setAge(19);
//        memberMapper.update(me);

//        memberMapper.updateEmail(5L, "heesunkim@cisco.com");

        memberMapper.deleteById(me.getId());

        //List<Member> members = memberMapper.findAllOrderBy("name", "asc");
        List<Member> members = memberMapper.findByNameLike("%윤%");
        for (Member member : members) {
            log.info("회원 {}", member);
        }

        //test("name", "asc");

//        Member member = memberMapper.findById(3L);
//        log.info("회원 {}", member);
    }

    private void test(String order, String dir) {
        List<Member> members = memberMapper.findAllOrderBy(order, dir);
        for (Member member : members) {
            log.info("회원 {}", member);
        }
    }
}
