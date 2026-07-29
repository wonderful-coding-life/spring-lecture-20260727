package com.example.demo.controller;

import com.example.demo.dto.ArticleRequest;
import com.example.demo.dto.ArticleResponse;
import com.example.demo.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.*;

@RestController
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    @PostMapping("/articles")
    public ArticleResponse postArticles(@RequestParam("memberId") Long memberId, @RequestBody ArticleRequest articleRequest) {
        return articleService.create(memberId, articleRequest);
    }

    @GetMapping("/articles")
    public Page<ArticleResponse> getArticles(@PageableDefault(page=0, size=5, sort="id", direction=Sort.Direction.DESC) Pageable pageable) {
        return articleService.findAll(pageable);
    }
}
