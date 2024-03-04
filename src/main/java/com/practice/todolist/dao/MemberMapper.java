package com.practice.todolist.dao;

import com.practice.todolist.model.Member;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
    Member selectMemberById(Long id);
}
