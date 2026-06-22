package com.exam.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Table(name = "exams")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Exam {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String courseName;

    @Column(nullable = false)
    private String courseCode;

    @Column(nullable = false)
    private LocalDateTime scheduledDateTime;

    @Column(nullable = false)
    private Integer durationMinutes;

    @Column(nullable = false)
    private String location;

    @Column(nullable = false)
    private Integer totalQuestions;

    @Column(nullable = false)
    private Double totalMarks;
}