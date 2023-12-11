#!/bin/bash

CURRENT_DATE="$(date +%F_%T)"

for source_dir in RH SITE;
do
    rsync -av "/home/simulation/${source_dir}" "operation@backupserver:./backups/${CURRENT_DATE}/" --link-dest=../latest
done