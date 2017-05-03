FROM jenkins:alpine
USER root
RUN printf "http://mirrors.ustc.edu.cn/alpine/edge/main/\nhttp://mirrors.ustc.edu.cn/alpine/edge/community/" >/etc/apk/repositories && \
    apk add --no-cache docker
RUN git config --global user.name jenkins && \
    git config --global user.email jenkins@gmail.com
