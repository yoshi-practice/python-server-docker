FROM python:3.6-alpine

USER root

ARG project_dir=/app/
ADD . ${project_dir}
WORKDIR ${project_dir}

RUN apk update && \
    apk add fish \
            vim  \
            git  \
            bash

EXPOSE 8080

CMD ["python3", "main.py;", "python", "-m", "http.server 8080;", "open", "http://localhost:8080/"]
