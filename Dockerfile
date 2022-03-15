FROM python:3.8.6-buster

# Copy all the files from the project’s root to the working directory
# the trained model
COPY model.joblib /model.joblib
# the code of the project which is required in order to load the model
COPY predict.py /predict.py
# the code of our API
COPY api /app
# the list of requirements
COPY requirements.txt /requirements.txt
COPY TaxiFareModel /TaxiFareModel

# based on a linux distribution
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# running python code
CMD uvicorn api.fast:app --host 0.0.0.0
