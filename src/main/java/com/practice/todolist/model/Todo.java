package com.practice.todolist.model;

import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Builder
public class Todo {

    private int id;
    private String title;
    private String detail;
    private int memberId;
    private boolean done;
    private String registerDt;
    private String updateDt;
}
