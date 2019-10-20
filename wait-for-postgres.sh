#!/bin/sh
# wait-for-postgres.sh

set -e

host="$1"
shift
cmd="$@"

echo $PG_USER
echo $PG_PASSWORD
echo $host

until PGPASSWORD=$PG_PASSWORD psql -h "$host" -U "$PG_USER" -d "$PG_DB_NAME" -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"
exec $cmd