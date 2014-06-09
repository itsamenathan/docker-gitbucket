docker_gitbucket
================

Setup a container with [gitbucket](https://github.com/takezoe/gitbucket) installed.
This is a slight modification to [f99aq8ove/gitbucket](https://registry.hub.docker.com/u/f99aq8ove/gitbucket/) to enable ssh and timezone.

## Usage

To run the container, do the following:

```
docker run -d -p 8080:8080 -p 29418:29418 -v ${PWD}/gitbucket-data:/gitbucket -P itsamenathan/gitbucket
```

You can see gitbucket running on http://localhost:8080/
You can connect via ssh ssh://user@host:29418/repo
You also see gitbucket data write out to "./gitbucket-data".

## Building

To build the image, do the following:

```
docker build -t itsamenathan/gitbucket
```
