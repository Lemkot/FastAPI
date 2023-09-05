
#frontent/Dockerfile

# Use the official Python 3.9 image as the base image
FROM python:3.9

# Copy the requirements.txt file to the /app directory inside the container
COPY requirements.txt /app/requirements.txt

# Set the working directory to /app
WORKDIR /app

# Install the Python dependencies listed in requirements.txt
RUN pip install -r requirements.txt

# Copy the entire current directory (which contains the source code) to the /app directory inside the container
COPY . /app

# Expose port 8000 for the application to listen on
EXPOSE 8000

# Set the command to run the application using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" , "--reload"]
