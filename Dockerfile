FROM python:3.12

WORKDIR /app
RUN apt-get install curl && jq && unzip
COPY requirements.txt . 
RUN pip install -r  requirements.txt 
COPY --chown=appuser:appuser . .
CMD ["python", "app.py"]
