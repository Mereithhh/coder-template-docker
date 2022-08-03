#!/bin/bash
NAME="base"
cd base && docker build -t registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} .
docker push registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME}
cd ..
NAME="go"
cd go && docker build -t registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} .
docker push registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME}
cd ..
NAME="java"
cd java && docker build -t registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} .
docker push registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME}
cd ..
NAME="node"
cd node && docker build -t registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} .
docker push registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME}
cd ..
NAME="python"
cd python && docker build -t registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} .
docker push registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME}
cd ..
NAME="jupyter"
cd jupyter && docker build -t registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} .
docker push registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME}
cd ..
NAME="rust"
cd rust && docker build -t registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} .
docker push registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME}
cd ..
NAME="vnc"
cd vnc && docker build -t registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} .
docker push registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME}
cd ..
