package com.kh.jpa.entity;

import com.kh.jpa.enums.commonStatus;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;
import java.util.ArrayList;
import java.util.List;

@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "BOARD")
public class Board extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long boardNo;

    @Column(length = 100, nullable = false)
    private String boardTitle;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BOARD_WRITER", nullable = false)
    private Member member;

    @Lob
    @Column(nullable = false)
    private String boardContent;

    @Column(length = 100)
    private String originName;

    @Column(length = 100)
    private String changeName;

    @ColumnDefault("0")
    private Integer count;

    @Column(length = 1)
    @Enumerated(EnumType.STRING)
    private commonStatus status = commonStatus.Y;

    @OneToMany(mappedBy = "board", cascade = CascadeType.ALL)
    private List<Reply> replies = new ArrayList<>();

    @OneToMany(mappedBy = "board", cascade = CascadeType.ALL)
    private List<BoardTag> boardTags = new ArrayList<>();
}