FROM python:3.10-slim


# Set working directory inside container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY src/ /app/src/

# Expose port Flask will run on
EXPOSE 5000

# Run flask app
CMD ["python", "src/app.py"]
