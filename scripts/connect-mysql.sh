#!/bin/bash

MYSQL_HOST=HostName
MYSQL_PORT=3306
MYSQL_USERNAME=MYSQL_USERNAME
MYSQL_PASSWORD=MYSQL_PASSWORD

mysql -h"${MYSQL_HOST}" -P"${MYSQL_PORT}" -u"${MYSQL_USERNAME}" -p"${MYSQL_PASSWORD}"
