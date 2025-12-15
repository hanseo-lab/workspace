package com.kh.board.service;

import com.kh.board.entity.Member;
import com.kh.board.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;

    public Member login(String email, String password) {
        return memberRepository.findByEmailAndPassword(email, password)
                .orElseThrow(() -> new IllegalArgumentException("이메일 또는 비밀번호가 잘못되었습니다."));
    }

    @Transactional
    public Member signup(Member member) {
        if (memberRepository.findByEmail(member.getEmail()).isPresent()) {
            throw new IllegalArgumentException("이미 존재하는 이메일입니다.");
        }
        return memberRepository.save(member);
    }
}