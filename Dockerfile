FROM python:3.12

WORKDIR /app

RUN useradd -m appuser

USER appuser
RUN chmod 777:appuser ./requirements.txt 

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]
