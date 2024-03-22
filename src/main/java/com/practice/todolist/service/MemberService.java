package com.practice.todolist.service;

import com.practice.todolist.mapper.MemberMapper;
import com.practice.todolist.dto.MemberDto;
import com.practice.todolist.model.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberMapper memberMapper;

    public void register(MemberDto memberDto) {
        memberMapper.register(memberDto);
    }

    public Member findByEmail(String email) {
        return memberMapper.findByEmail(email);
    }

    public Member findById(int memberId) {
        return memberMapper.findById(memberId);
    }

    public Boolean checkEmail(String email) {
        Member member = memberMapper.findByEmail(email);
        if(null != member){
            return true;
        } else {
            return false;
        }
    }
}
