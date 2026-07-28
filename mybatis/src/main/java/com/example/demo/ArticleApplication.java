package com.example.demo;

import com.example.demo.mapper.ArticleMapper;
import com.example.demo.model.Article;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Slf4j
public class ArticleApplication implements ApplicationRunner {
    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        List<Article> articles = articleMapper.findAll();
        for (Article article : articles) {
            log.info("게시글 {}", article);
        }

        log.info("--------");

        Article article = articleMapper.findById(1L);
        log.info("게시글 {}", article);

        log.info("--------");

        Thread.sleep(1000);

        articleMapper.update(article.getId(), "이건 수정된 제목입니다.", "이건 수정된 본문이에요.");
        articles = articleMapper.findAll();
        for (Article article2 : articles) {
            log.info("게시글 {}", article2);
        }
    }
}
