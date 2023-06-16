#!/bin/sh

pwd=`cat ./supersiikret.pw`

mysqldump -uroot -p$pwd cheezburgernet > dumppi.sql

destPC=`cat ./ubuntuconnectioni.txt`
scp dumppi.sql $destPC:~/

rm dumppi.sql
