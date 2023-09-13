# API

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/balnarendrasapa/api)
[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/balnarendrasapa/api)
![GitHub](https://img.shields.io/github/license/balnarendrasapa/api)

I am building this project just for fun. this repository contains code for API in django-restframework and in fastapi. For this project, I chose postgres database. You don't need to have it installed in you pc. Everything is written in `.devcontainer/docker-compose.yml` file.

## Development setup

This repository contains devcontainer.json file. you can either choose to open this in codespace or build development environment locally. If you choose to develop locally, make sure to install `Remote Development` extension in vscode. 

- If you want to open in codespaces, click on the above badge `Opne in GitHub Codespaces`
- If you want to open in vscode locally, click on the above badge `Open in Dev Containers`

## Pre-Commit Githooks installation

This is optional. There are two githooks configured for this repository. black formatter, flake8 linter. you can install these githooks by running `make dev-install`

## Running server

- To run server, run command `make run`. This starts up both the django api and fastapi servers. You can access the django api through `localhost:8080` and you can access fastapi through `localhost:8000`
- To stop server, run `make stopserver`
