# Database design

Cloud OS Hub uses SQLite as the initial persistence layer and is intentionally shaped so it can be migrated to PostgreSQL later without major schema redesign.

## Core tables

- users
- sessions
- hosts
- agents
- vms
- devices
- storage_providers
- files
- backups
- snapshots
- applications
- audit_logs
- settings

## Design principles

- Keep host metadata flexible in JSON strings where needed.
- Treat file records as logical metadata, not as a storage backend implementation.
- Record all sensitive operational events in `audit_logs`.
- Separate active VM data from object-storage backups.
