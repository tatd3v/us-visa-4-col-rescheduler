FROM python:3.12.3

WORKDIR /app

# Pip reqs
COPY requirements.txt ./
RUN  pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Install some libs for chromedriver
RUN apt-get update && apt-get install -y chrome

CMD ["python", "src/visa.py"]

# COPY . .