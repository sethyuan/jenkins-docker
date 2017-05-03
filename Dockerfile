FROM jenkins:alpine
USER root
RUN printf "http://mirrors.ustc.edu.cn/alpine/edge/main/\nhttp://mirrors.ustc.edu.cn/alpine/edge/community/" >/etc/apk/repositories && \
    apk add --no-cache docker
