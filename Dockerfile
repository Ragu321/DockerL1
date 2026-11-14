FROM python:3.12

WORKDIR /app

COPY requirements.txt .

RUN pip install requirements.txt

COPY app.py .

EXPOSE 5000

CMD ["Python", "app.py"]
