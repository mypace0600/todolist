package com.practice.todolist.controller;

import com.practice.todolist.dto.MemberDto;
import com.practice.todolist.model.Member;
import com.practice.todolist.model.Todolist;
import com.practice.todolist.service.MemberService;
import com.practice.todolist.service.TodolistService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

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
        Boolean checkEmail = memberService.checkEmail(memberDto.getEmail());
        if(!checkEmail) {
            memberService.register(memberDto);
            return "redirect:/";
        } else {
            model.addAttribute("emailExists",true);
            return "join";
        }

    }

    @GetMapping("/member/login")
    public String login(){
        return "login";
    }

    @PostMapping("/member/find")
    public String findByEmail(String email, HttpSession session){
        Member member = memberService.findByEmail(email);
        if(null != member.getName()){
            session.setAttribute("memberId",member.getId());
            return "redirect:/";
        }
        else {
            return "login";
        }
    }

    @GetMapping("/member/logout")
    public String logout(HttpSession httpSession){
        httpSession.invalidate();
        return "redirect:/";
    }

}
