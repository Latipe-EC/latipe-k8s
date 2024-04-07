FROM grafana/tempo:2.3.1

COPY ./tempo-config.yml /conf/tempo.yaml

CMD [ "-config.file=/conf/tempo.yaml" ]