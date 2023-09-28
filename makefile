.PHONY: install
install: 
	@echo "Installing backend..."
	@cd api && make install
	@echo "Installing frontend..."
	@cd frontend && make install

.PHONY: run
run:
	@echo "Running backend..."
	@cd api && nohup make run > ../logapi.txt 2>&1 &
	@echo $$! > logapi.txt
	@echo "Running frontend..."
	@cd frontend && nohup make run > ../logfrontend.txt 2>&1 &
	@echo $$! > logfrontend.txt

.PHONY: stop
stop:
	-kill $$(cat logapi.txt)
	-rm logapi.txt
	-kill $$(cat logfrontend.txt)
	-rm logfrontend.txt
