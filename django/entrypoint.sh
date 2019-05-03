#!/bin/sh

python manage.py flush --no-input
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --no-input
cd sample_data
cd madrigal
./add_all.sh
cat <(echo "y") - | python manage.py rebuild_index
exec "$@"
