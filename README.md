# docker-clasp

Run clasp in a Docker container, for developing Google Apps Script in your local machine.

## Usage

```bash
## Build container (optional)
$ docker build -t serandel/clasp .

## Execute clasp
$ docker run --rm -it -v $(pwd):/app -v clasp:/home/node serandel/clasp push
```

This way you can login without the need to open any ports and your config file will be created in a Docker volume, to be
shared between all the container instances.

For easier usage, add the following to your .bashrc or .zshrc:

```
alias clasp="docker run --rm -it -v $(pwd):/app -v clasp:/home/node serandel/clasp"
```

And now just:

```
clasp login --no-localhost

clasp push
```

## Login

Clasp opens a random port when doing a login with Google, and opening wide range of ports in Docker is inefficient and will possibly eat up all of your RAM, as you can see in this [5-year old bug|https://github.com/moby/moby/issues/11185]. It's much advised to use the `login --no-localhost` option, which will simply require you to copy and paste a string from a webpage to the terminal.
