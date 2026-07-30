package com.example.demo.controller;

import com.example.demo.dto.MemberForm;
import com.example.demo.entity.Member;
import com.example.demo.repository.MemberRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Objects;

@Controller
public class MemberController {
    @Autowired
    private MemberRepository memberRepository;

    @GetMapping("/signup")
    public String getSignup(@ModelAttribute("memberForm") MemberForm memberForm) {
        return "signup";
    }

    @PostMapping("/signup")
    public String postSignup(@Valid @ModelAttribute("memberForm") MemberForm memberForm, BindingResult bindingResult) {

        if (!Objects.equals(memberForm.getPassword(), memberForm.getPasswordConfirm())) {
            bindingResult.rejectValue("passwordConfirm", "error.signup.password.mismatch", "비밀번호가 일치하지 않습니다.");
        }

        if (memberRepository.findByEmail(memberForm.getEmail()).isPresent()) {
            bindingResult.rejectValue("email", "already.exist", "사용중인 이메일 입니다.");
        }

        if (bindingResult.hasErrors()) {
            return "signup";
        }

        var member = Member.builder()
                .name(memberForm.getName())
                .email(memberForm.getEmail())
                .age(memberForm.getAge())
                .password(memberForm.getPassword()).build();
        memberRepository.save(member);
        return "redirect:/member/list";
    }


    @GetMapping("/member/list")
    public String getMemberList(Model model) {
        model.addAttribute("members", memberRepository.findAll());
        return "member-list";
    }

    @GetMapping("/member/add")
    public String getMemberAdd() {
        return "member-add";
    }

    @PostMapping("/member/add")
    public String postMemberAdd(Member member) {
        memberRepository.save(member);
        return "redirect:/member/list";
    }

    @GetMapping("/member/edit")
    public String getMemberEdit(@RequestParam("id") Long id, Model model) {
        var member = memberRepository.findById(id).orElseThrow();
        model.addAttribute("member", member);
        return "member-edit";
    }

    @PostMapping("/member/edit")
    public String postMemberEdit(Member member) {
        memberRepository.save(member);
        return "redirect:/member/list";
    }

    @GetMapping("/member/delete")
    public String getMemberDelete(@RequestParam("id") Long id) {
        memberRepository.deleteById(id);
        return "redirect:/member/list";
    }
}
