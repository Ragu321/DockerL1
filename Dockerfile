FROM python:3.12

WORKDIR /app
RUN useradd -m appuser 

COPY . . 

RUN pip install -r requirements.txt

COPY --chown=appuser:appuser app.py .
COPY --chown=appuser:appuser  requirements.txt .


USER appuser

CMD ["python", "app.py"]
