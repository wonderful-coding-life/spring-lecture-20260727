package com.example.demo;

import com.example.demo.entity.Article;
import com.example.demo.entity.Member;
import com.example.demo.repository.ArticleRepository;
import com.example.demo.repository.MemberRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import java.util.List;

import static org.springframework.data.domain.Sort.Direction.DESC;

@Component
@Slf4j
public class JpaApplication implements ApplicationRunner {
    @Autowired
    private MemberRepository memberRepository;
    @Autowired
    private ArticleRepository articleRepository;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        List<Member> members = List.of(
                Member.builder().name("윤서준").email("SeojunYoon@hanbit.co.kr").age(10).build(),
                Member.builder().name("윤광철").email("KwangcheolYoon@hanbit.co.kr").age(43).build(),
                Member.builder().name("공미영").email("MiyeongKong@hanbit.co.kr").age(23).build(),
                Member.builder().name("김도윤").email("DoyunKim@hanbit.co.kr").age(10).build()
        );
        memberRepository.saveAll(members);

        var member = memberRepository.findByName("윤서준").getFirst();
        for (int i = 0; i < 100; i++) {
            var article = Article.builder()
                    .title("제목 " + i)
                    .description("본문 " + i)
                    .member(member).build();
            articleRepository.save(article);
        }

        Pageable pageable = PageRequest.of(2, 10, Sort.by(DESC, "id"));
        Page<Article> page = articleRepository.findAll(pageable);
        log.info("number {}", page.getNumber()); // page number
        log.info("numberOfElements {}", page.getNumberOfElements()); // page items
        log.info("totalPages {}", page.getTotalPages());
        log.info("totalElements {}", page.getTotalElements());
        log.info("hasNext {}", page.hasNext());
        log.info("hasPrevious {}", page.hasPrevious());

//        Article article = articleRepository.findById(10L).orElseThrow();
//        log.info("게시글 {}", article);

//        Member me = Member.builder().name("김희선").email("HeesunKim@hanbit.co.kr").age(18).build();
//        memberRepository.save(me);
//
//        me.setEmail("HeesunKim@cisco.com");
//        me.setAge(19);
//        memberRepository.save(me);
//
//        memberRepository.delete(me);

        //members = memberRepository.findAll();
//        members = memberRepository.findAllByOrderByAgeDescNameAsc();
//        for (Member member1 : members) {
//            log.info("회원 {}", member1);
//        }
    }
}
