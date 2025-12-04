#!/bin/env bash

UV_PROJECT_ENVIRONMENT=".venv"

if [[ "$(hostname)" == "cascade"* ]]; then
  ## cluster
  echo "cascade"
  UV_PROJECT_ENVIRONMENT=".venv-cascade"
elif [[ "$(hostname)" == "pop-desktop" ]]; then
  echo "local ws"
elif [[ "$(hostname)" == "pop-laptop" ]]; then
  # laptop
  :
elif [[ "$(hostname)" == "pop-os" ]]; then
  # laptop
  :
else
  ## workstation
  # source /sw/mbm/buhrjk/venvs/qmmm/bin/activate
  UV_PROJECT_ENVIRONMENT="/sw/mbm/buhrjk/venvs/qmmm"
fi

source $UV_PROJECT_ENVIRONMENT/bin/activate

export UV_PROJECT_ENVIRONMENT
