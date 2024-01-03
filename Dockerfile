FROM python:alpine
ADD . /app
WORKDIR /app
COPY requirement.txt .
RUN pip install --upgrade pip
RUN pip install -r requirement.txt
EXPOSE 5002
ENTRYPOINT ["python","./app.py"]