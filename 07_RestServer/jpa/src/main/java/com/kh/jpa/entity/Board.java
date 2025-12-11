package com.kh.jpa.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicInsert; // 추가 권장

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Getter
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
@Entity
@Table(name = "BOARD")
@DynamicInsert
public class Board {
    @Id
    @Column(name = "board_no")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long boardNo;

    @Column(name = "board_title", length = 100, nullable = false)
    private String boardTitle;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "board_writer", nullable = false)
    private Member member;

    @Column(name = "board_content", nullable = false)
    @Lob
    private String boardContent;

    @Column(name = "origin_name", length = 100)
    private String originName;

    @Column(name = "change_name", length = 100)
    private String changeName;

    @ColumnDefault("0") // 숫자는 문자열 "0"으로 감싸는 것이 안전
    private Integer count;

    @CreationTimestamp
    @Column(name = "create_date", updatable = false)
    private LocalDateTime createDate;

    @Column(columnDefinition = "char(1) default 'Y' not null check (STATUS in ('Y', 'N'))")
    private String status;

    @OneToMany(mappedBy = "board", cascade = CascadeType.ALL)
    @Builder.Default
    @ToString.Exclude
    private List<Reply> replies = new ArrayList<>();

    @OneToMany(mappedBy = "board", cascade = CascadeType.ALL)
    @Builder.Default
    @ToString.Exclude
    private List<BoardTag> boardTags = new ArrayList<>();
}