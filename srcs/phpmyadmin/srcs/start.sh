#!/bin/sh

# Start Telegraf and phpMyAdmin.
# php --help (-S, --server; Start the internal web server / -t, --docroot; Specify the root of the document for the internal web server).
/usr/bin/supervisord -c /etc/supervisord.conf