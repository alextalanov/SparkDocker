FROM docker.io/dockeralexandrtalan/sbt

ARG HOME=/root/spark
ARG SPARK_ARCHIVE=spark-2.4.5-bin-hadoop2.7.tgz

WORKDIR $HOME

RUN wget --no-check-certificate https://www.dropbox.com/s/vhp4o008puk7huv/spark-2.4.5-bin-hadoop2.7.tgz?dl=0 -O $SPARK_ARCHIVE
RUN tar -xvzf $SPARK_ARCHIVE
RUN rm -f $SPARK_ARCHIVE

ENV SPARK_HOME=$HOME/spark-2.4.5-bin-hadoop2.7

ENTRYPOINT sbt
