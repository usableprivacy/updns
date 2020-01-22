FROM debian:sid-slim
RUN apt-get update && apt-get install dnsdist -y
COPY run.sh .
COPY dnsdist.conf /etc/dnsdist/dnsdist.conf
RUN chmod +x run.sh
EXPOSE 8053
ENTRYPOINT ["./run.sh"]