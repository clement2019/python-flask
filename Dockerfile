FROM python:alpine
ADD . /app
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5002
ENTRYPOINT ["python","./app.py"]