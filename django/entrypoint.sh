#!/bin/sh

python manage.py flush --no-input
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --no-input
./sample_data/madrigal/add_all.sh
python manage.py rebuild_index
exec "$@"
