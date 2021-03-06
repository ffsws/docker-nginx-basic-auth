FROM centos/nginx-18-centos7:latest

USER 1000
ENV HTPASSWD='foo:$apr1$odHl5EJN$KbxMfo86Qdve2FH4owePn.' \
    FORWARD_PORT=80 \
    FORWARD_HOST=web

WORKDIR /opt

RUN yum -y install gettext

COPY auth.conf auth.htpasswd launch.sh ./

USER 1001

CMD ["./launch.sh"]
