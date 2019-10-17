FROM ubuntu

ARG JMETER_VERSION="5.1.1"
ENV	JMETER_BIN	/home/apache-jmeter-${JMETER_VERSION}/bin

RUN apt-get update && \
    apt-get install -y openjdk-8-jre-headless && \
    apt-get install -y wget && \
    cd /home && \
    wget http://ftp.cixug.es/apache//jmeter/binaries/apache-jmeter-5.1.1.tgz && \
    tar -zxvf apache-jmeter-5.1.1.tgz && \
    rm apache-jmeter-5.1.1.tgz

COPY /rmi_keystore.jks ${JMETER_BIN}
COPY entrypoint.sh /

WORKDIR	${JMETER_BIN}

ENTRYPOINT ["/entrypoint.sh"]