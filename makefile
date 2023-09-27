.PHONY: run_frontend
run_frontend:
	@echo "Running frontend..."
	@cd frontend && npm run dev &

.PHONY: run_backend
run_backend:
	@echo "Running backend..."
	@python3 api/manage.py makemigrations
	@python3 api/manage.py migrate
	@python3 api/manage.py runserver

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

# stop server
.PHONY: stopserver
stopserver:
	fuser -k 5173/tcp &