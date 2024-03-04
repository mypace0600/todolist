package com.practice.todolist.dto;

import lombok.Data;

@Data
public class TodoAddDto {
    private String title;
    private String detail;
    private int memberId;
}
