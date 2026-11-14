FROM python:3.12

WORKDIR /app

COPY requirements.txt

RUN pip install requirements.txt

COPY app.py .

EXPOSE

CMD ["Python", "app.py"]
