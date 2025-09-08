# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies for mysqlclient


# Copy requirements and install Python packages
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy project files
COPY . .


CMD ["sh", "-c", "python manage.py migrate", "sleep 10 && python3 manage.py runserver 0.0.0.0:8000"]

