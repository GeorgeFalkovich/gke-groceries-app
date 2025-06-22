# Groceries GKE App

This project is a demo microservices-based application designed to showcase deployment to Google Kubernetes Engine (GKE) while implementing best DevOps practices.

## Overview

- **Frontend:** React app (with Bootstrap styling) for displaying grocery items.
- **Backend:** Python Flask API serving grocery data.
- **Database:** MySQL (cloud-ready, with connection credentials and SQL schema provided).
- **DevOps:** Built for containerization, CI/CD, and scalable deployment on GKE.

## Features

- Microservices architecture (frontend, backend, database are decoupled)
- RESTful API for grocery data
- Modern React UI
- Example SQL schema and cloud proxy scripts
- Ready for cloud deployment (GKE)
- Follows best practices for code organization and environment management

## Getting Started

### Prerequisites

- Docker
- Python 3.13 (for backend)
- Node.js & npm (for frontend)
- MySQL (local or cloud instance)
- Google Cloud SDK (for GKE deployment)

### Local Development

#### Backend

```bash
cd backend
python3 -m venv myenv
source myenv/bin/activate
pip install -r requirements.txt
python api.py
```

#### Frontend

```bash
cd frontend
npm install
npm start
```

#### Database

- Use the SQL in `sql/table.sql` to create the required tables.
- Use `creds/` for connection credentials (do not commit secrets to version control).

### Deployment to GKE

1. Build Docker images for frontend and backend.
2. Push images to Google Container Registry.
3. Use Kubernetes manifests to deploy services and database.
4. Set up CI/CD pipelines (GitHub Actions, Cloud Build, etc.).

## Folder Structure

- `backend/` — Flask API and Python environment
- `frontend/` — React app
- `sql/` — SQL schema and cloud proxy scripts
- `creds/` — Example credentials (do not commit real secrets)

## Best Practices

- Environment variables for secrets/configuration
- Separate Dockerfiles for each service
- Linting and testing in CI
- Infrastructure as Code (Kubernetes YAML)
- Minimal, production-ready containers

## License

This project is for demonstration and educational purposes.
