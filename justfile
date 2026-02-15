# use PowerShell instead of sh:
set shell := ["powershell.exe", "-c"]

run:
    docker compose run --rm poc-timeset

build:
    docker compose build
