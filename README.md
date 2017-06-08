# Librarian-puppet Docker image

Run [Librarian-puppet](http://librarian-puppet.com/) inside [Docker](https://www.docker.com/).

## Docker Hub

[https://hub.docker.com/r/claranet/librarian-puppet/](https://hub.docker.com/r/claranet/librarian-puppet/)

## Usage

Run the following in your puppet directory, where `Puppetfile` resides, adding arguments as required to the end of the command.

```shell
docker run --rm -v "$PWD:/puppet" -v /etc/passwd:/etc/passwd:ro --user=$(id -u):$(id -g) claranet/librarian-puppet
```

The following alias lets you run `librarian-puppet` as normal.

```shell
alias librarian-puppet='docker run --rm -v "$PWD:/puppet" -v /etc/passwd:/etc/passwd:ro --user=$(id -u):$(id -g) claranet/librarian-puppet'
```
