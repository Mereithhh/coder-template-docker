#!/bin/bash
NAME="base"
docker rmi registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME}  --force
NAME="go"
docker rmi registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} --force
NAME="java"
docker rmi registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} --force
NAME="node"
docker rmi registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} --force
NAME="python"
docker rmi registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} --force
NAME="rust"
docker rmi registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} --force
NAME="vnc"
docker rmi registry.cn-beijing.aliyuncs.com/mereith/coder-${NAME} --force