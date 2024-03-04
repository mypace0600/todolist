package com.practice.todolist.model;

import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Builder
public class Todolist {

    private int id;
    private String title;
    private String detail;
    private int memberId;
    private boolean done;
    private LocalDateTime registerDt;
    private LocalDateTime updateDt;
}
