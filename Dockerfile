# Use a Python 3.10 slim image as the base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy only the requirements file first to leverage Docker's cache
COPY requirements.txt /app/requirements.txt

# Install the Python dependencies from requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application files into the container
COPY . /app

# Expose the port that the application will run on
EXPOSE 8000

# Set an environment variable for Python to prevent buffering
ENV PYTHONUNBUFFERED=1

# Run the application using Uvicorn (adjust app:app to match your entry point)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
