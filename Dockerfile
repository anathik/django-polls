FROM python:3.7

WORKDIR /app

RUN apt-get update && \
  apt-get install -y postgresql

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]