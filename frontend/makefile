.PHONY: run
run:
	@echo "Running frontend..."
	@npm run dev --host 0.0.0.0:5173

.PHONY: install
install:
	@echo "Installing frontend..."
	@npm install

.PHONY: stopserver
stopserver:
	fuser -k 5173/tcp &