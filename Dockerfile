FROM sheepkiller/kafka-manager:stable

ENV KM_HTTP_CONTEXT="/"

ADD start-kafka-manager.sh /kafka-manager-${KM_VERSION}/start-kafka-manager.sh
RUN chmod a+x /kafka-manager-${KM_VERSION}/start-kafka-manager.sh

WORKDIR /kafka-manager-${KM_VERSION}

ENTRYPOINT ["start-kafka-manager.sh"]
