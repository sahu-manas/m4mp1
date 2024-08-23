#pull python base image

FROM python:3.12

ADD bikeshare_model_api bikeshare_model_api 

WORKDIR /bikeshare_model_api

RUN pip install --upgrade pip

RUN pip install -r requirements.txt 

EXPOSE 8001

CMD ["python", "app/main.py"]


