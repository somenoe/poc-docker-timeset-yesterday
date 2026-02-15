# use PowerShell instead of sh:

set shell := ["powershell.exe", "-c"]

# run the container with the specified time offset or current time e.g.  `just run`, `just run -2d`, `just run +3m`, `just run +1y`
run offset="":
    docker compose run \
    {{ if offset == "" { "" } else { "-e FAKETIME=" + offset } }} \
    --rm poc-timeset

build:
    docker compose build
