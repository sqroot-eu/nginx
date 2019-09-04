FROM nginx:alpine
LABEL maintainer="Ando Roots <ando@sqroot.eu>"

EXPOSE 8080

# Chmod nginx working folders in order to run this as non-root on Openshift 3
RUN chgrp -R 0 /var/log/nginx /var/cache/nginx/ /var/run/ /etc/nginx && \
	rm /etc/nginx/conf.d/default.conf && \
	chmod -R g=u /etc/nginx /var/log/nginx /var/cache/nginx /var/run

COPY common-server.conf /etc/nginx/common-server.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/*.conf /etc/nginx/conf.d/
