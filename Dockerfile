FROM python:3.12
WORKDIR /app 
ENV APP_ENV=development
COPY  requirements.txt .
RUN pip install -r requirements.txt
COPY  app.py .
EXPOSE 5000
CMD ["python", "app.py"] 
