FROM python:3.12

WORKDIR /app
RUN useradd -m appuser 
ENV APP_ENV=production
COPY requirements.txt . 
RUN pip install -r  requirements.txt 
COPY src ./src 
COPY --chown=appuser:appuser . .
RUN pip install -r requirements.txt
USER appuser
CMD ["python", "app.py"]
