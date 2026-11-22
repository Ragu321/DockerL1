FROM python:3.12-slim
WORKDIR /app
RUN apt-get update && \ 
   apt-get install -y curl jq libpq-dev build-essential && \ 
   rm -rf /var/lib/apt/lists/*
RUN groupadd developer  && \
   useradd -m appuser && \
   usermod -aG developer appuser
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
COPY requirements.txt . 
RUN pip install -r requirements.txt 
COPY --chown=appuser:appuser  .  . 
RUN mkdir -p /app/log && \
    chown  appuser:appuser /app/log  && \
    chmod 755 /app/log
USER appuser
EXPOSE 5000
CMD ["python", "app.py"]


