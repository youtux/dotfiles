# from https://github.com/direnv/direnv/issues/592#issuecomment-856227234
layout_poetry() {
  if [[ ! -f "pyproject.toml" ]]; then
    log_error 'No pyproject.toml found. Use `poetry new` or `poetry init` to create one first.'
    exit 2
  fi

  local VENV="$(poetry env info --path)"
  if [[ -z $VENV || ! -d $VENV/bin ]]; then
    log_error 'No poetry virtual environment found. Use `poetry install` to create one first.'
    exit 2
  fi

  export VIRTUAL_ENV=$VENV
  PATH_add "$VENV/bin"

  export POETRY_ACTIVE=1
}
