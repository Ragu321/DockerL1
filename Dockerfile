FROM python:3.12

WORKDIR /app
RUN apt-get update && \
  apt-get install curl jq unzip && \ 
  rm -rf /apt//var/lib/apt/lists/*
COPY requirements.txt . 
RUN pip install -r  requirements.txt 
COPY --chown=appuser:appuser . .
CMD ["python", "app.py"]
