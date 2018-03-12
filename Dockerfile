FROM rabbitmq:3.7

RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt
RUN rabbitmq-plugins enable --offline rabbitmq_web_mqtt

# Fix nodename
RUN echo 'NODENAME=rabbit@localhost' > /etc/rabbitmq/rabbitmq-env.conf

#admin interface
EXPOSE 15672
# mqtt
EXPOSE 1883
EXPOSE 8883
# mqtt websockets
EXPOSE 15675
