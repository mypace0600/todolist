package com.practice.todolist.mapper;

import com.practice.todolist.dto.TodoAddDto;
import com.practice.todolist.dto.TodoUpdateDto;
import com.practice.todolist.model.Todolist;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TodolistMapper {

    List<Todolist> findAll(int id);

    Todolist findById(int id);

    void add(TodoAddDto todoAddDto);

    void update(TodoUpdateDto todoUpdateDto);

    void delete(int id);
}
