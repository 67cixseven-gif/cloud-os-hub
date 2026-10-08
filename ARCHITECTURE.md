# Cloud OS Hub Architecture

Cloud OS Hub is a control-plane project for personal cloud computing. It unifies remote hosts, virtual environments, shared storage, cloud backups, and application workflows behind a single dashboard.

## Phase 1 scope

Phase 1 focuses on the foundation required before provider integrations can be safely added:

- repository structure and monorepo conventions
- database contracts and migration strategy
- API and WebSocket foundation
- authentication model and role boundaries
- host registration and device inventory concepts

## Core architectural model

The project is intentionally layered:

1. Dashboard layer
   - browser-based control plane
   - host and VM inventory
   - storage and backup views
2. API layer
   - REST endpoints for orchestration
   - WebSocket session relay
   - validation and audit trail
3. Agent layer
   - Linux, Windows, and macOS agents
   - outbound-only registration and heartbeats
4. Provider layer
   - QEMU/KVM, Hyper-V, Android, Linux, iOS simulator integration
5. Storage layer
   - Nextcloud, rclone, S3, R2, TG-S3, TeraBox, encrypted chunking

## Design rules

- Keep platform-specific logic isolated behind provider interfaces.
- Treat object storage as object storage; it is not a live VM block device.
- Require host capability detection before enabling KVM or GPU acceleration.
- Model iOS/iPadOS as a remote Apple Simulator, not a generic VM.
- Keep credentials and secrets outside of browser code and repository files.

## Database strategy

The project is SQLite-first and intentionally shaped so it can later move to PostgreSQL. The base schema includes the following concepts:

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

## Security model

The initial phase includes a basic authentication model using secure password hashing and simple token issuance. The implementation is intentionally modest yet extensible:

- password hashing with PBKDF2
- per-user role assignments
- token-based session tracking
- audit logs for sensitive operations
- future OAuth, RBAC enforcement, and secure session delivery can build on this structure

## Implementation status

This file represents the phase-one architecture baseline for Cloud OS Hub. Future phases will add provider-specific implementations, remote display flows, backup and encryption workflows, and the macOS simulator integration layer.
