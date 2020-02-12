FROM docker.io/dockeralexandrtalan/sbt

ARG HOME=/root/spark
ARG SPARK_ARCHIVE=spark-3.0.0-bin-hadoop-2.7.4.tar.gz

WORKDIR $HOME

RUN wget --no-check-certificate https://www.dropbox.com/s/wv13z5uipzfduz2/spark-3.0.0-bin-hadoop-2.7.4.tar.gz?dl=0 -O $SPARK_ARCHIVE
RUN tar -xvzf $SPARK_ARCHIVE
RUN rm -f $SPARK_ARCHIVE

ENV SPARK_HOME=$HOME/spark-3.0.0-bin-hadoop-2.7.4

ENTRYPOINT sbt
