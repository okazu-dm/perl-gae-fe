FROM perl:5.18

ENV APPROOT /src/app
RUN mkdir -p $APPROOT
WORKDIR /src/app

COPY cpanfile $APPROOT/cpanfile
RUN cpanm -n --installdeps . && rm -rf /root/.cpanm/work/*
COPY ./ $APPROOT

EXPOSE 8080

ENTRYPOINT /usr/local/bin/plackup -s Starlet --port=8080 /src/app/app.psgi
