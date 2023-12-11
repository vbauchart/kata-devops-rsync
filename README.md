# kata-devops-rsync

```
docker compose up -d --build

docker exec prodserver bash

$ ssh operation@backupserver

$ rsync -av RH SITE operation@backupserver:./backups/backup_$(date +%F_%T)/
```