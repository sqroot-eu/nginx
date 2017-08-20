FROM nginx:alpine
LABEL maintainer="Ando Roots <ando@sqroot.eu>"

EXPOSE 8080

# Chmod nginx working folders in order to run this as non-root on Openshift 3
RUN chmod -R 777 /var/log/nginx /var/cache/nginx/ /var/run/ && \
	rm /etc/nginx/conf.d/default.conf && \
	chmod -R 655 /etc/nginx/*

COPY common-server.conf /etc/nginx/common-server.conf
COPY nginx.conf /etc/nginx/nginx.conf
