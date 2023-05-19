FROM python:3.6.15-slim-buster

WORKDIR /python-docker

RUN pip3 install Flask

COPY . .

ENV FLASK_APP="hello.py"

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]