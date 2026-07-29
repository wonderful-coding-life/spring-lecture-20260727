package com.example.demo.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.time.LocalDateTime;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;

@RestControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(NoSuchElementException.class)
    public ResponseEntity<Map<String, Object>> handleNoSuchElementException(
            NoSuchElementException ex,
            HttpServletRequest request) {
        Map<String, Object> body = new LinkedHashMap<>(); // LinkedHashMap은 put한 순서를 보장한다
        body.put("timestamp", LocalDateTime.now());
        body.put("status", 404);
        body.put("path", getPath(request));
        body.put("reason", "없는 정보를 요청하셨습니다.");
        return ResponseEntity.status(404).body(body);
    }

    private String getPath(HttpServletRequest request) {
        String uri = request.getRequestURI();
        String query = request.getQueryString();
        String path = (query == null) ? uri : uri + "?" + query;
        return path;
    }
}
