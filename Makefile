install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

format:
	black app.py

lint:
	pylint --disable=R,C app.py

test:
	python -m pytest -vvv --cov=app tests/

all: install lint format test