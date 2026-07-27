package com.example.demo;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

@Primary
@Component
public class EspressoMachine implements CoffeeMachine {
    @Override
    public String brew() {
        return "Brewing with Espresso coffee machine";
    }
}
