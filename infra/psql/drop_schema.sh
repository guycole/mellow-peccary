#!/bin/bash
#
# Title:drop_schema.sh
# Description: remove schema
# Development Environment: OS X 10.15.2/postgres 12.12
# Author: G.S. Cole (guy at shastrax dot com)
#
export PGDATABASE=peccary
export PGHOST=localhost
export PGPASSWORD=woofwoof
export PGUSER=peccary_admin
#
#psql $PGDATABASE -c "drop table peccary_daily_score"
#psql $PGDATABASE -c "drop table peccary_observation"
psql $PGDATABASE -c "drop table heeler_load_log"
psql $PGDATABASE -c "drop table peccary_geo_loc"
#psql $PGDATABASE -c "drop table peccary_wap"
#
