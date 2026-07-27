package com.example.demo;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class ScheduledApplication implements ApplicationRunner {
    @Override
    public void run(ApplicationArguments args) throws Exception {

    }

    @Scheduled(fixedRate = 1000)
    //@Scheduled(cron = "* * 15 * * 0") // 초(0~59), 분(0~59), 시(0~23), 일(1~31), 월(1~12), 요일(0~6 일월화수목금토일), 단위(예 0/10 매10초, 0/5 매5분)
    public void scheduledTask() {
        log.info("scheduledTask...");
    }
}
