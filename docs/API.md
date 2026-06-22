# API Documentation

## Overview
The University Exam Platform API is a RESTful API built with Spring Boot.

## Base URL
```
http://localhost:8080/api
```

## Authentication
All API requests require a JWT token in the Authorization header:
```
Authorization: Bearer <token>
```

## Endpoints

### Students
- POST /students/register - Register new student
- GET /students/me - Get current student profile
- GET /students/{id} - Get student details

### Exams
- GET /exams - Get all exams
- POST /exams - Create new exam
- GET /exams/{id} - Get exam details
- PUT /exams/{id} - Update exam
- DELETE /exams/{id} - Delete exam

### Registration
- POST /exams/{examId}/register - Register for exam
- GET /students/me/exams - Get student's exams