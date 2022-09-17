FROM python:2.7.10

ADD Makefile /app/
ADD anolis /app/anolis
ADD requirements.txt /app/requirements.txt

RUN cd /app && \
    apt-get update && \
    make deps-docker && \
    pip install -r requirements.txt && \
    rm -rf /var/lib/apt/lists/* deps

CMD /app/anolis/anolis
