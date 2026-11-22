FROM python:3.12
WORKDIR /app
COPY . . 
RUN pip install -r requiremets.txt 
EXPOSE 50001 
CMD ["python", "app.py"]
