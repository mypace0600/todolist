package com.practice.todolist.service;

import com.practice.todolist.dto.TodoAddDto;
import com.practice.todolist.dto.TodoUpdateDto;
import com.practice.todolist.mapper.TodolistMapper;
import com.practice.todolist.model.Todolist;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TodolistService {

    private final TodolistMapper todolistMapper;

    public List<Todolist> findAll(int id) {
        return todolistMapper.findAll(id);
    }

    public Todolist findById(int id) {
        return todolistMapper.findById(id);
    }

    public void add(TodoAddDto todoAddDto) {
        todolistMapper.add(todoAddDto);
    }

    public void update(TodoUpdateDto todoUpdateDto) {
        todolistMapper.update(todoUpdateDto);
    }

    public void delete(int id) {
        todolistMapper.delete(id);
    }
}
