#!/bin/sh -e
# name:         init.sh
# description:  Init script for using a new Axelor Open Suite project 
# author:       Flavien Schriever <f.schriever@axelor.com>

init_boilerplate() {
  check_required_binaries
  mkdir -p webapps axelor_data db_data
  git clone git@github.com:fsc-axelor/open-suite-webapp.git --recurse-submodules
}

check_required_binaries() {
  BINARIES_USED="mkdir git"
  for BIN in $BINARIES_USED; do
    if ! command -v "$BIN" > /dev/null; then
      printf "command '$BIN' could not be found\n" >&2
      exit
    fi
  done
}

init_boilerplate
