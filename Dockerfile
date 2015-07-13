FROM python:2.7
MAINTAINER Julio César <j@juliocesar.io>


RUN apt-get update && apt-get install -y \
		mysql-client libmysqlclient-dev \
		postgresql-client libpq-dev \
		sqlite3 \
		gcc \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*


WORKDIR /usr/src/app
COPY . /usr/src/app

RUN pip install --no-cache-dir -r requirements.txt
RUN python manage.py migrate

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
