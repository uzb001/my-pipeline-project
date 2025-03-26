# Using the official Python image
FROM python:3.12.2

# Set up a working directory inside the container
WORKDIR /app

# Copy the dependencies file to the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . .

# Open the port for the application
EXPOSE 5000

# Launch the application
CMD ["python", "app.py"]
