# docker-gitbucket

## Background
This docker image will setup a container with [gitbucket](https://github.com/takezoe/gitbucket) installed.  The container is using debian:wheezy, with only java installed.  Very small.

## Links
[dockerfile](https://github.com/itsamenathan/docker-gitbucket)
[gitbucket](https://github.com/takezoe/gitbucket)

## Options
* ```-p 8080:8080``` - Gitbucket UI
* ```-p 29418:29418``` - Gitbucket SSH
* ```-v ${PWD}/gitbucket-data:/gitbucket``` - Gitbucket Data
* ```-e "TZ=America/Chicago"``` - Timezone setting

## Example
```
docker run -d -p 8080:8080 -p 29418:29418 -v ${PWD}/gitbucket-data:/gitbucket -e "TZ=America/Chicago" itsamenathan/gitbucket
```

You can see gitbucket running on http://localhost:8080/
You can connect via ssh ssh://user@host:29418/repo
Login: root/root

## Building

To build the image, do the following:

```
docker build -t itsamenathan/gitbucket .
```

## Thanks
[f99aq8ove/gitbucket](https://registry.hub.docker.com/u/f99aq8ove/gitbucket/) - Used as outline for my image
[gitbucket](https://github.com/takezoe/gitbucket) - For Gitbucket
