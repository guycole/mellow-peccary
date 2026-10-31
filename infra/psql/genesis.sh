#!/bin/bash
#
# Title:genesis.sh
# Description:
# Development Environment: OS X 12.7.6/postgres 15.8
#
psql -U postgres template1 (or psql -U gsc template1)

# (mac) user
createuser -U gsc -d -e -l -P -r -s peccary_admin
woofwoof
createuser -U gsc -e -l -P peccary_client
batabat

# (linux) su - postgres
createuser -U postgres -d -e -l -P -r -s peccary_admin
woofwoof
createuser -U postgres -e -l -P peccary_client
batabat

# as pg superuser
# create tablespace heeler location '/mnt/pp1/postgres/heeler';
# create tablespace heeler location '/Library/PostgreSQL/pg_tablespace/heeler';
# create tablespace heeler location '/usr/local/opt/postgresql@15/pg_tablespace/heeler';
# create tablespace heeler location '/mnt/pg_tablespace/heeler'
#
#createdb peccary -O peccary_admin -D peccary -E UTF8 -T template0 -l C
createdb peccary -O peccary_admin -E UTF8 -T template0 -l C

# psql -h localhost -p 5432 -U peccary_admin -d peccary
# psql -h localhost -p 5432 -U peccary_client -d peccary

# as peccary_admin
#create schema peccary_v1;
#grant usage on schema peccary_v1 to peccary_client;

##
## old stuff
##
#create user peccary_client with encrypted password 'batabat';
#create database peccary owner peccary_admin tablespace peccary locale 'C.utf8' template template0;
#create database peccary owner peccary_admin locale 'C.utf8' template template0;

#create role peccary_py with login;
#alter role peccary_py with password 'bogus';

#psql -U peccary_py -d peccary_v1
