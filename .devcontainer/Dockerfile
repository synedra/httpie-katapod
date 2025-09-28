FROM mcr.microsoft.com/devcontainers/base:ubuntu

USER root

RUN apt-get clean
RUN curl -L https://deb.nodesource.com/setup_16.x | bash \
    && apt-get update -yq \
	&& apt-get install nodejs
RUN npm install -g astra-setup netlify-cli axios

RUN sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers

USER vscode
RUN pip3 install httpie-astra==0.1.3

EXPOSE 8080
EXPOSE 8081
EXPOSE 8082