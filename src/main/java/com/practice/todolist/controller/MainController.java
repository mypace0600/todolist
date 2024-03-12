package com.practice.todolist.controller;

import com.practice.todolist.model.Member;
import com.practice.todolist.model.Todo;
import com.practice.todolist.model.Todolist;
import com.practice.todolist.service.MemberService;
import com.practice.todolist.service.TodolistService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class MainController {

    private final TodolistService todolistService;
    private final MemberService memberService;
    @GetMapping("/")
    public String main(HttpSession session, Model model){
        Integer memberId = (Integer) session.getAttribute("memberId");
        if(memberId != null){
            Member member = memberService.findById(memberId);
            model.addAttribute("member",member);
            List<Todolist> todolist = todolistService.findAll(memberId);
            List<Todo> result = new ArrayList<>();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

            for(Todolist i : todolist){
                String upDt = formatter.format(i.getUpdateDt());
                String regDt = formatter.format(i.getRegisterDt());
                Todo todo = Todo.builder()
                        .id(i.getId())
                        .title(i.getTitle())
                        .detail(i.getDetail())
                        .done(i.isDone())
                        .memberId(i.getMemberId())
                        .registerDt(regDt)
                        .updateDt(upDt)
                        .build();
                result.add(todo);
            }
            model.addAttribute("todolist",result);
        }
        return "main";
    }
}
