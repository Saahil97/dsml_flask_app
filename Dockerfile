FROM python:3.9-slim-buster

WORKDIR /flask-docker

RUN python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . . 

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]

