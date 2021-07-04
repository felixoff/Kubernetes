# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ealexa <ealexa@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/03 15:10:26 by ealexa            #+#    #+#              #
#    Updated: 2021/02/03 15:10:27 by ealexa           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

WORKDIR /home

RUN apk update && apk add influxdb  supervisor\
	&& apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/	\
	&& mkdir -p /var/lib/influxdb \
	&& mkdir -p /etc/influxdb && mkdir -p /etc/telegraf

RUN chown -R influxdb:influxdb /var/lib/influxdb

COPY ./run_influxdb.sh /home/

COPY ./telegraf.conf /etc/telegraf/

COPY ./supervisor.conf /etc/supervisord.conf

VOLUME ["/var/lib/influxdb"]

EXPOSE 8086

CMD ["sh", "run_influxdb.sh"]
