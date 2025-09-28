FROM mcr.microsoft.com/devcontainers/base:ubuntu

USER root

RUN sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers


# Install Python 3 and pip
RUN apt-get update && \
	apt-get install -y python3 python3-pip && \
	rm -rf /var/lib/apt/lists/*

# Set up virtual environment and install httpie-astra as vscode user
USER vscode
RUN python3 -m venv /home/vscode/.venv && \
	/home/vscode/.venv/bin/pip install --upgrade pip && \
	/home/vscode/.venv/bin/pip install httpie-astra

EXPOSE 8080
EXPOSE 8081
EXPOSE 8082