FROM jenkins/jenkins
USER root
ARG JMETER_VERSION="5.1.1"
ENV	JMETER_BIN	/home/apache-jmeter-${JMETER_VERSION}/bin
RUN mkdir /home/jmeterTest && mkdir /home/jmeterResult
RUN cd /home && wget http://ftp.cixug.es/apache//jmeter/binaries/apache-jmeter-5.1.1.tgz && tar -zxvf /home/apache-jmeter-5.1.1.tgz && rm apache-jmeter-5.1.1.tgz
COPY loadTest.jmx /home/jmeterTest/loadTest.jmx
COPY /rmi_keystore.jks ${JMETER_BIN}