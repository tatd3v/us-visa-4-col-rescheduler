FROM python:3.12.3

WORKDIR /app

# Pip reqs
COPY requirements.txt ./
RUN  pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY visa.py /app/

# COPY . .