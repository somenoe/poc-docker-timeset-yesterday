# use PowerShell instead of sh:
set shell := ["powershell.exe", "-c"]

build:
    docker build -t poc-timeset .

run: build
    docker run --rm poc-timeset
