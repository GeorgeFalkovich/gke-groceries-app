# Use official Python image
FROM python:3.13-slim

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Set environment variables for Flask
ENV FLASK_APP=api.py
ENV FLASK_RUN_HOST=0.0.0.0

# Database config as environment variables
ENV DB_HOST=host.docker.internal \
    DB_USER=root \
    # DB_PASSWORD=root \
    DB_NAME=exampledb \
    DB_PORT=3306 

# Expose port
EXPOSE 3307

# Run the app
CMD ["python", "api.py"]

# docker build -t us-central1-docker.pkg.dev/georgef-sandbox/groceries/groceries-backend-cloud-sql-proxy .
# docker push us-central1-docker.pkg.dev/georgef-sandbox/groceries/groceries-backend-cloud-sql-proxy
