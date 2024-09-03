#FROM ubuntu:latest
FROM riscv64/ubuntu:latest

COPY ./iiot_gw /usr/local/bin/iiot_gw
COPY ./iiot_gw.json /usr/local/bin/iiot_gw.json
COPY ./iiot_hub /usr/local/bin/iiot_hub
COPY ./iiot_hub.json /usr/local/bin/iiot_hub.json
COPY ./command.sh /usr/local/bin/command.sh

ENTRYPOINT ["/bin/bash"]

CMD ["command.sh"]
