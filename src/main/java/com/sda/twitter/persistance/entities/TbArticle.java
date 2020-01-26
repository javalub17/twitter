package com.sda.twitter.persistance.entities;

import com.google.gson.annotations.Expose;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "TB_ARTICLE")
public class TbArticle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Expose
    @Column(name = "AR_ID", unique = true, nullable = false)
    private int id;
    @JoinColumn(name = "AR_US_ID", nullable = false)
    @ManyToOne
    @Expose
    private TbUser user;
    @Column(name = "AR_CONTENT", length = 1000)
    @Expose
    private String content;
}
