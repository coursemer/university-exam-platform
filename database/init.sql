CREATE TABLE IF NOT EXISTS students (
    id BIGSERIAL PRIMARY KEY,
    student_number VARCHAR(50) NOT NULL UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL,
    program VARCHAR(100) NOT NULL,
    semester INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS exams (
    id BIGSERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    course_code VARCHAR(50) NOT NULL,
    scheduled_date_time TIMESTAMP NOT NULL,
    duration_minutes INTEGER NOT NULL,
    location VARCHAR(255) NOT NULL,
    total_questions INTEGER NOT NULL,
    total_marks DECIMAL(5, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS student_exams (
    student_id BIGINT NOT NULL REFERENCES students(id),
    exam_id BIGINT NOT NULL REFERENCES exams(id),
    PRIMARY KEY (student_id, exam_id)
);

CREATE INDEX IF NOT EXISTS idx_students_email ON students(email);
CREATE INDEX IF NOT EXISTS idx_exams_course_code ON exams(course_code);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO exam_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO exam_user;