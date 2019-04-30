FROM alpine:3.9

COPY . /php_src
 
# Compiler requirements
RUN apk update && apk add --virtual build-dependencies build-base gcc wget git bison && apk add bash 
RUN apk add re2c
RUN apk add libxml2 libxml2-dev libxslt-dev
RUN apk add autoconf
RUN apk add sqlite sqlite-dev
RUN apk add vim

#Building PHP
RUN cd /php_src && ./buildconf
RUN cd /php_src && ./configure --prefix=
RUN cd /php_src && make
RUN cd /php_src && make install
