FROM nginx:1.17.6-alpine as base

RUN rm -rf /usr/share/nginx/html/*

FROM base as server1

COPY index1.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]

FROM base as server2

COPY index2.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]

FROM base as server3

COPY index3.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]
