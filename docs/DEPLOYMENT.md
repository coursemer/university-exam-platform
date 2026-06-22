# Deployment Guide

## Local Deployment with Docker

### Prerequisites
- Docker & Docker Compose
- Port 3000, 8080, 5432 available

### Quick Start
```bash
docker-compose up -d
```

### Access
- Frontend: http://localhost:3000
- Backend: http://localhost:8080/api
- Database: localhost:5432

## Environment Variables

Create `.env` file:
```
DB_USER=exam_user
DB_PASSWORD=exam_password_secure_123
JWT_SECRET=your_secret_key
```