#!/bin/bash
#
# Creates the test databases.
#
# This script requires a MySQL service, with the default super user, where the test 
# databases will be created.

set -o nounset
set -e

# MySQL tables
mysql -e "create database IF NOT EXISTS spring_mvc_react_archetype_example;" -uroot

# PostgreSQL tables
psql -c 'create database spring_mvc_react_archetype_example;' -U postgres

exit 0