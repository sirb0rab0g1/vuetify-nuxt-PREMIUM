dev:
	@echo "\033[92mStarting an environment for local development...\033[0m"
	npm run dev

clean:
	rm -rf dist

lan: # NEED TO INSTALL PYTHON 3
	python lan.py
