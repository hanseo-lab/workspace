package com.kh.jpa.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Getter
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
@Entity
@Table(name = "MEMBER")
@DynamicInsert
public class Member {

    @Id
    @Column(name = "user_id", length = 30)
    private String userId;

    @Column(name = "user_pwd", length = 100, nullable = false)
    private String userPwd;

    @Column(name = "user_name", length = 15, nullable = false)
    private String userName;

    @Column(length = 254)
    private String email;

    @Column(length = 1, columnDefinition = "char(1) check (gender in ('M', 'F'))")
    private String gender;

    @Column
    private Integer age;

    @Column(length = 13)
    private String phone;

    @Column(length = 100)
    private String address;

    @CreationTimestamp
    @Column(name = "enroll_date", updatable = false)
    private LocalDateTime enrollDate;

    @UpdateTimestamp
    @Column(name = "modify_date")
    private LocalDateTime modifyDate;

    @Column(columnDefinition = "char(1) default 'Y' not null check (STATUS in ('Y', 'N'))")
    private String status;

    @OneToOne(mappedBy = "member", fetch = FetchType.LAZY)
    @ToString.Exclude
    private Profile profile;

    @OneToMany(mappedBy = "member")
    @Builder.Default
    @ToString.Exclude
    private List<Notice> notices = new ArrayList<>();

    @OneToMany(mappedBy = "member")
    @Builder.Default
    @ToString.Exclude
    private List<Board> boards = new ArrayList<>();

    @OneToMany(mappedBy = "member")
    @Builder.Default
    @ToString.Exclude
    private List<Reply> replies = new ArrayList<>();
}