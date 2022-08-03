FROM codercom/enterprise-base:ubuntu

# install a specific code-server version
RUN curl -fsSL https://code-server.dev/install.sh | sh

# 安装一些插件
RUN code-server --install-extension ms-azuretools.vscode-docker && \
  code-server --install-extension  oderwat.indent-rainbow && \
  code-server --install-extension  eamodio.gitlens    && \
  code-server --install-extension bierner.markdown-preview-github-styles && \
  code-server --install-extension MS-CEINTL.vscode-language-pack-zh-hans && \
  code-server --install-extension formulahendry.code-runner && \
  code-server --install-extension streetsidesoftware.code-spell-checker && \
  code-server --install-extension tamasfe.even-better-toml && \
  code-server --install-extension redhat.vscode-yaml && \
  code-server --install-extension EditorConfig.EditorConfig  && \
  code-server --install-extension christian-kohler.path-intellisense   && \
  code-server --install-extension wangzy.sneak-mark

USER root

# 换源改时区之类的
RUN sed -i s@/archive.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && \
  sed -i s@/security.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && \
  apt-get update && apt-get install -y  curl vim tmux net-tools 
# 安装 zsh
# RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"

USER coder
# 安装 python 专属插件
RUN code-server --install-extension ms-python.python && \
  code-server --install-extension cstrap.python-snippets
# jupyterlab
RUN pip3 install jupyterlab
# 可选：链接防止在容器内无法运行 code-server.
# RUN ln -s /root/.nvm/versions/node/v16.16.0/bin/node /usr/lib/code-server/lib/vscode/node