FROM linuxserver/bookstack:v0.26.2-ls48

WORKDIR /var/www/html

RUN composer require mix5003/l5-gcs

ADD 0001-Add-GCS-support.patch /tmp/0001-Add-GCS-support.patch
RUN patch -p1 < /tmp/0001-Add-GCS-support.patch
