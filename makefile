.PHONY: run_frontend
run_frontend:
	@echo "Running frontend..."
	@cd Frontend && npm run dev

.PHONY: install_frontend
install_frontend:
	@echo "Installing frontend..."
	@cd Frontend && npm install