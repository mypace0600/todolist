package com.practice.todolist.model;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Member {
    private int id;
    private String name;
}
