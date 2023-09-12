.PHONY: run
run: migrate
	python django_api/manage.py runserver 0.0.0.0:8080 &
	uvicorn fastapi_api.main:app --host 0.0.0.0 --reload 

# stop server
.PHONY: stopserver
stopserver:
	fuser -k 8080/tcp

.PHONY: migrate
migrate:
	python django_api/manage.py makemigrations
	python django_api/manage.py migrate