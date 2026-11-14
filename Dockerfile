FROM python:3.12

WORKDIR /app

RUN pip install -r requirements.txt

COPY requirements.txt .

COPY app.py .

CMD ["python", "app.py"]

