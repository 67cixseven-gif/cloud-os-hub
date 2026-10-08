FROM mcr.microsoft.com/devcontainers/typescript-node:1-20-bullseye

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        git-lfs \
        docker.io \
        qemu-system \
        qemu-utils \
        adb \
        openjdk-17-jdk \
        kotlin \
        ffmpeg \
        rclone \
        fuse \
        openssh-client \
        python3 \
        python3-pip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
