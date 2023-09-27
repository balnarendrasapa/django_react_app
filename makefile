.PHONY: run_frontend
run_frontend:
	@echo "Running frontend..."
	@cd frontend && npm run dev

.PHONY: install_frontend
install_frontend:
	@echo "Installing frontend..."
	@cd frontend && npm install

.PHONY: install_backend
install_backend:
	@echo "Installing backend..."
	pip install poetry
	poetry install

.PHONY: install
install: install_frontend install_backend