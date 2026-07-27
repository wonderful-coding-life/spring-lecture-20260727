package com.example.demo;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class LombokApplication implements ApplicationRunner {
    @Override
    public void run(ApplicationArguments args) throws Exception {
        Product product = Product.builder()
                .price(10000)
                .description("삼성이 만든 태블릿")
                .build();
        log.trace("product = " + product);
        log.debug("product = " + product);
        log.info("product = " + product);
        log.warn("product = " + product);
        log.error("product = " + product);

    }
}
