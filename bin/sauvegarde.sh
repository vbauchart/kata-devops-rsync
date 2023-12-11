#!/bin/bash -xe

CURRENT_DATE="$(date +%F_%T)"

echo "Creating target backup directory"
ssh operation@backupserver mkdir "./backups/${CURRENT_DATE}"

for source_dir in RH SITE;
do
    echo "backup ${source_dir}"
    rsync -av --delete "/home/simulation/${source_dir}" "operation@backupserver:./backups/${CURRENT_DATE}/" --link-dest="../latest/" -i
done

echo "Rotate latest"
ssh operation@backupserver rm -f ./backups/latest
ssh operation@backupserver ln -sr "./backups/${CURRENT_DATE}/" ./backups/latest