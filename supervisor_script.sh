#!/bin/bash

export CV3_PORT=31416
sudo /home/travis/.local/bin/gunicorn --bind 0.0.0.0:$CV3_PORT restapi:app
