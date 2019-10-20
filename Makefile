build:
	docker build -t polls .

migrate:
	docker-compose run app ./wait-for-postgres.sh db python manage.py migrate