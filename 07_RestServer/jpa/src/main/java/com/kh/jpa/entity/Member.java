package com.kh.jpa.entity;

import com.kh.jpa.enums.commonStatus;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "MEMBER")
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AttributeOverride(name = "createDate", column = @Column(name = "ENROLL_DATE"))
@AttributeOverride(name = "modifiedDate", column = @Column(name = "MODIFY_DATE"))
public class Member extends BaseTimeEntity {

    @Id
    @Column(length = 30)
    private String userId;

    @Column(length = 100, nullable = false)
    private String userPwd;

    @Column(length = 15, nullable = false)
    private String userName;

    @Column(length = 255)
    private String email;

    @Column(length = 1)
    @Enumerated(EnumType.STRING)
    private Gender gender;

    private Integer age;

    @Column(length = 13)
    private String phone;

    @Column(length = 100)
    private String address;

    @Column(length = 1)
    @Enumerated(EnumType.STRING)
    private commonStatus status = commonStatus.Y;

    public enum Gender { M, F }

    // --- 연관관계---
    @OneToOne(mappedBy = "member", fetch = FetchType.LAZY)
    private Profile profile;
}