package com.kh.jpa.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.ArrayList;
import java.util.List;

@Getter
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
@Entity
@Table(name = "TAG")
public class Tag {
    @Id
    @Column(name = "tag_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long tagId;

    @Column(name = "tag_name", length = 30, nullable = false, unique = true)
    private String tagName;

    @OneToMany(mappedBy = "tag")
    @Builder.Default
    @ToString.Exclude
    private List<BoardTag> boardTags = new ArrayList<>();
}