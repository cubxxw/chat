```markdown
# chat Development Patterns

> Auto-generated skill from repository analysis

## Overview

This skill teaches you the core development patterns and workflows used in the `chat` Go codebase. You'll learn the project's coding conventions, how to add or update API endpoints, manage database schema changes, maintain scripts, update dependencies, modify configuration, and handle proto definition changes. Each workflow is documented with step-by-step instructions and example commands to streamline your contributions.

## Coding Conventions

**File Naming**
- Use `camelCase` for file names.
  - Example: `searchFriend.go`, `userModel.go`

**Import Style**
- Use relative imports within the module.
  - Example:
    ```go
    import (
        "internal/api"
        "pkg/common/db/model"
    )
    ```

**Export Style**
- Use named exports for functions, types, and variables.
  - Example:
    ```go
    // Exported function
    func SearchFriendHandler(w http.ResponseWriter, r *http.Request) { ... }
    ```

**Commit Patterns**
- Prefix commits with `feat` or `fix`.
  - Example: `feat: add search friend endpoint`
  - Example: `fix: correct user model mapping`

## Workflows

### Add or Update API Endpoint

**Trigger:** When you need to add or modify an API endpoint (e.g., SearchFriend, admin APIs).  
**Command:** `/new-api-endpoint`

1. Edit or add the handler in `internal/api/*.go`.
2. Update or add routing in `internal/api/router.go`.
3. Implement or update business logic in `internal/rpc/*/*.go`.
4. Update or add database/model/table files in:
    - `pkg/common/db/model/*`
    - `pkg/common/db/table/*`
    - `pkg/common/db/database/*`
5. Update proto definitions in `pkg/proto/*/*.proto`.
6. Regenerate proto files:
    - `pkg/proto/*/*.pb.go`
    - `pkg/proto/*/*.go`

**Example:**
```go
// internal/api/searchFriend.go
func SearchFriendHandler(w http.ResponseWriter, r *http.Request) {
    // handler logic
}
```

### Database Schema Change

**Trigger:** When you need to add a new table/model or modify an existing one.  
**Command:** `/db-schema-change`

1. Edit or add models in `pkg/common/db/model/*`.
2. Edit or add table definitions in `pkg/common/db/table/*`.
3. Edit or add database logic in `pkg/common/db/database/*`.
4. Update proto definitions in `pkg/proto/*/*.proto` if needed.
5. Regenerate proto files:
    - `pkg/proto/*/*.pb.go`
    - `pkg/proto/*/*.go`

**Example:**
```go
// pkg/common/db/model/userModel.go
type User struct {
    ID   int64
    Name string
}
```

### Script Maintenance and Improvement

**Trigger:** When you need to fix, enhance, or add scripts for local/devops automation.  
**Command:** `/update-script`

1. Edit or add scripts in `scripts/*.sh`, `scripts/*.bat`, `scripts/*.cmd`.
2. Optionally update `Makefile` or `Dockerfile` if related to build/start process.
3. Optionally update `.github/workflows/*` if related to CI/CD.

**Example:**
```sh
# scripts/build.sh
go build -o bin/chat main.go
```

### Dependency Update

**Trigger:** When you or dependabot need to update third-party dependencies.  
**Command:** `/update-deps`

1. Update `go.mod`.
2. Update `go.sum`.

**Example:**
```sh
go get github.com/new/dependency@latest
go mod tidy
```

### Configuration Update

**Trigger:** When you need to add/change config options or fix config-related bugs.  
**Command:** `/update-config`

1. Edit `config/config.yaml` or `config/config.yaml.template`.
2. Edit config parsing logic in `pkg/common/config/*.go` or `pkg/common/config/parse.go`.
3. Optionally update related constants in `pkg/common/constant/constant.go`.

**Example:**
```yaml
# config/config.yaml
server:
  port: 8080
```

### Proto Definition Change

**Trigger:** When you need to add/change API contracts or data structures shared between services.  
**Command:** `/update-proto`

1. Edit `.proto` files in `pkg/proto/*/*.proto`.
2. Regenerate Go files:
    - `pkg/proto/*/*.pb.go`
    - `pkg/proto/*/*.go`
3. Update business logic to use new/changed proto types.

**Example:**
```proto
// pkg/proto/user/user.proto
message User {
    int64 id = 1;
    string name = 2;
}
```

## Testing Patterns

- **Framework:** Unknown (not explicitly detected).
- **Test File Pattern:** Files matching `*.test.*` (e.g., `user.test.go`).
- **Typical Test Example:**
    ```go
    // user.test.go
    func TestSearchFriend(t *testing.T) {
        // test logic
    }
    ```

## Commands

| Command            | Purpose                                              |
|--------------------|------------------------------------------------------|
| /new-api-endpoint  | Add or update an API endpoint                        |
| /db-schema-change  | Add or modify database tables/models                 |
| /update-script     | Update or fix build/start/devops scripts             |
| /update-deps       | Update Go module dependencies                        |
| /update-config     | Modify configuration files or parsing logic          |
| /update-proto      | Change proto definitions and regenerate Go code      |
```