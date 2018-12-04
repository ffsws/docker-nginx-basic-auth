FROM centos/nginx-18-centos7:latest

ENV HTPASSWD='foo:$apr1$odHl5EJN$KbxMfo86Qdve2FH4owePn.' \
    FORWARD_PORT=80 \
    FORWARD_HOST=web

WORKDIR /opt

RUN yum install gettext

COPY auth.conf auth.htpasswd launch.sh ./

CMD ["./launch.sh"]
