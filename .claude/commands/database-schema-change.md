---
name: database-schema-change
description: Workflow command scaffold for database-schema-change in chat.
allowed_tools: ["Bash", "Read", "Write", "Grep", "Glob"]
---

# /database-schema-change

Use this workflow when working on **database-schema-change** in `chat`.

## Goal

Adds or modifies database tables/models and keeps proto and code in sync.

## Common Files

- `pkg/common/db/model/*`
- `pkg/common/db/table/*`
- `pkg/common/db/database/*`
- `pkg/proto/*/*.proto`
- `pkg/proto/*/*.pb.go`
- `pkg/proto/*/*.go`

## Suggested Sequence

1. Understand the current state and failure mode before editing.
2. Make the smallest coherent change that satisfies the workflow goal.
3. Run the most relevant verification for touched files.
4. Summarize what changed and what still needs review.

## Typical Commit Signals

- Edit or add model in pkg/common/db/model/*
- Edit or add table definition in pkg/common/db/table/*
- Edit or add database logic in pkg/common/db/database/*
- Update proto definitions if needed in pkg/proto/*/*.proto
- Regenerate proto files (pkg/proto/*/*.pb.go, pkg/proto/*/*.go)

## Notes

- Treat this as a scaffold, not a hard-coded script.
- Update the command if the workflow evolves materially.