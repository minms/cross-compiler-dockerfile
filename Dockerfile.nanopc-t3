FROM ubuntu:16.04

# 更新ubuntu源, 安装编译工具
RUN sed -i s/archive.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list && \
	sed -i s/security.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list && \
	apt-get update && apt-get install -y cmake pkg-config

# 将工具解压到toolchain目录, 并删除压缩包
COPY gcc-x64 /tmp/
RUN cd /tmp && \
	cat toolchain-6.4-aarch64.tar.gz* | tar xz -C / && \
	rm -rf /tmp/*

# 添加到环境变量
RUN echo "export PATH=/opt/FriendlyARM/toolchain/6.4-aarch64/bin:$PATH" >> ~/.bashrc

WORKDIR /home