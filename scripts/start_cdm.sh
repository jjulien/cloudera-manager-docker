#!/bin/bash

/usr/sbin/sshd-keygen
/sbin/sshd

/etc/init.d/cloudera-scm-server-db start
/etc/init.d/cloudera-scm-server start

sleep infinity
