# Cloud OS Hub

Cloud OS Hub is a unified control plane for personal cloud compute. It connects multiple hosts, virtualization environments, shared cloud storage, backups, and app management behind a single dashboard.

## What it includes

- Android lifecycle and APK management
- Windows and Linux VM lifecycle support
- macOS + Xcode simulator integration via remote agents
- Nextcloud-backed shared files and rclone storage integrations
- encrypted, chunked backups and snapshots
- Codespaces-friendly development environment

## Repository structure

- `apps/api` — REST API and WebSocket relay
- `apps/web` — React + Vite dashboard
- `agents/` — host agents for Linux, Windows, and macOS
- `providers/` — virtualization and device providers
- `storage/` — cloud storage, encryption, and chunking
- `database/` — schema and migrations
- `docs/` — references and architecture notes
- `.devcontainer/` — Codespaces support
- `.github/` — CI, instructions, and specialist agents

## Quick start

```bash
./install.sh
npm run dev:api
npm run dev:web
```

The API serves on `http://localhost:3000` and the web dashboard on `http://localhost:5173`.

## Important limitations

- GitHub Codespaces is a development/control environment, not unlimited cloud compute.
- Object storage is not a low-latency block device.
- TeraBox is treated as an archive/backups integration, not a VM disk.
- iOS/iPadOS Simulator requires macOS + Xcode.
- Windows support requires a valid user-provided Windows image/license.
- KVM and GPU availability depend on the host.

## External references

- NebulaVM: https://github.com/robird50/NebulaVM
- tapflow: https://github.com/jo-duchan/tapflow
- nextcloud/server: https://github.com/nextcloud/server
- rclone/rclone: https://github.com/rclone/rclone
- tg-s3: https://github.com/gps949/tg-s3
- rclone-extra: https://github.com/gulp79/rclone-extra
- rclone-terabox: https://github.com/mill-master/rclone-terabox
