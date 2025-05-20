FROM python:slim

# Set environment variables to prevent Python from writing .pyc files & Ensure Python output is not buffered
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    libgomp1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . . 

RUN pip install --no-cache-dir -e .

RUN python pipeline/training_pipeline.py

EXPOSE 5000

CMD ["python" , "application.py"]