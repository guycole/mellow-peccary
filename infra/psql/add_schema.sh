#!/bin/bash
#
# Title:add_schema.sh
# Description:
# Development Environment: OS X 10.15.2/postgres 12.12
# Author: G.S. Cole (guy at shastrax dot com)
#
# psql -U heeler_py -d heeler
#
export PGDATABASE=peccary
export PGHOST=localhost
export PGPASSWORD=woofwoof
export PGUSER=peccary_admin
#
#psql < daily_score.psql
psql < geo_loc.psql
psql < heeler_load_log.psql
#psql < wap.psql
#psql < observation.psql
#
