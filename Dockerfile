FROM python:3.6-alpine

USER root

ARG project_dir=/app/
ADD . ${project_dir}
WORKDIR ${project_dir}

RUN apk update && \
    apk add fish \
            vim  \
            git  \
            bash && \
    pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

EXPOSE 5000 8080

CMD ["python3", "main.py"]
