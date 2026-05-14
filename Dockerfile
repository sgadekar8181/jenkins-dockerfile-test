# Use a lightweight Python image[cite: 1]
FROM python:3.9-slim

# Set the working directory[cite: 1]
WORKDIR /app

# Copy the requirements file first to leverage Docker caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application[cite: 1]
COPY app.py .

# Tell Docker the container uses port 5000
EXPOSE 5000

# Start the Flask app[cite: 1]
CMD ["python", "app.py"]
