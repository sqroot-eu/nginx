# nginx 

[![Docker Pulls](https://img.shields.io/docker/pulls/sqroot/nginx.svg)](https://hub.docker.com/r/sqroot/nginx/)
[![Travis](https://img.shields.io/travis/sqroot-eu/nginx.svg)](https://travis-ci.org/sqroot-eu/nginx)

Base Docker Nginx image, suitable from running on Openshift 3.

## Usage

```Dockerfile
FROM sqroot/nginx
COPY html /usr/share/nginx/html
```

The web server listens on port `8080`.

## License

[MIT license](https://en.wikipedia.org/wiki/MIT_License)
