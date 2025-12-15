package com.kh.board.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import java.time.LocalDateTime;

@Entity
@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "members")
public class Member {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // DB 내부 식별용

    @Column(unique = true, nullable = false)
    private String email; // 로그인 아이디로 사용

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private String name;

    @CreationTimestamp
    private LocalDateTime createdAt;
}