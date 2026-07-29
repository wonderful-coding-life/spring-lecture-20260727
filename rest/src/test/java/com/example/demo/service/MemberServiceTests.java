package com.example.demo.service;

import com.example.demo.dto.MemberResponse;
import com.example.demo.entity.Member;
import com.example.demo.repository.MemberRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.bean.override.mockito.MockitoBean;

import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.when;

@SpringBootTest
public class MemberServiceTests {
    @MockitoBean
    private MemberRepository memberRepository;

    @Autowired
    private MemberService memberService;

    @Test
    public void testFindById() {
        when(memberRepository.findById(1L)).thenReturn(
                Optional.of(Member.builder()
                        .id(1L)
                        .name("윤서준")
                        .email("SeojunYoon@hanbit.co.kr")
                        .age(10).build())
        );
        when(memberRepository.findById(2L)).thenReturn(
                Optional.of(Member.builder()
                        .id(2L)
                        .name("윤광철")
                        .email("KwangcheolYoon@hanbit.co.kr")
                        .age(43).build())
        );

        MemberResponse memberResponse = memberService.findById(1L);

        assertThat(memberResponse.getName()).isEqualTo("윤서준");
        assertThat(memberResponse.getAge()).isEqualTo(10);
    }
}
