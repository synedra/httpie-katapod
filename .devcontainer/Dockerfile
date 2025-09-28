FROM mcr.microsoft.com/devcontainers/base:ubuntu

USER root

RUN sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers

# Install Python 3 and pip
RUN apt-get update && \
	apt-get install -y python3 python3-pip && \
	rm -rf /var/lib/apt/lists/*

RUN apk add py3-pip
USER vscode
RUN python -m venv ~/.venv
RUN source ~/.venv/bin/activate
RUN pip install --upgrade pip

RUN pip install httpie-astra

EXPOSE 8080
EXPOSE 8081
EXPOSE 8082