package com.practice.todolist.controller;

import com.practice.todolist.dto.MemberDto;
import com.practice.todolist.model.Member;
import com.practice.todolist.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @GetMapping("/member/join")
    public String join(){
        return "join";
    }

    @PostMapping("/member/register")
    public String register(MemberDto memberDto, Model model){
        System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ "+memberDto.toString());
        memberService.register(memberDto);
        return "main";
    }

    @GetMapping("/member/login")
    public String login(){
        return "login";
    }

    @PostMapping("/member/find")
    public String findByEmail(String email, Model model){
        Member member = memberService.findByEmail(email);
        if(null != member.getName()){
            model.addAttribute("member",member);
        }
        return "main";
    }

}
