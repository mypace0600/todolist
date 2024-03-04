package com.practice.todolist.controller;

import com.practice.todolist.dto.TodoAddDto;
import com.practice.todolist.dto.TodoUpdateDto;
import com.practice.todolist.model.Member;
import com.practice.todolist.model.Todolist;
import com.practice.todolist.service.MemberService;
import com.practice.todolist.service.TodolistService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class TodolistController {
    private final MemberService memberService;
    private final TodolistService todolistService;

    @GetMapping("/todo/register/{memberId}")
    public String register(@PathVariable("memberId") int memberId, Model model){
        model.addAttribute("memberId",memberId);
        return "todoAdd";
    }

    @PostMapping("/todo/add")
    public String registerProc(TodoAddDto todoAddDto){
        todolistService.add(todoAddDto);
        return "redirect:/";
    }

    @GetMapping("/todo/update/{id}")
    public String update(@PathVariable("id") int id, Model model){
        Todolist todo = todolistService.findById(id);
        model.addAttribute("todo",todo);
        return "todoUpdate";
    }

    @PostMapping("/todo/update")
    public String updateProc(TodoUpdateDto todoUpdateDto){
        todolistService.update(todoUpdateDto);
        return "redirect:/";
    }

    @GetMapping("/todo/delete/{id}")
    public String delete(@PathVariable("id") int id){
        todolistService.delete(id);
        return "redirect:/";
    }

}
