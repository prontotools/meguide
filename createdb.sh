#!/bin/bash
# Create DB script

service postgresql start
su -c "createdb $DB_NAME" postgres
