.PHONY: run_frontend
run_frontend:
	@echo "Running frontend..."
	@cd frontend && npm run dev --host 0.0.0.0:5173

.PHONY: run_backend
run_backend:
	@echo "Running backend..."
	@python3 api/manage.py makemigrations
	@python3 api/manage.py migrate
	@python3 api/manage.py runserver 0.0.0.0:8000

.PHONY: install_frontend
install_frontend:
	@echo "Installing frontend..."
	@cd frontend && npm install

.PHONY: install_backend
install_backend:
	@echo "Installing backend..."
	@cd api && poetry install

.PHONY: install
install: install_frontend install_backend

# .PHONY: run
# run: run_frontend run_backend

# stop server
.PHONY: stopserver
stopserver:
	fuser -k 5173/tcp &