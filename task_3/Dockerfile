# Первая версия
FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
COPY search_path.sh /tmp/search_path.sh
COPY extract_path_value.py /tmp/extract_path_value.py
COPY config.txt /tmp/config.txt
RUN chmod +x /tmp/search_path.sh
RUN chmod +x /tmp/extract_path_value.py

# Оптимизированная вторая версия
FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y wget python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*
COPY search_path.sh extract_path_value.py config.txt /tmp/
RUN chmod +x /tmp/search_path.sh /tmp/extract_path_value.py
