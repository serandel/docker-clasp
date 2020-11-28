# docker-clasp

Run clasp in a Docker container, for developing Google Apps Script in your local machine.

## Usage

```bash
## Build container (optional)
$ docker build -t serandel/clasp .

## Execute clasp
$ docker run --rm -it -v $(pwd):/app -v clasp:/home/node serandel/clasp --no-localhost push
```

This way you can login without the need to open any ports and your config file will be created in a Docker volume, to be
shared between all the container instances.

For easier usage, add the following to your .bashrc or .zshrc:

```
alias clasp="docker run --rm -it -v $(pwd):/app -v clasp:/home/node serandel/clasp --no-localhost"
```

And now just:

```
clasp login

clasp push
```