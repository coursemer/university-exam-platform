# University Exam Platform

A comprehensive web application for managing university exams, student registrations, and exam scheduling.

## Features

- **Student Management**: Register and manage student accounts
- **Exam Management**: Create, schedule, and manage exams
- **Exam Scheduling**: Automated conflict-free exam scheduling
- **Student Dashboard**: View exam schedules and results
- **Admin Panel**: Complete administrative controls
- **Real-time Notifications**: Email and SMS notifications
- **Analytics & Reports**: Comprehensive reporting system

## Project Structure

```
university-exam-platform/
├── backend/              # Spring Boot REST API
├── frontend/             # React.js web application
├── database/             # Database schemas and migrations
├── docs/                 # Documentation
└── docker-compose.yml    # Docker configuration
```

## Tech Stack

### Backend
- **Framework**: Spring Boot 3.0+
- **Database**: PostgreSQL 14+
- **API**: RESTful with Swagger/OpenAPI
- **Authentication**: JWT + OAuth2

### Frontend
- **Framework**: React 18+
- **UI Library**: Material-UI (MUI)
- **State Management**: Redux Toolkit
- **Styling**: Tailwind CSS

### Infrastructure
- **Containerization**: Docker & Docker Compose
- **CI/CD**: GitHub Actions
- **Deployment**: AWS/Heroku ready

## Getting Started

### Prerequisites
- Docker & Docker Compose
- Node.js 16+ (for frontend development)
- Java 17+ (for backend development)
- PostgreSQL 14+ (if running locally)

### Quick Start with Docker

```bash
git clone https://github.com/coursemer/university-exam-platform.git
cd university-exam-platform
docker-compose up -d
```

The application will be available at:
- Frontend: http://localhost:3000
- Backend API: http://localhost:8080
- API Documentation: http://localhost:8080/swagger-ui.html

### Local Development Setup

#### Backend
```bash
cd backend
./mvnw spring-boot:run
```

#### Frontend
```bash
cd frontend
npm install
npm start
```

## API Documentation

Swagger UI is available at `/swagger-ui.html` when the backend is running.

## Database

Database schemas are located in `database/schemas/`. Run migrations using:

```bash
./mvnw flyway:migrate
```

## Development Workflow

1. Create a feature branch: `git checkout -b feature/your-feature`
2. Commit changes: `git commit -am 'Add new feature'`
3. Push to branch: `git push origin feature/your-feature`
4. Create a Pull Request

## Testing

```bash
# Backend tests
cd backend
./mvnw test

# Frontend tests
cd frontend
npm test
```

## Deployment

See `docs/DEPLOYMENT.md` for detailed deployment instructions.

## Contributing

Please read `docs/CONTRIBUTING.md` for contribution guidelines.

## License

MIT License - see LICENSE file for details

## Contact

For questions or support, please contact the development team.