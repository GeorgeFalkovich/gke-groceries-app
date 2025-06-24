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
    DB_PASSWORD=root \
    DB_NAME=exampledb \
    DB_PORT=3306 \
    CORS_ORIGIN=http://host.docker.internal:3000

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "api.py"]

# docker build -t myapp .
# docker run --rm -it -p 5001:5000 myapp
