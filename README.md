# kata-devops-rsync

## Problem Statment

We want to put in place a backup of files on some servers. We want to keep modified version of files .

## Part 1 - Simple implementation

Using only standard commands like `rsync`, `ssh` and `bash`, you have to backup some directories on 3 serveurs into a backup serveur.

The backup job will run once a day

```mermaid
flowchart LR
    A[Backup Server] <-- B[Server Data 1]
    A <-- C[Server Data 2]
    A <-- D[Server Data 3]
```
