@echo off

set "api_apps=admin_api chat_api"
set "rpc_apps=admin_rpc chat_rpc"

for %%a in (%api_apps%) do (
    go build -o %%a.exe ../cmd/api/%%a/main.go
)

for %%a in (%rpc_apps%) do (
    go build -o %%a.exe ../cmd/rpc/%%a/main.go
)

move *exe ../cmd
