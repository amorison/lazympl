# check style and typing
check-static: lint typecheck

# check style and format
lint:
    uv run -- ruff check --extend-select I .
    uv run -- ruff format --check .

# format code and sort imports
format:
    uv run -- ruff check --select I --fix .
    uv run -- ruff format .

# check static typing annotations
typecheck:
    uv run -- mypy .