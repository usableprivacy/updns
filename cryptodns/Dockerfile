FROM debian:11-slim
RUN apt-get update && apt-get install dnsdist -y
RUN adduser --system --group --no-create-home --uid 1033 updns
COPY bin/run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh
USER updns
EXPOSE 8053
ENTRYPOINT ["/usr/local/bin/run.sh"]