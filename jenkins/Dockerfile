FROM jenkins/jenkins
USER root
RUN mkdir /home/jmeterTest && mkdir /home/jmeterResult
RUN cd /home && wget http://ftp.cixug.es/apache//jmeter/binaries/apache-jmeter-5.1.1.tgz && tar -zxvf /home/apache-jmeter-5.1.1.tgz && rm apache-jmeter-5.1.1.tgz
COPY loadTest.jmx /home/jmeterTest/loadTest.jmx