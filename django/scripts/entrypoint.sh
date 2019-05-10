#!/bin/sh

python manage.py flush --no-input
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --no-input
# Adding Sample Data to the database
# cd sample_data
# cd madrigal
# ./add_all.sh
# cd ..
# cd ..
echo y | python manage.py rebuild_index
exec "$@"
