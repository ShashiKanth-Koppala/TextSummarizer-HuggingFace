install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

test:
	python -m pytest -vvv --cov=hello --cov=greeting \
	--cov=smath --cov=web tests
	python -m pytest --nbval notebook.ipynb
	# python -m pytest -v tests/test_web.py

debug:
	python -m pytest -vv --pdb

debugthree:
	# not working the way I expect
	python -m pytest -vv --pdb --maxfail=4  # drop to PDB for first three failures

format:
	black *.py

lint:
	pylint --disable=R,C *.py

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name4

all: install lint test format

