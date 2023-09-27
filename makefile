.PHONY: run_frontend
run_frontend:
	@echo "Running frontend..."
	@cd Frontend && npm run dev

.PHONY: install_frontend
install_frontend:
	git config --global --add safe.directory /workspace
	@echo "Installing frontend..."
	@cd Frontend && npm install

.PHONY: install_backend
install_backend:
	@echo "Installing backend..."
	pip install poetry
	poetry install

.PHONY: install
install: install_frontend install_backend