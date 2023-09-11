# Use the official Python image as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local code to the container image
COPY ./main.py /app/main.py

# Install FastAPI and uvicorn
RUN pip install fastapi uvicorn

# Expose port 80 for the FastAPI application
EXPOSE 80

# Command to run the FastAPI application using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]