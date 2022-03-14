FROM python:3.8.6-buster

COPY api /app
COPY TaxiFareModel /TaxiFareModel
COPY requirements.txt /requirements.txt
COPY model.joblib /model.joblib

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn app.simple:app --host 0.0.0.0
