FROM python:3.12
WORKDIR /app
RUN useradd -m appuser
COPY . . 
USER appuser 
COPY --chown=appuser:appuser app.py  . 
RUN pip install -r requirements.txt 
EXPOSE 50001 
CMD ["python", "app.py"]
