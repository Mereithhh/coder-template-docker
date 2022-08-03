FROM codercom/enterprise-python:ubuntu

USER root

# 换源改时区之类的
RUN sed -i s@/archive.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && \
  sed -i s@/security.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list 
# 安装 zsh
# RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"

USER coder
