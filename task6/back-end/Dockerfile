# Use an official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.10-slim

# Set the working directory to /app
WORKDIR /app

# Copy only the requirements.txt first to leverage Docker cache
COPY requirements.txt /app/

# Install Flask using pip. No need for sudo or apt to install pip.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /appp
COPY api.py /app/

# Make port 5252 available to the world outside this container
EXPOSE 5252

# Add a script to run when the container launches
CMD ["python", "./api.py"]

