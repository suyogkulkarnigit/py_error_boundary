MAKEFLAGS += --silent
PYTHON_CMD ?= $(shell command -v python3 || command -v python)


setup:
	$(PYTHON_CMD) setup.py sdist

clean-setup:
	@echo "Cleaning up the setup..."
	$(PYTHON_CMD)  setup.py clean --all
	rm -rf dist *.egg-info
