# Use an official Python runtime as the base image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Download and install killall 
RUN apt-get update && apt-get install -y \
    psmisc

# Install make
RUN apt-get update && apt-get install -y make

# Copy the poetry.lock and pyproject.toml files to the container
COPY . /app/

# Install dependencies using Poetry
RUN pip install poetry uvicorn && \
    poetry config virtualenvs.create false && \
    poetry install --with django,fastapi

EXPOSE 8080
EXPOSE 8000

CMD ["make", "run"]