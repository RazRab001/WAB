# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container

# Install any needed packages specified in requirements.txt
RUN pip install unicorn pdm

# Copy the rest of your application code into the container
COPY . .

# Expose a port if your application listens on a specific port
# EXPOSE 8080

# Define the command to run your application
CMD ["python", "main.py"]
