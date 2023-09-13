# API 🚀

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/balnarendrasapa/api)
[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/balnarendrasapa/api)
![GitHub](https://img.shields.io/github/license/balnarendrasapa/api)

I am building this project just for fun 😄. This repository contains code for API in django-restframework and in fastapi. For this project, I chose a postgres database 🐘. You don't need to have it installed on your PC. Everything is written in `.devcontainer/docker-compose.yml` file.

## Development setup ⚙️

This repository contains a devcontainer.json file. You can either choose to open this in codespace or build a development environment locally. If you choose to develop locally, make sure to install the `Remote Development` extension in VSCode.

- If you want to open in codespaces, click on the above badge `Open in GitHub Codespaces` 🛠️
- If you want to open in VSCode locally, click on the above badge `Open in Dev Containers` 🛠️

## Pre-Commit Githooks installation 🚦

This is optional. There are two githooks configured for this repository: black formatter ✨ and flake8 linter ❄️. You can install these githooks by running `make dev-install` ⚙️

## Running server 🏃‍♂️
### In Dev Environment 🛠️
- To run the server, run the command `make run`. This starts up both the django API and FastAPI servers. You can access the django API through `localhost:8080` and you can access FastAPI through `localhost:8000` 🚀
- To stop the server, run `make stopserver` ⛔

### Using docker-compose in root 🐳

- To run using docker-compose, cd into the root directory and run `docker-compose up`. This may not be useful for development.
- There is an image available in this repository. If you just want to check this project out, download `other/docker-compose.yml` file and run `docker-compose up` 🐳
