#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER nextcloud;
    CREATE DATABASE nextcloud_data;
    GRANT ALL PRIVILEGES ON DATABASE nextcloud_data; TO nextcloud;
EOSQL
