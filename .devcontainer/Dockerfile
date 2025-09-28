FROM mcr.microsoft.com/devcontainers/base:ubuntu

USER root

RUN sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers
# Install Astra CLI with direct download and verification
RUN apt-get update && apt-get install -y wget unzip && \
    mkdir -p /usr/local/bin && \
    ASTRA_VERSION="0.6" && \
    for i in {1..3}; do \
        echo "Attempt $i: Downloading Astra CLI v${ASTRA_VERSION}..." && \
        wget -q --timeout=30 --tries=3 \
            "https://github.com/datastax/astra-cli/releases/download/v${ASTRA_VERSION}/astra-cli-${ASTRA_VERSION}-linux-amd64.tar.gz" \
            -O /tmp/astra-cli.tar.gz && \
        if [ -s /tmp/astra-cli.tar.gz ] && tar -tzf /tmp/astra-cli.tar.gz >/dev/null 2>&1; then \
            echo "Download successful and archive is valid" && \
            tar -xzf /tmp/astra-cli.tar.gz -C /usr/local/bin/ && \
            chmod +x /usr/local/bin/astra && \
            rm -f /tmp/astra-cli.tar.gz && \
            break; \
        else \
            echo "Download failed or archive corrupted, retrying..." && \
            rm -f /tmp/astra-cli.tar.gz && \
            sleep 3; \
        fi; \
    done && \
    if [ ! -f /usr/local/bin/astra ]; then \
        echo "Failed to install Astra CLI after 3 attempts, trying fallback method..." && \
        curl -Ls "https://dtsx.io/get-astra-cli" | bash || echo "Fallback installation also failed"; \
    fi

# Install Python 3 and pip
RUN apt-get update && \
	apt-get install -y python3 python3-pip python3-venv && \
	rm -rf /var/lib/apt/lists/* 

RUN python3 -m venv /home/vscode/.venv && \
	/home/vscode/.venv/bin/pip install --upgrade pip && \
    /home/vscode/.venv/bin/pip install httpie-astra

# Set up virtual environment and install httpie-astra as vscode user
USER vscode

EXPOSE 8080
EXPOSE 8081
EXPOSE 8082