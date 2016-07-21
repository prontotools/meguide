#!/bin/bash
# Create DB script

python manage.py migrate
python manage.py test
python manage.py runserver 0.0.0.0:3000
