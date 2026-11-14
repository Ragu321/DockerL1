FROM python:3.12

WORKDIR /app
RUN useradd -m appuser 

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app.py .
COPY --chmod appuser:appuser app.py . 
COPY --chmod appuser:appuser  requirements.txt . 

USER appuser

CMD ["python", "app.py"]
