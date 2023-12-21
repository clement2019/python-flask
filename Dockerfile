FROM python:3.10.0-alpine-3.15
ADD . /app
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 5002
ENTRYPOINT ["python","./app.py"]