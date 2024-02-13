#!/bin/bash

database="monstersdb"

echo "Configurating database: $database"

dropdb -U node_user monsterdb
createdb -U node_user monsterdb

psql -U node_user < ./bin/sql/monsters.sql

echo "$database configured"