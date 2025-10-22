.PHONY: run
run:
	uv run rulesengine/manage.py runserver_plus 0.0.0.0:8000


.PHONY: check
check:
	uv run ruff check
	uv run ruff format --check

.PHONY: format
format:
	uv run ruff check --fix
	uv run ruff format

.PHONY: test
test:
	uv run pytest

.PHONY: fuzz-large
fuzz-large: rulesengine/db.sqlite3
	uv run rulesengine/manage.py loaddata rules/fixtures/fuzzed-large.json

.PHONY: fuzz-small
fuzz-small:
	uv run rulesengine/manage.py loaddata rules/fixtures/fuzzed-large.json

.PHONY: clean
clean: clean-db clean-files

.PHONY: clean-db
clean-db:
	rm -rf rulesengine/db.sqlite3

.PHONY: clean-files
clean-files:
	rm -rf .venv
	find rulesengine/ -name __pycache__ -or -name "*.py[co]" -exec rm -rf {} \;
