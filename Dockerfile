FROM python:3.7.3-stretch

WORKDIR /opt
EXPOSE 80

## Step 2:
# Copy source code to working directory

COPY ./app.py .
COPY ./requirements.txt .

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013

RUN pip install --no-cache-dir --upgrade pip==22.3 && \
    pip install --no-cache-dir -r requirements.txt

## Step 5:
# Run app.py at container launch

ENV FLASK_APP=app.py

CMD ["flask", "run", "--port", "80", "--host", "0.0.0.0"]
