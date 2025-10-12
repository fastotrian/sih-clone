# Use a small, official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirement file first for Docker caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the app
COPY . .

# Railway automatically provides a PORT env variable
EXPOSE 5000

# Run Flask using Python
CMD ["python", "Server.py"]
