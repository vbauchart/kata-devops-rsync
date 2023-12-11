# kata-devops-rsync

## Simple

```
docker compose up -d --build

docker compose exec prodserver bash

$ rsync -av RH SITE operation@backupserver:./backups/backup_$(date +%F_%T)/
```

## Snapshots

```
docker compose up -d --build

docker exec prodserver bash
$ docker compose exec --build prodserver sauvegarde.sh
```
