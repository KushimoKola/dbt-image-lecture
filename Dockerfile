FROM python:3.9.9

ENV DBT_PROFILES_DIR=/usr/dbt_app/docker_creds

WORKDIR /usr/dbt_app

COPY . .


# install oh-my-zsh
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- -t agnoster

RUN pip install -r requirements.txt
RUN dbt deps

CMD python -m entrypoint

