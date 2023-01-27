FROM python:3.9

RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app
COPY ingest_data.py ingest_data.py
COPY yellow_tripdata_2021-01.csv /app
COPY yellow_tripdata_2019-01.csv /app
COPY green_tripdata_2019-01.csv /app

ENTRYPOINT [ "python", "ingest_data.py"]
