FROM ubuntu:20.04
ENV JAVA_HOME=/u01/softwares/jdk-11.0.2
ENV PATH=$PATH:$JAVA_HOME/bin
ENV CLASSPATH=/u01/softwares/tokengenerator-1.0.jar
RUN mkdir -p /u01/softwares
WORKDIR /u01/softwares
ADD  https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz .
RUN tar -xvzf openjdk-11.0.2_linux-x64_bin.tar.gz
COPY target/tokengenerator-1.0.jar /u01/softwares
CMD ["java", "com.tg.service.TokenGeneratorService"]
