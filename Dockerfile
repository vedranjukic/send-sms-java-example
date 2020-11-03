FROM codeany/rte-base
LABEL key="Infobip"

# Custom plugins

USER theia
COPY plugins/GabrielBB.vscode-lombok-1.0.1.vsix /home/theia/plugins/GabrielBB.vscode-lombok-1.0.1.vsix

# Developer tools

USER root

# Java
RUN apt-get update && apt-get -y install openjdk-11-jdk maven gradle

# Code example
RUN git clone https://github.com/infobip/send-sms-java-example.git /home/project
