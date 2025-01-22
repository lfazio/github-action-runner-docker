# Build docker image

```sh
docker build --tag github-runner-image .
```

# Create a slef-hossted github action runner docker for your project

```sh
./github-runner-create.sh -u <GITHUB_USER> -r <REPOSITORY> -t <TOKEN_FROM_NEW_RUNNER>
```
