---
name: add-or-update-api-endpoint
description: Workflow command scaffold for add-or-update-api-endpoint in chat.
allowed_tools: ["Bash", "Read", "Write", "Grep", "Glob"]
---

# /add-or-update-api-endpoint

Use this workflow when working on **add-or-update-api-endpoint** in `chat`.

## Goal

Implements a new API endpoint or updates an existing one, including routing, business logic, and proto definitions.

## Common Files

- `internal/api/*.go`
- `internal/api/router.go`
- `internal/rpc/*/*.go`
- `pkg/common/db/model/*`
- `pkg/common/db/table/*`
- `pkg/common/db/database/*`

## Suggested Sequence

1. Understand the current state and failure mode before editing.
2. Make the smallest coherent change that satisfies the workflow goal.
3. Run the most relevant verification for touched files.
4. Summarize what changed and what still needs review.

## Typical Commit Signals

- Edit or add handler in internal/api/*.go
- Update or add routing in internal/api/router.go
- Implement or update logic in internal/rpc/*/*.go
- Update or add database/model/table files in pkg/common/db/model/*, pkg/common/db/table/*, pkg/common/db/database/*
- Update proto definitions in pkg/proto/*/*.proto

## Notes

- Treat this as a scaffold, not a hard-coded script.
- Update the command if the workflow evolves materially.