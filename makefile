.PHONY: install
install: 
	@echo "Installing backend..."
	@cd api && make install
	@echo "Installing frontend..."
	@cd frontend && make install

