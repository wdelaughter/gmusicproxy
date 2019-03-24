FROM python:3

RUN mkdir -p /usr/bin
COPY GMusicProxy /usr/bin/GMusicProxy
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt
RUN rm /tmp/requirements.txt
VOLUME ["/root/.local/share/gmusicapi/"]
EXPOSE 9999/tcp
ENTRYPOINT ["GMusicProxy"]
