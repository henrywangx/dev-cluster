FROM jupyter/pyspark-notebook
USER root

ENV SPARK_HOME /usr/local/spark
RUN \
  curl -L https://mirrors.huaweicloud.com/repository/maven/org/apache/iceberg/iceberg-spark-runtime-3.5_2.12/1.4.2/iceberg-spark-runtime-3.5_2.12-1.4.2.jar -o $SPARK_HOME/jars/iceberg-spark-runtime-3.5_2.12-1.4.2.jar && \
  curl -L https://mirrors.huaweicloud.com/repository/maven/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar -o $SPARK_HOME/jars/hadoop-aws-3.3.4.jar && \
  curl -L https://mirrors.huaweicloud.com/repository/maven/org/apache/hadoop/hadoop-common/3.3.4/hadoop-common-3.3.4.jar -o $SPARK_HOME/jars/hadoop-common-3.3.4.jar && \
  curl -L https://mirrors.huaweicloud.com/repository/maven/com/amazonaws/aws-java-sdk-bundle/1.12.262/aws-java-sdk-bundle-1.12.262.jar -o $SPARK_HOME/jars/aws-java-sdk-bundle-1.12.262.jar && \
  curl -L https://mirrors.huaweicloud.com/repository/maven/software/amazon/awssdk/bundle/2.17.257/bundle-2.17.257.jar -o $SPARK_HOME/jars/bundle-2.17.257.jar && \
  curl -L https://mirrors.huaweicloud.com/repository/maven/software/amazon/awssdk/url-connection-client/2.17.257/url-connection-client-2.17.257.jar -o $SPARK_HOME/jars/url-connection-client-2.17.257.jar && \
  curl -L https://mirrors.huaweicloud.com/repository/maven/org/apache/spark/spark-hadoop-cloud_2.12/3.3.4/spark-hadoop-cloud_2.12-3.3.4.jar -o $SPARK_HOME/jars/spark-hadoop-cloud_2.12-3.3.4.jar && \
  curl -L https://mirrors.huaweicloud.com/repository/maven/org/projectnessie/nessie-spark-extensions-3.5_2.12/0.50.0/nessie-spark-extensions-3.5_2.12-0.50.0.jar -o $SPARK_HOME/jars/nessie-spark-extensions-3.5_2.12-0.50.0.jar && \
  curl -L https://mirrors.huaweicloud.com/repository/maven/org/apache/spark/spark-sql-kafka-0-10_2.12/3.3.4/spark-sql-kafka-0-10_2.12-3.3.4.jar -o $SPARK_HOME/jars/spark-sql-kafka-0-10_2.12-3.3.4.jar && \
  curl -L https://mirrors.huaweicloud.com/repository/maven/org/apache/kafka/kafka-clients/3.3.4/kafka-clients-3.3.4.jar -o $SPARK_HOME/jars/kafka-clients-3.3.4.jar && \
  curl -L https://mirrors.huaweicloud.com/repository/maven/org/apache/spark/spark-token-provider-kafka-0-10_2.12/3.3.4/spark-token-provider-kafka-0-10_2.12-3.3.4.jar -o $SPARK_HOME/jars/spark-token-provider-kafka-0-10_2.12-3.3.4.jar

RUN curl -L https://mirrors.huaweicloud.com/repository/maven/org/projectnessie/nessie-integrations/nessie-spark-extensions-3.5_2.13/0.76.6/nessie-spark-extensions-3.5_2.13-0.76.6.jar -o $SPARK_HOME/jars/nessie-spark-extensions-3.5_2.13-0.76.6.jar

# # Add AWS and Iceberg jars to make them available to Spark applications that use Minio and Iceberg
# ADD https://mirrors.huaweicloud.com/repository/maven/org/apache/iceberg/iceberg-spark-runtime-3.5_2.12/1.4.2/iceberg-spark-runtime-3.5_2.12-1.4.2.jar $SPARK_HOME/jars
# ADD https://mirrors.huaweicloud.com/repository/maven/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar $SPARK_HOME/jars
# ADD https://mirrors.huaweicloud.com/repository/maven/org/apache/hadoop/hadoop-common/3.3.4/hadoop-common-3.3.4.jar $SPARK_HOME/jars
# ADD https://mirrors.huaweicloud.com/repository/maven/com/amazonaws/aws-java-sdk-bundle/1.12.262/aws-java-sdk-bundle-1.12.262.jar $SPARK_HOME/jars
# ADD https://mirrors.huaweicloud.com/repository/maven/software/amazon/awssdk/bundle/2.17.257/bundle-2.17.257.jar $SPARK_HOME/jars
# ADD https://mirrors.huaweicloud.com/repository/maven/software/amazon/awssdk/url-connection-client/2.17.257/url-connection-client-2.17.257.jar $SPARK_HOME/jars
# # Support for S3 magic committer...
# ADD https://mirrors.huaweicloud.com/repository/maven/org/apache/spark/spark-hadoop-cloud_2.12/3.3.4/spark-hadoop-cloud_2.12-3.3.4.jar $SPARK_HOME/jars
# # Bonus Nessie Jar if using Nessie Iceberg Catalog
# ADD https://mirrors.huaweicloud.com/repository/maven/org/projectnessie/nessie-spark-extensions-3.5_2.12/0.50.0/nessie-spark-extensions-3.5_2.12-0.50.0.jar $SPARK_HOME/jars
# # Bonus Kafka Jar if using Kafka
# ADD https://mirrors.huaweicloud.com/repository/maven/org/apache/spark/spark-sql-kafka-0-10_2.12/3.3.4/spark-sql-kafka-0-10_2.12-3.3.4.jar $SPARK_HOME/jars
# ADD https://mirrors.huaweicloud.com/repository/maven/org/apache/kafka/kafka-clients/3.3.4/kafka-clients-3.3.4.jar $SPARK_HOME/jars
# ADD https://mirrors.huaweicloud.com/repository/maven/org/apache/spark/spark-token-provider-kafka-0-10_2.12/3.3.4/spark-token-provider-kafka-0-10_2.12-3.3.4.jar $SPARK_HOME/jars

RUN chmod 777 $SPARK_HOME/jars/*.jar
