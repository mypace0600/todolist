package com.practice.todolist.dto;

import lombok.Data;

@Data
public class TodoUpdateDto {
    private String title;
    private String detail;
    private boolean done;
    private int id;
}
