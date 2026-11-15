FROM python:3.12

WORKDIR /app
RUN useradd -m appuser 
COPY .env env
COPY --chown=appuser:appuser . .
RUN pip install -r requirements.txt
USER appuser

CMD ["python", "app.py"]
