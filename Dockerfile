# Step 1: Use Python slim base image
FROM python:3.11-slim

# Step 2: Set working directory inside the image
WORKDIR /app

# Step 3: Copy requirements file first
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install -r requirements.txt

# Step 5: Copy the rest of the application code
COPY hello.py .

# Step 6: Define the command that runs when container starts
CMD ["python", "hello.py"]