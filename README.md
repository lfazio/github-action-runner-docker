# Build docker image

```sh
docker build --tag github-runner-image .
```

# Create a self-hosted github action runner docker for your project

```sh
./github-runner-create.sh -u <GITHUB_USER> -r <REPOSITORY> -t <TOKEN_FROM_NEW_RUNNER>
```

# Or use docker-compose

> **NOTE**: set your USER, REPOSITORY, ACCESS_TOKEN in `compose.yaml`

```sh
docker-compose up -d
```