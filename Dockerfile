FROM ubuntu:latest

LABEL maintainer="valentinsiryk@gmail.com"

# Install requirments
RUN apt-get update && apt-get install -y --no-install-recommends \
        software-properties-common \
        rsync \
        openssh-client \
        curl \
        python3-venv \
        python3-pip && \
    rm -rf /var/lib/apt/lists/* /src/*.deb

# Install ansible and Ansible requirements
COPY requirements.txt .
RUN pip3 install -r requirements.txt
