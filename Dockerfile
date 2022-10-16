FROM python:3.7.3-stretch

WORKDIR /opt

RUN pip install --no-cache-dir --upgrade pip==22.3 && \
    pip install --no-cache-dir -r requirements.txt

COPY ./app.py .
COPY ./requirements.txt .
COPY ./model_data ./model_data

EXPOSE 80

ENV FLASK_APP=app.py

CMD ["flask", "run", "--port", "80", "--host", "0.0.0.0"]
