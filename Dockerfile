FROM python:3.12

WORKDIR /app
RUN apt-get update -y && \
   apt-get install  curl jq unzip libpq-dev  build-essential && \ 
   rm -rf /var/lib/apt/lists/*
RUN curl --version

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
