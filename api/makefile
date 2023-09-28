.PHONY: run
run:
	@echo "Running backend..."
	@python3 manage.py makemigrations
	@python3 manage.py migrate
	@python3 manage.py runserver 0.0.0.0:8000

.PHONY: install
install:
	@echo "Installing backend..."
	@poetry install