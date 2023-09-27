.PHONY: run_frontend
run_frontend:
	@echo "Running frontend..."
	@cd frontend && npm run dev &

.PHONY: run_backend
run_backend:
	@echo "Running backend..."
	@poetry run python api/manage.py makemigrations
	@poetry run python api/manage.py migrate
	@poetry run python api/manage.py runserver

.PHONY: install_frontend
install_frontend:
	@echo "Installing frontend..."
	@cd frontend && npm install

.PHONY: install_backend
install_backend:
	@echo "Installing backend..."
	poetry install

.PHONY: install
install: install_frontend install_backend

.PHONY: run
run: run_frontend run_backend