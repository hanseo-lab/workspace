package com.kh.jpa.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Getter
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
@Entity
@Table(name = "NOTICE")
public class Notice {
    @Id
    @Column(name = "notice_no")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long noticeNo;

    @Column(name = "notice_title", length = 30, nullable = false)
    private String noticeTitle;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "NOTICE_WRITER", nullable = false)
    private Member member;

    @Column(name = "notice_content", length = 200, nullable = false)
    private String noticeContent;

    @CreationTimestamp
    @Column(name = "create_date", updatable = false)
    private LocalDateTime createDate;
}
