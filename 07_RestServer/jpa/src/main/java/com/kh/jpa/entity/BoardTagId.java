package com.kh.jpa.entity;

import lombok.*;
import java.io.Serializable;

@Getter
@Setter
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class BoardTagId implements Serializable {

    private Long board;
    private Long tag;
}