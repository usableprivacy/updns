FROM nginx
COPY index.html /usr/share/nginx/html/index.html
COPY img/* /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
LABEL "traefik.frontend.entryPoints"="https"
LABEL "traefik.domain"="usableprivacy.net"
LABEL "traefik.frontend.rule"="Host:usableprivacy.net"
EXPOSE 80/tcp
