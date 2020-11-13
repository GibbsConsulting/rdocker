FROM phusion/baseimage:18.04-1.0.0

RUN apt-get -q -q update && apt-get -y install gettext-base nginx fcgiwrap git

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd nginx

RUN mkdir /srv/git

VOLUME ["/var/log/nginx"]

COPY default.conf /etc/nginx/conf.d/

COPY gitconfig.template /etc/

COPY nginx.conf /etc/nginx/

#RUN sed -i '35server_tokens off;' /etc/nginx/nginx.conf

COPY 99_start.sh /etc/my_init.d/

COPY htpasswd /srv/htpasswd

ENV GIT_POSTBUFFER 1048576

COPY repos /srv/git/