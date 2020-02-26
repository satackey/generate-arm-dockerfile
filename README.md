# generate-arm-dockerfile

## これなに？

公式のDockerイメージが`linux/amd64`のみのDockerfileから、`linux/arm`に対応したDockerfileを生成します。  
また、GitHub Actionsで`Docker Buildx`を使って、`linux/arm`なDockerイメージをDocker Hubにプッシュします。

## Status
![GitHub Actionsの状況は不明です](https://github.com/satackey/generate-arm-dockerfile/workflows/Main%20CI/badge.svg)

## Images

※フォークしたリポジトリからDockerfileを生成・ビルドしています。

### [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy)
- Source Repo

    <https://github.com/satackey/jwilder-nginx-proxy>

- Docker Hub

    <https://hub.docker.com/r/satackey/jwilder-nginx-proxy>


### [SteveLTN/https-portal](https://github.com/SteveLTN/https-portal)
- Source Repo

    <https://github.com/satackey/steveltn-https-portal>

- Docker Hub

    <https://hub.docker.com/r/satackey/steveltn-https-portal>


### [docker/compose](https://github.com/docker/compose)
- Source Repo

    <https://github.com/satackey/docker-compose>

- Docker Hub

    <https://hub.docker.com/r/satackey/docker-compose>
